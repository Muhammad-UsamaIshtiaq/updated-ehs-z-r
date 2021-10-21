<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\faq;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ques=faq::where("company_id",Auth::user()->company_id)->get();
        if (Auth::user()->hasRole('Admin'))
        {
            $extend='dashadmin';
        }else{
            $extend='dash1';

        }
      return view('partial.faqs',compact('ques','extend'));
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (empty($request->videofile) AND empty($request->videolink)){
            Session::flash('errormsg','choose video/link');
            return redirect()->back();
        }
        $url = $request->videolink;
        if(empty($url)) {
            if ($request->has('videofile')) {
                $video_file = time() . '.' . $request->videofile->extension();
                $request->videofile->move(public_path('assets/patnerlibrary/'), $video_file);
            }
        }else{
            $extension = pathinfo($url, PATHINFO_EXTENSION);
            $video_file = rand().'.'. $extension;
            try {
                $file = file_get_contents($url);
                file_put_contents(public_path().'/assets/patnerlibrary/'.$video_file, $file);

            } catch (\Exception $e) {
                Session::flash('errormsg','Invalid link or Permission Denied');

            }
        }
        $video_thumbnail = time() . '.' . $request->videothumbnail->extension();
        $request->videothumbnail->move(public_path('/assets/patnerlibrary/thumbnails/'), $video_thumbnail);
        $question=$request->q;
     $ans=$request->ans;
     $company_id=Auth::user()->company_id;
     $add=new faq();
     $add->question=$question;
     $add->answer=$ans;
     $add->company_id=$company_id;
        $add->video_type=$request->type;
        $add->thumbnail= $video_thumbnail;
        if($request->type==2){
            $add->video=$url;
        }else {
            $add->video = $video_file;
        }
     $add->save();
     return redirect()->back();


        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    /*public function show($id)
    {
        //
    }*/
    public function show($id)
    {
        $video=faq::find($id);
        if(Auth::user()->hasRole('Admin')) {
            return view('dashboard2.faq.show-single', compact('video'));

        }else {
            return view('dashboard1.faq.show-single', compact('video'));

        }
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=faq::find($id);
        return $data;
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {


        $question=$request->q;
        $ans=$request->ans;
        $company_id=Auth::user()->company_id;
        $add=faq::find($request->id);
        $add->question=$question;
        $add->answer=$ans;
        $url = $request->videolink;
        if(empty($url)) {

            if ($request->has('videofile')) {
                $video_file = time() . '.' . $request->videofile->extension();
                $request->videofile->move(public_path('assets/patnerlibrary/'), $video_file);
                $add->video= $video_file;
            }
        }else{
            $extension = pathinfo($url, PATHINFO_EXTENSION);
            $video_file = time().'.'. $extension;
            try {
                $file = file_get_contents($url);
                file_put_contents(public_path().'assets/patnerlibrary/'.$video_file, $file);
                $add->video= $video_file;

            } catch (\Exception $e) {
                Session::flash('errormsg','Invalid link or Permission Denied');

            }
        }
        if ($request->has('videothumbnail')) {
            $video_thumbnail = time() . '.' . $request->videothumbnail->extension();
            $request->videothumbnail->move(public_path('/assets/patnerlibrary/thumbnails/'), $video_thumbnail);
            $add->thumbnail = $video_thumbnail;
        }
        $add->save();
        Session::flash('succesmsg','Successfully Updated');
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

        $del=faq::find($id);
        $del->delete();
        return redirect()->back();
    }
}
