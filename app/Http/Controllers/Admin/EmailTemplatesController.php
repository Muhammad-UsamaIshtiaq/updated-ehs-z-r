<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\EmailTemplates;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\File;

class EmailTemplatesController extends Controller
{

public function index(){


    $data=EmailTemplates::all();
    return view('dashboard2.emailtemplates.index',compact('data'));


}

public function email_roshan(){


    $data=EmailTemplates::all();
    return view('dashboard2.emailtemplates.email_roshan');


}
public function edit_email_template($id){


    $data=EmailTemplates::find($id);
    return view('dashboard2.emailtemplates.edit',compact('data'));


}
public function edit_email_roshan($id){
    $data=EmailTemplates::find($id);
    return view('dashboard2.emailtemplates.edit_email_roshan',compact('data'));
}
public function update_email_template(Request $request){


    $update=EmailTemplates::find($request->id);
    $update->name=$request->name;
    $update->email_from=$request->from_email;
    $update->subject=$request->subject;
    $update->descr=$request->body;
    $update->status=$request->status;
    $update->img1_button=$request->img1_button;
    $update->img2_button=$request->img2_button;
    $update->body2=$request->body2;
    $update->img3_button=$request->img3_button;
    $update->body3=$request->body3;
    $update->bannerText=$request->bannerText;
    if ($img1 = $request->file('img1')) {
        if(File::exists(public_path($update->img1))) {
            File::delete(public_path($update->img1));
        }
        $destinationPath = public_path('/images/'); // upload path
        $profileImage1 = time() . "img1." . $img1->getClientOriginalExtension();
        $img1->move($destinationPath, $profileImage1);
        $file_path1='/images/'.$profileImage1;
        $update->img1=$file_path1;
    }
    if ($img2 = $request->file('img2')) {
        if(File::exists(public_path($update->img2))) {
            File::delete(public_path($update->img2));
        }
        $destinationPath = public_path('/images/'); // upload path
        $profileImage2 = time() . "img2." . $img2->getClientOriginalExtension();

        $img2->move($destinationPath, $profileImage2);
        $file_path2='/images/'.$profileImage2;
        $update->img2=$file_path2;
    }
    if ($img3 = $request->file('img3')) {
        if(File::exists(public_path($update->img3))) {
            File::delete(public_path($update->img3));
        }
        $destinationPath = public_path('/images/'); // upload path
        $profileImage3 = time() . "img3." . $img3->getClientOriginalExtension();

        $img3->move($destinationPath, $profileImage3);
        $file_path3='/images/'.$profileImage3;
        $update->img3=$file_path3;
    }
    if ($bannerImg = $request->file('bannerImg')) {
        if(File::exists(public_path($update->bannerImg))) {
            File::delete(public_path($update->bannerImg));
        }
        $destinationPath = public_path('/images/'); // upload path
        $profileImage4 =time() . "bannerImg." . $bannerImg->getClientOriginalExtension();

        $bannerImg->move($destinationPath, $profileImage4);

        $file_path_banner='/images/'.$profileImage4;
        $update->bannerImg=$file_path_banner;
    }
    $update->save();
    $data=EmailTemplates::all();
    Session::flash('succesmsg','Successfully updated');
    return view('dashboard2.emailtemplates.index',compact('data'));


}





}
