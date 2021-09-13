<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Admin\CourseStatistics;
use App\Http\Controllers\Controller;
use App\Models\AcknowledgmentForms;
use App\Models\Assignment;
use App\Models\CourseResults;
use App\Models\Question;
use App\Models\User;
use App\Models\Worker;
use Illuminate\Support\Facades\Session;
use PDF;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\AssignmentDetail;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Arr;

class UserCourseTestsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {

        $user = User::find(Auth::user()->id);
        if($user->hasAnyRole(3,4,5,6,7,8,9,10)){
            $stats=CourseResults::where('grade','pass')->where("company_id",Auth::user()->company_id)->get();
            $pass=CourseResults::where('grade','pass')->where("company_id",Auth::user()->company_id)->count();
            $fail=CourseResults::where('grade','fail')->where("company_id",Auth::user()->company_id)->count();

        }else{
            $stats=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('grade','!=',null)->get();
            $pass=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('grade','pass')->count();
            $fail=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('grade','fail')->count();
        }
        return view('dashboard1.Coursetest.coursestat',compact('stats','pass','fail'));
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

        $submited=$request->except('assignment_id');
        $corect=0;
        $wrong=0;
        $take=0;
        $worker=Worker::find(Auth::user()->user_personel->id);
        $worker_lng=$worker->native_language;
        if($worker_lng == 'Spanish'){
            $w_lng='esp';
        }else{
            $w_lng='eng';
        }
        DB::table('user_assignment_details')->where(['user'=> Auth::user()->id])->where(['user'=> Auth::user()->id,'course_id'=> $request->course_id, 'assignment_detail_id'=> $request->assignment_id])->update(['completed'=>1]);
        // AssignmentDetail::where(['id'=>$request->assignment_id])->update(['completed'=>1]);
        // $details = AssignmentDetail::where(['id'=>$request->assignment_id])->first();
        $total=Question::where('course_id',$request->course_id)->where('lng',$w_lng)->count();
        $add=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('course_id',$request->course_id)->first();
       if(empty($add))
       {
           $add = new CourseResults;
           $add->worker_id = Auth::user()->user_personel->id;
           $add->course_id = $request->course_id;
       }

        if($total > 0) {
            foreach ($submited as $key => $value) {
                if ($key != '_token') {
                    if ($key != 'course_id') {
                        $question = Question::find($key);
                        DB::table('submitted_answers')->where(['course_id'=>$request->course_id, 'worker_id'=> Auth::user()->id, 'question_id'=> $question->id])->delete();
                        if ($question->type == 'question') {
                            if ($question->answer == $value) {
                                $answer = [
                                    'course_id' => $request->course_id,
                                    'question_id' => $question->id,
                                    'correct' => 1,
                                    'worker_id' => Auth::user()->id
                                ];
                                $corect++;
                            } else {
                                $answer = [
                                    'course_id' => $request->course_id,
                                    'question_id' => $question->id,
                                    'wrong' => 1,
                                    'worker_id' => Auth::user()->id
                                ];
                                $wrong++;

                            }
                        } else {
                            if ($question->true_false == $value) {
                                $answer = [
                                    'course_id' => $request->course_id,
                                    'question_id' => $question->id,
                                    'correct' => 1,
                                    'worker_id' => Auth::user()->id
                                ];
                                $corect++;
                            } else {
                                $answer = [
                                    'course_id' => $request->course_id,
                                    'question_id' => $question->id,
                                    'wrong' => 1,
                                    'worker_id' => Auth::user()->id
                                ];
                                $wrong++;

                            }
                        }
                        DB::table('submitted_answers')->insert($answer);
                        $take++;
                    }
                }
            }

            $take_ = DB::table('submitted_answers')->where(['course_id'=>$request->course_id, 'worker_id'=> Auth::user()->id])->count();
            $result = DB::table('submitted_answers')->where(['course_id'=>$request->course_id, 'worker_id'=> Auth::user()->id,'correct'=>1])->get();
            $perc=(count($result)/$total)*100;

        if ($perc > 70){
            $add->correct=count($result);
            $add->wrong=$total-count($result);
            $add->attempt=$take_;
            $add->total=$total;
            $add->grade='pass';
            $r="pass";
            // Session::flash('succesmsg','Passed');
        }else{
            $add->correct=count($result);
            $add->wrong=$total-count($result);
            $add->attempt=$take_;
            $add->total=$total;
            $add->grade='fail';
            $r="fail";
            // Session::flash('errormsg','failed');

        }

        }else{

            $add->grade='pass';
            $r="pass";
            // Session::flash('succesmsg','Passed');
        }


            // if ($r == "pass") {
                $add->save();
            // }
            $assignment = DB::table('user_assignment_details')->where(['user'=> Auth::user()->id, 'course_id'=>$request->course_id , 'completed'=>0])->first();
            // $next_assignment = AssignmentDetail::where(['course_id'=>$request->course_id, 'completed'=>0])->first();
            // return $next_assignment;
            if(empty($assignment))
            {
                return redirect()->route('usertests.index');
            }
            else
            {
                return \Redirect::to('usertests/'.$request->course_id)->with('message', 'State saved correctly!!!');
            }
            // return redirect()->route();


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $check=CourseResults::where('course_id',$id)->where('worker_id',Auth::user()->id)->count();
        $worker=Worker::find(Auth::user()->user_personel->id);
        $worker_lng=$worker->native_language;
        if($worker_lng == 'Spanish'){
            $w_lng='esp';
        }else{
            $w_lng='eng';
    }
        if ($check < 1){
            $insert=new CourseResults();
            $insert->course_id=$id;
            $insert->worker_id=Auth::user()->id;
            $insert->company_id=Auth::user()->company_id;
            $insert->state='in_progress';
            $insert->save();

        }
        $assignment_details_all =  AssignmentDetail::where(['course_id'=> $id, 'lang'=> $w_lng])->get();
        foreach($assignment_details_all as $s_detail)
        {
            $check_detail = DB::table('user_assignment_details')->where(['assignment_detail_id'=> $s_detail->id, 'user'=> Auth::user()->id])->first();
            if(empty($check_detail))
            {
                $user_assignment = [
                            'user' => AUth::user()->id,
                            'assignment_detail_id' => $s_detail->id,
                            'course_id' => $id
                ];
                DB::table('user_assignment_details')->insert($user_assignment);
            }

        }
        $assignment = DB::table('user_assignment_details')->where(['user'=> Auth::user()->id, 'course_id'=>$id , 'completed'=>0])->first();
        if(empty($assignment))
        {
            $stats=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('grade','!=',null)->where('course_id', $id)->first();
            if(!empty($stats))
            {
                if($stats->grade=="fail")
                {
                    $stats=CourseResults::where('worker_id',Auth::user()->user_personel->id)->where('grade','!=',null)->where('course_id', $id)->delete();

                    DB::table('user_assignment_details')->where(['user'=> Auth::user()->id, 'course_id'=>$id])->update(['completed'=>0]);
                }
            }
        }
        $assignment = DB::table('user_assignment_details')->where(['user'=> Auth::user()->id, 'course_id'=>$id , 'completed'=>0])->first();
        if(empty($assignment))
        {

            return redirect()->route('usertests.index');
        }
        $assignment_details =  AssignmentDetail::where(['id'=> $assignment->assignment_detail_id])->first();
        $c_id=$id;
        $questions = $videos = $ack_form = array();
        $is_resume = "";
        if($assignment_details->type=="Question" || $assignment_details->type=="True/False")
        {

            $questions=Question::where('id',$assignment_details->assignment_id)->where('lng',$w_lng)->get();
        }
        if($assignment_details->type=="video")
        {
            $videos=Assignment::where('course_id',$c_id)->where('lng',$w_lng)->get();
            $is_resume=CourseResults::where('course_id',$id)->where('worker_id',Auth::user()->id)->first();

        }

        if($assignment_details->type=="Acknowledgement")
        {
            $ack_form=AcknowledgmentForms::where('course_id',$id)->where('lng',$w_lng)->get();
        }            
        return view('dashboard1.Coursetest.start2',compact('videos','ack_form','questions','c_id','is_resume', 'assignment_details'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function usertest_pause(Request $request)
    {

        $update=CourseResults::where('course_id',$request->cid)->where('worker_id',Auth::user()->id)->first();
        $update->start=$request->start;
        $update->type=$request->type;
        $update->vid_no=$request->countes;
        $update->state='pause';
        $update->save();
        return redirect()->to('/home');
    }
    public function usertest_sync(Request $request)
    {

        $type=$request->type;
        $counter=$request->count;
        $c_id=$request->cid;
        $resumetime=$request->resumetime;
        $worker=Worker::find(Auth::user()->user_personel->id);
        $worker_lng=$worker->native_language;
        if($worker_lng == 'Spanish'){
            $w_lng='esp';
        }else{
            $w_lng='eng';
        }

        $data = $data1 = $data2 = array();
        $assignment_details = array();
      if ($type == 'video'){
            $data=Assignment::where('course_id',$c_id)->where('lng',$w_lng)->first();
            $assignment_details = AssignmentDetail::where(['course_id'=> $c_id, 'type'=> 'Video'])->first();
                // return $assignment_details;
        }
        if ($type == 'ack_form'){
            $data1=AcknowledgmentForms::where('course_id',$c_id)->where('lng',$w_lng)->first();
            $assignment_details = AssignmentDetail::where(['assignment_id'=> $data1->id, 'type'=> 'Acknowledgement'])->first();
        }
        if ($type == 'question'){
            $data2=Question::where('course_id',$c_id)->where('lng',$w_lng)->get();
            $assignment_details = AssignmentDetail::where(['assignment_id'=> $data1->id, 'type'=> 'Question'])->first();
            if(empty($assignment_details))
            {
                $assignment_details = AssignmentDetail::where(['assignment_id'=> $data1->id, 'type'=> 'True/False'])->first();
            }

        }

        $view=view('partial.usertest_sync',compact('data','data1','data2','type','counter','resumetime','c_id', 'assignment_details'));

        return  $view;
    }
    public function edit($id)
    {
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
        //
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
    }

    public function next_assignment($id, $old_assgnment, $type)
    {
        DB::table('user_assignment_details')->where(['user'=> Auth::user()->id])->where(['user'=> Auth::user()->id,'course_id'=> $id, 'assignment_detail_id'=> $old_assgnment])->update(['completed'=>1]);
        // AssignmentDetail::where(['id'=>$old_assgnment])->update(['completed'=>1]);
        $check=CourseResults::where('course_id',$id)->where('worker_id',Auth::user()->id)->count();
        $worker=Worker::find(Auth::user()->user_personel->id);
        $worker_lng=$worker->native_language;
        if($worker_lng == 'Spanish'){
            $w_lng='esp';
        }else{
            $w_lng='eng';
    }
        if ($check < 1){
            $insert=new CourseResults();
            $insert->course_id=$id;
            $insert->worker_id=Auth::user()->id;
            $insert->company_id=Auth::user()->company_id;
            $insert->state='in_progress';
            $insert->save();

        }
        $assignment = DB::table('user_assignment_details')->where(['user'=> Auth::user()->id, 'course_id'=>$id , 'completed'=>0])->first();
        if(empty($assignment))
        {
            return redirect()->route('usertests.index');
        }
        $assignment_details =  AssignmentDetail::where(['id'=> $assignment->assignment_detail_id])->first();
        $c_id=$id;
        $questions = $videos = $ack_form = array();
        $is_resume = "";
        if($assignment_details->type=="Question" || $assignment_details->type=="True/False")
        {

            $questions=Question::where('id',$assignment_details->assignment_id)->where('lng',$w_lng)->get();
        }
        if($assignment_details->type=="video")
        {
            $videos=Assignment::where('course_id',$c_id)->where('lng',$w_lng)->get();
            $is_resume=CourseResults::where('course_id',$id)->where('worker_id',Auth::user()->id)->first();

        }

        if($assignment_details->type=="Acknowledgement")
        {
            $ack_form=AcknowledgmentForms::where('course_id',$id)->where('lng',$w_lng)->get();
        }            
        return view('dashboard1.Coursetest.start2',compact('videos','ack_form','questions','c_id','is_resume','assignment_details'));
    }
}
