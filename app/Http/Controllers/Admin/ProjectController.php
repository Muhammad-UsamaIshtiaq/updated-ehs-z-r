<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Projects;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $types=Projects::where('company_id','=',Auth::User()->company_id)->get();
        return view('dashboard2.projects.index',compact('types'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $managers = $request->manager;
        $add=new Projects();
        $add->name=$request->name;
        $add->location = $request->location;
        $add->client = $request->client;
        $add->status=1;
        $add->company_id=Auth::user()->company_id;
        $add->start_date = $request->start_date;
        $add->finish_date = $request->finish_date;
        $add->save();
        $project_id = $add->id;
        foreach($managers as $index=>$manager)
        {
            if(!empty($manager))
            {
                $assign_project = [
                    'manager_id' => $manager,
                    'project_id' => $project_id
                ];
                // echo $request->email[$index];
            }
        }
        Session::flash('succesmsg','Added Successfully');
        return redirect()->back();

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=Projects::find($id);
        return response()->json($data);
        //
    }

    public function update(Request $request,$id)
    {

        $add=Projects::find($id);
        $add->name=$request->name;
        $add->status=$request->status;
        $add->update();
        Session::flash('succesmsg','Updated Successfully');
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //

        $del=Projects::find($id);
        $del->delete();
        Session::flash('succesmsg','Deleted Successfully');
        return redirect()->back();
    }

    public function add_new_project()
    {
        $users = User::where('company_id','=',Auth::User()->company_id)->get();
        return view('dashboard2.projects.add-new-project', compact('users'));
    }

    public function get_user_info(Request $request)
    {
        $user=User::find($request->user_id);
        return response($user);
    }
}
