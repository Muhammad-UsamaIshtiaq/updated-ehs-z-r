<?php

namespace App\Http\Controllers;

use App\Models\AcknowledgmentForms;
use App\Models\Admin\Folder;
use App\Models\Admin\WorkerHasForms;
use App\Models\Form;
use App\Models\ProjectHasForm;
use App\Models\Projects;
use App\Models\Resource;
use App\Models\Signature;
use App\Models\User;
use App\Models\Worker;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Spatie\Permission\Models\Role;

//use App\Mail\FormSubmitted;

class FormBuilder extends Controller
{
    /**
     * show the builder
     */

    public function index(){


            $forms=Form::where('company_id',Auth::user()->company_id)->get();
            $projects=Projects::where('company_id',Auth::user()->company_id)->get();
            $employee=User::role('User')->where('company_id',Auth::user()->company_id)->get();
            $file=Resource::where('company_id',Auth::user()->company_id)->get();
            $folders=Folder::where('type','form')->where('company_id',Auth::user()->company_id)->get();

            return view('dashboard2.forms.index',compact('file','employee','folders','forms','projects'));

    }
    public function view($id){

            $forms=Form::find($id);
            $data=$forms->data;
        return view('test',compact('data'));

    }
    public function added_to(Request $request){



        if ($request->type == 'worker'){

            $check=WorkerHasForms::where('worker_id',$request->worker_id)->where('form_id',$request->form_id)->count();
            if ($check > 0){
                Session::flash('errormsg','Already Asigned');
                return redirect()->back();
            }
            $new=new WorkerHasForms();
            $new->worker_id=$request->worker_id;
            $new->form_id=$request->form_id;
            $new->save();

        }
        if ($request->type == 'project'){

            $users=worker::where('company_id',Auth::user()->company_id)->where('job_no',$request->project)->get();
          foreach ($users as $user){
              $check=WorkerHasForms::where('worker_id',$user->user->id)->where('form_id',$request->form_id)->count();
              if ($check < 1){
                  $new = new WorkerHasForms();
                  $new->worker_id = $user->user->id;
                  $new->form_id = $request->form_id;
                  $new->save();
              }


          }



        }

        if ($request->type == 'whofill'){


            $edit=Resource::where('form_id',$request->form_id)->first();
            $edit->type=$request->whofill;
            $edit->save();

            Session::flash('succesmsg','Change Successfully');

            return redirect()->back();

        }

        Session::flash('succesmsg','Assign Successfully');
        return redirect()->back();

    }
    public function destroy($id){

            $del=Form::find($id);
            $del->delete();
            Session::flash('succesmsg','Deleted Successfully');
            return redirect()->back();

    }
    public function show(Request $request){
        // return $request->all();
        $add = new Form();
        $image = "";
        // print_r($request->formm);die;
        $data=$request->formm;
        $add->form_name=$request->f_name;
        $add->json=$request->jsondata;
        $add->company_id=Auth::user()->company_id;
        $add->data=$data;
        $add->save();

        $data=$add->data;
        // return $data;
        $name=$add->form_name;

        $folder=Folder::find($request->folder);

        $pdf = PDF::loadview('test',compact('data', 'image'));
        $path = public_path('forms/'.$folder->name); // <--- folder to store the pdf documents into the server;
        $fileName =  $name.'.'. 'pdf' ; // <--giving the random filename,
        $pdf->save($path . '/' . $fileName);
        sleep(2);

        $addtoresource=new Resource();
        $addtoresource->name=$fileName;
        $addtoresource->folder_id=$request->folder;
        $addtoresource->form_id=$add->id;
        $addtoresource->company_id=Auth::user()->company_id;
        $addtoresource->save();


        return redirect()->route('form.index');


    }

    public function update(Request $request){


        $data=$request->formm;
        $add = Form::find($request->form_id);

        $add->form_name=$request->f_name;
        $add->json=$request->jsondata;
        $add->data=$data;
        $add->save();

        $data=$add->data;
        $name=$add->form_name;

        $folder=Resource::where('form_id',$request->form_id)->first();

        $pdf = PDF::loadview('test',compact('data'));
        $path = public_path('forms/'.folder_byid($folder->folder_id)->name); // <--- folder to store the pdf documents into the server;
        $fileName =  $name.'.'. 'pdf' ; // <--giving the random filename,
        $pdf->save($path . '/' . $fileName);
        sleep(2);



        if (Auth::user()->hasRole('Admin')){
            return redirect()->route('form.index');

        }else{
            return redirect()->to('user-forms');

        }


    }
    public function save(Request $request){

//        dd($request->all());
        $data=$request->all();

        return view('pdf',compact('data'));


    }


    public function showBuilder() {
        $folders=Folder::where('type','form')->get();
        return view('builder',compact('folders'));
    }

    public function edit($id) {


        $data=Form::find($id);
        return view('edit-form',compact('data'));
    }
    public function ack_forms() {

        $file=AcknowledgmentForms::all();
        return view('dashboard2.ackforms.index',compact('file'));
    }
    public function ack_form_single($id)
    {

        $file=Form::find($id);
        return view('dashboard2.ackforms.view-single',compact('file'));

    }


    public function upload_img(Request $request)
    {
        
        if($request->has('file'))
        {
            $file = $request->file('file');
            $file_name = time(). '.image_' .$file->getClientOriginalName();
            $location = public_path('assets/form_images');
            $file->move($location, $file_name);
            $image = 'public/assets/form_images/'.$file_name;
        }
        return response()->json($image);
    }

    public function submit_form(Request $request)
    {
        $form_id = $request->form_id;
        $worker = Auth::user()->id;
        $data = $request->form_data_form;
        $pdf = PDF::loadview('test',compact('data'));
        $path = public_path('submit_forms'); // <--- folder to store the pdf documents into the server;
        $fileName =  time().'.'. 'pdf' ; // <--giving the random filename,
        $pdf->save($path . '/' . $fileName);
        sleep(2);
        // WorkerHasForms::where(['worker_id'=> $worker, 'form_id'=> $form_id])->update(['form_data'=> 'public/submit_forms/' . $fileName]);
        Signature::where(['user_id'=> $worker, 'file_id'=> $form_id])->update(['form_submitted'=> 'public/submit_forms/' . $fileName]);
        Session::flash('succesmsg','submitted Successfully');
        return redirect()->to('user-forms');

    }

    public function view_pdf($id)
    {
        $send_email = true;
        $users=User::role('User')->where('company_id',Auth::user()->company_id)->get();
        $roles=Role::where('name','!=','Admin')->where('name','!=','User')->select('name')->get();
        $role=array();
        foreach ($roles as $rolee){
            $role[]=$rolee->name;
        }
        $managers=User::role($role)->where('company_id',Auth::user()->company_id)->get();
        $signature = Signature::where(['id'=>$id])->first();
        $type = 'form';
        return view('dashboard2.resources.view-single',compact('signature','type', 'send_email','managers','users'));
    }


    public function send_form(Request $request)
    {
        $signature = Signature::where(['id'=> $request->form_id])->first();
        $data['email'] = $request->email;
        $data['subject'] = 'Submitted Form';
        // $data['body'] = 'body';
        $file = $signature->form_submitted;
        Mail::send('mails.forms', $data, function($message)use($data, $file) {
            $message->to($data["email"], $data["email"])
                    ->subject($data["subject"]);
                $message->attach($file);
        });

        Session::flash('succesmsg','submitted Successfully');
        return redirect()->back();
    }





}
