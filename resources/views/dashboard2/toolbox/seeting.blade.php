@extends('layout.dashadmin')
@section('subheader')
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">ToolBox Talks</h5>
                <!--end::Page Title-->
                <!--begin::Actions-->
                <div class="subheader-separator subheader-separator-ver mt-2 mb-2 mr-4 bg-gray-200"></div>


                <!--end::Actions-->
            </div>
            <!--end::Info-->
            <!--begin::Toolbar-->
            <div class="d-flex align-items-center">
                <!--begin::Actions-->



                <!--end::Actions-->
                <!--begin::Dropdowns-->

                <!--end::Dropdowns-->
            </div>
            <!--end::Toolbar-->
        </div>
    </div>
    <!--end::Subheader-->
@endsection
@section('css')

@endsection
@section('dashboard')
  
    <div class="d-flex flex-column-fluid d-flex align-items-center">
        <!--begin::Container-->
        <div class="container">

        <div class="container-fluid">
        <div class="row">
        @if(!Auth::user()->hasRole('User'))
            <div class=" col-md-4">
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body" onclick="window.location.href='{{url('toolbox-addnew')}}'">
                        <span class="fa fa-plus text-center mx-auto d-block text-dark" style="font-size:32px"></span>
                        <p class="text-center text-dark mt-3" style="font-size:16px; font-weight:500; "><a href="#" class="text-decoration-none text-dark">Add New</a></p>
                    </div>
                    <div class="card-footer">
                    </div>
                </div>
            </div>
         @endif   
            <div class=" col-md-4">
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body" onclick="window.location.href='{{url('toolbox-talk')}}'">
                        <span class="fas fa-toolbox text-center mx-auto d-block text-dark" style="font-size:32px"></span>
                        <p class="text-center text-dark mt-3" style="font-size:16px; font-weight:500; "><a href="#" class="text-decoration-none text-dark">ToolBox Talks</a></p>
                    </div>
                    <div class="card-footer">
                    </div>
                </div>
            </div>
            @if(!Auth::user()->hasRole('User'))
            <div class=" col-md-4">
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body" onclick="window.location.href='{{url('toolbox-results')}}'">
                        <span class="fa fa-list-alt text-center mx-auto d-block text-dark" style="font-size:32px"></span>
                        <p class="text-center text-dark mt-3" style="font-size:16px; font-weight:500; "><a href="#" class="text-decoration-none text-dark">Results</a></p>
                    </div>
                    <div class="card-footer">
                    </div>
                </div>
            </div>
            @endif
        </div>
        
    </div>
           
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
    <!--end::Entry-->
@endsection
