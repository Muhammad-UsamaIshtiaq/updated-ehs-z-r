<html>

<head>

        <meta charset="utf-8" />
        <title>City Wide Mechanical</title>
        <meta name="description" content="Updates and statistics" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!--begin::Fonts-->
        <link rel="stylesheet" href="{{url('https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700')}}" />
        <!--end::Fonts-->
        <!--begin::Page Vendors Styles(used by this page)-->
        <link href="{{asset('assets/plugins/custom/fullcalendar/fullcalendar.bundle.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <!--end::Page Vendors Styles-->
        <!--begin::Global Theme Styles(used by all pages)-->
        <link href="{{asset('assets/plugins/global/plugins.bundle.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/plugins/custom/prismjs/prismjs.bundle.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/style.bundle.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <!--end::Global Theme Styles-->
        <!--begin::Layout Themes(used by all pages)-->
        <link href="{{asset('assets/css/themes/layout/header/base/light.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/themes/layout/header/menu/light.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/themes/layout/brand/dark.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/themes/layout/aside/dark.css?v=7.0.3')}}" rel="stylesheet" type="text/css" />
        <!--end::Layout Themes-->
        <link rel="shortcut icon" href="{{asset('assets/media/logos/log.png')}}" />
        <link rel="stylesheet" href="{{asset('assets/css/custom.css')}}">


</head>
 <style>
     .heading{
        font-family: bold;
        font-size : large;
     }
 </style>
<body>

<div>
    <br>
    <br>
    <br>

    <center>
        <h4><strong>Name:</strong> {{$worker->first_name}} {{$worker->last_name}}</h4>
        <h4><strong>Gender:</strong> @if($worker->gender == 1) Male @else Female @endif </h4>
        <h4><strong>Department:</strong>
            @if(departments_byid($worker->dep_id) != ''){{departments_byid($worker->dep_id)->name}} @endif </h4>
        <h3><strong>Certificates:</strong></h3>
        <table style="border: 2px solid black;">

            @if(count($certificates) > 0)
                <thead>
                <tr  style="border: 1px solid black;">
                    <th  style="border: 1px solid black;">Course Name</th>
                    <th  style="border: 1px solid black;">Result</th>

                </tr>
                </thead>

                <tbody >
                @foreach($certificates as $certificate)
                    @if($certificate->grade == 'pass')
                    <tr  style="border: 1px solid black;">

                        <td  style="border: 1px solid black;">@if(course_byid($certificate->course_id) != ''){{course_byid($certificate->course_id)->name}} @endif </td>
                        <td  style="border: 1px solid black;" >{{$certificate->grade}}</td>

                    </tr>
                    @endif
        @endforeach
                @else
                    No Certification Found
        @endif
                </tbody>
        </table>
    </center>

</div>


<div class='card'>
    <div class="row justify-content-around align-items-center "  id="print2">
        <div class='col-xl-4 col-lg-4 col-sm-12 col-12 col-md-12 gg'>

            <div class="card border border-1 border-dark bg-warning m-4" style="width:380px;height:600px;">
                <img src="{{asset('/')}}{{$user->photo}}" alt="photo" class="card-img" style="width:100%;height:270px !important; padding:50px;">
                <div class="card-body" style="margin-top:-40px;">
                    <div class="card-title text-center h3" style="margin-top: -34px; !important;">
                        <span class="d-block">{{$user->user->name}}</span>
                        <span class='d-block h4'><i>@if(departments_byid($user->dep_id) != ''){{departments_byid($user->dep_id)->name}} @endif</i></span>
                    </div>
                    <div class="card-text">
                        <img src="{{asset('company/logos/')}}{{'/'.$worker->company->logo}}" alt="image-stamp" style="height:230px !important;" class="img-fluid rouned rounded-cricle d-block mx-auto w-75">
                        <div class="row text-center mt-3">
                            <div class="col-6">
                                Expire date
                            </div>
                            <div class="col-6">
                                Id {{$user->user->id}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="">
            <label>Full Name: {{$worker->first_name}} {{$worker->last_name}}</label>
            <br>
            <label>Email: {{$worker->email}}</label>
            <br>
            <label>Language: {{$worker->native_language}}</label>
            <br>
            <label>Department:  @if(departments_byid($worker->dep_id) != ''){{departments_byid($worker->dep_id)->name}} @endif</label>
            <br>
            <label>Company Name: {{!empty($user->company) ? $user->company->name : ''}}</label>
        </div> -->
        <div class="col-xl-4 col-lg-4 col-sm-12 col-12 col-md-12">
            <div class='card bg-white border border-1 border-dark m-4 ' style="width:380px;height:600px;">
                <div class="card-notes text-center w-50 mx-auto mt-4">
                    Scan this QR Code to verify the Badage
                </div>
                <img src="https://api.qrserver.com/v1/create-qr-code/?data={{route('User.Card.Detail',$user->id)}}&amp;size=100x100&amp;bgcolor=f8f9fa" alt="" class="card-img-top img-fluid d-block mx-auto w-75">
                <div class='card-body'>
                    <div class="card-title text-center">
                        <h5>Badage Issued By</h5>
                    </div>
                    <div class="card-title">
                        <h4 class='text-center'><b>{{!empty($user->company) ? $user->company->name : ''}}</b></h4>
                        <!-- <p class="text-center"><small> 0304 8518244</small></p> -->
                        <img src="{{asset('assets/images/barcode.png')}}" alt="image-stamp" class="img-fluid rouned rounded-cricle d-block mx-auto w-50">
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-4 col-sm-12 col-12 col-md-12">
            <div class='card bg-white border border-1 border-dark m-4 ' style="width:380px;height:600px;">
                <div class="card-notes text-center w-50 mx-auto mt-4">
                    Personal Information
                </div>
                <div class='card-body'>
                    <div class="card-title text-center">
                    <label class="heading">Full Name: </label><label>{{$worker->first_name}} {{$worker->last_name}}</label>
                    <br>
                    <label class="heading">Email: </label><label>{{$worker->email}}</label>
                    <br>
                    <label class="heading">Language: </label> <label>{{$worker->native_language}}</label>
                    <br>
                    <label class="heading">Department:  </label> <label>@if(departments_byid($worker->dep_id) != ''){{departments_byid($worker->dep_id)->name}} @endif</label>
                    <br>
                    <label class="heading">Company Name: </label> <label>{{!empty($user->company) ? $user->company->name : ''}}</label>
                    <br>
                    <label class="heading">Worker Tpye: </label> <label>{{$worker->type}}</label>
                    <br>
                    <label class="mt-2" style="font-size: 24px;">Emergency Contact 1</label>
                    <br>
                    <label class="heading">Name: </label><label>{{$worker->em_fname}} {{$worker->em_lname}}</label>
                    <br>
                    <label class="heading">Phone: </label><label>{{$worker->em_no}} </label>

                    <br>
                    <label class="mt-2" style="font-size: 24px;">Emergency Contact 2</label>
                    <br>
                    <label class="heading">Name: </label><label>{{$worker->em_fname2}} {{$worker->em_lname2}}</label>
                    <br>
                    <label class="heading">Phone: </label><label>{{$worker->em_no2}} </label>

                    </div>
                </div>
            </div>
        </div>
    </div>

    {{--        <button class="btn btn-info" type="button" onclick="printcard2()">Print</button>--}}
</div>



</body>





</html>

<script src="{{asset('assets/plugins/global/plugins.bundle.js?v=7.0.3')}}"></script>
<script src="{{asset('assets/plugins/custom/prismjs/prismjs.bundle.js?v=7.0.3')}}"></script>
<script src="{{asset('assets/js/scripts.bundle.js?v=7.0.3')}}"></script>
<!--end::Global Theme Bundle-->
<!--begin::Page Vendors(used by this page)-->
<script src="{{asset('assets/plugins/custom/fullcalendar/fullcalendar.bundle.js?v=7.0.3')}}"></script>
<!--end::Page Vendors-->
<!--begin::Page Scripts(used by this page)-->
<script src="{{asset('assets/js/pages/widgets.js?v=7.0.3')}}"></script>
