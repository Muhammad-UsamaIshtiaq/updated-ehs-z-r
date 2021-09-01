@extends(Auth::user()->hasRole('Admin') ? 'layout.dashadmin' : 'layout.dash1')
@section('subheader')
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">ToolBox Talks Results</h5>
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
@section('dashboard')
   <!--begin::Entry-->
   <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Notice-->

            <!--end::Notice-->
            <!--begin::Card-->
            <div class="card card-custom">
                <div class="card-header flex-wrap border-0 pt-6 pb-0">
                    <div class="card-title">
                        <h3 class="card-label">
                            <span class="d-block text-muted pt-2 font-size-sm"></span></h3>
                    </div>
                    <div class="card-toolbar">
                        <!--begin::Dropdown-->
                        <div class="dropdown dropdown-inline mr-2">
                            <button type="button" class="btn btn-light-primary font-weight-bolder dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												<span class="svg-icon svg-icon-md">
													<!--begin::Svg Icon | path:assets/media/svg/icons/Design/PenAndRuller.svg-->
													<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
														<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24" />
															<path d="M3,16 L5,16 C5.55228475,16 6,15.5522847 6,15 C6,14.4477153 5.55228475,14 5,14 L3,14 L3,12 L5,12 C5.55228475,12 6,11.5522847 6,11 C6,10.4477153 5.55228475,10 5,10 L3,10 L3,8 L5,8 C5.55228475,8 6,7.55228475 6,7 C6,6.44771525 5.55228475,6 5,6 L3,6 L3,4 C3,3.44771525 3.44771525,3 4,3 L10,3 C10.5522847,3 11,3.44771525 11,4 L11,19 C11,19.5522847 10.5522847,20 10,20 L4,20 C3.44771525,20 3,19.5522847 3,19 L3,16 Z" fill="#000000" opacity="0.3" />
															<path d="M16,3 L19,3 C20.1045695,3 21,3.8954305 21,5 L21,15.2485298 C21,15.7329761 20.8241635,16.200956 20.5051534,16.565539 L17.8762883,19.5699562 C17.6944473,19.7777745 17.378566,19.7988332 17.1707477,19.6169922 C17.1540423,19.602375 17.1383289,19.5866616 17.1237117,19.5699562 L14.4948466,16.565539 C14.1758365,16.200956 14,15.7329761 14,15.2485298 L14,5 C14,3.8954305 14.8954305,3 16,3 Z" fill="#000000" />
														</g>
													</svg>
                                                    <!--end::Svg Icon-->
												</span>Export</button>
                            <!--begin::Dropdown Menu-->
                            <div class="dropdown-menu dropdown-menu-sm dropdown-menu-right">
                                <!--begin::Navigation-->
                                <ul class="navi flex-column navi-hover py-2">
                                    <li class="navi-header font-weight-bolder text-uppercase font-size-sm text-primary pb-2">Choose an option:</li>
                                    <li class="navi-item">
                                        <a href="{{route('Export_Record',['XLSX','manager'])}}" class="navi-link">
																<span class="navi-icon">
																	<i class="la la-file-excel-o"></i>
																</span>
                                            <span class="navi-text">XLSX</span>
                                        </a>
                                    </li>
                                    <li class="navi-item">
                                        <a href="{{route('Export_Record',['CSV','manager'])}}" class="navi-link">
																<span class="navi-icon">
																	<i class="la la-file-text-o"></i>
																</span>
                                            <span class="navi-text">CSV</span>
                                        </a>
                                    </li>
                                    <li class="navi-item">
                                        <a href="{{route('Export_Record',['pdf','manager'])}}" class="navi-link">
																<span class="navi-icon">
																	<i class="la la-file-pdf-o"></i>
																</span>
                                            <span class="navi-text">PDF</span>
                                        </a>
                                    </li>
                                </ul>
                                <!--end::Navigation-->
                            </div>
                            <!--end::Dropdown Menu-->
                        </div>
                        <!--end::Dropdown-->
                        <!--begin::Button-->
                        <!--end::Button-->
                    </div>
                </div>
                <div class="card-body">
                    <div class="input-group col-12 mb-2">
                        <div class="col-3">
                            <select class="form-control all_individules" name="folder">
                                <option value="" disabled="" selected="" readonly="">Individuals</option>
                                @foreach($users as $user)
                                <option {{isset($employe_id) ? (($user->id == $employe_id) ? 'selected' : '' ) :''}} value="{{$user->id}}">{{$user->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        @if(Auth::user()->hasRole('Admin'))
                        <div class="col-3">
                            <select class="form-control all_projects" name="folder">
                                <option value="" disabled="" selected="" readonly="">Projects</option>
                                @foreach($projects as $project)
                                <option {{isset($project_id) ? (($project->id == $project_id) ? 'selected' : '' ) :''}} value="{{$project->id}}">{{$project->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        @endif

                    </div>
                    <table class="" id="kt_datatable" >
                        <thead>
                        <tr>
                            <th title="Field #2">User</th>
                            <th title="Field #3">Email</th>
                            <th title="Field #3">Role</th>
                            <th title="Field #3">View Sign</th>
                            <th  title="Field #3">Created At</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                            @if($all)
                            @foreach($toolboxes as $toolbox) 
                                @foreach($toolbox->signatures as $signature)   
                                @if(!empty($signature->sign))
                                <tr>
                                    <td>{{$signature->user->name}}</td>
                                    <td>{{$signature->user->email}}</td>
                                    <td>{{$signature->user->roles->pluck('name')}}</td>
                                    <td><img style="width: 70%;" src="{{$signature->sign}}"></td>
                                    <td>{{date('Y-m-d H:i:s',strtotime($signature->created_at))}}</td>
                                    <td></td>
                                </tr>
                                @endif
                                @endforeach
                            @endforeach
                            @else
                            @foreach($signatures as $signature) 
                            @if(!empty($signature->sign))  
                                <tr>
                                    <td>{{$signature->user->name}}</td>
                                    <td>{{$signature->user->email}}</td>
                                    <td>{{$signature->user->roles->pluck('name')}}</td>
                                    <td><img style="width: 70%;" src="{{$signature->sign}}"></td>
                                    <td>{{date('Y-m-d H:i:s',strtotime($signature->created_at))}}</td>
                                    <td></td>
                                </tr>
                                @endif
                                @endforeach
                            @endif
                        </tbody>
                    </table>

                </div>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
@endsection
@section('js')

    <script >
        $(".all_individules").on('change',function(){
            var employe_id = $(this).val();
            window.location.href = "{{url('toolbox-results-individual')}}/"+employe_id;
        });

        $(".all_projects").on('change',function(){
            var project_id = $(this).val();
            window.location.href = "{{url('toolbox-results-project')}}/"+project_id;
        });
        // "use strict";
        // Class definition

        var KTDatatableHtmlTableDemo = function() {
            // Private functions

            // demo initializer
            var demo = function() {

                var datatable = $('#kt_datatable').KTDatatable({
                    data: {
                        saveState: {cookie: false},
                    },
                });
            };

            return {
                // Public functions
                init: function() {
                    // init dmeo
                    demo();
                },
            };
        }();

        jQuery(document).ready(function() {
            KTDatatableHtmlTableDemo.init();
        });

    </script>
    <!--begin::Page Scripts(used by this page)-->
    {{--<script src="assets/js/pages/crud/ktdatatable/advanced/column-width.js?v=7.0.3"></script>--}}
    <!--end::Page Scripts-->


@endsection
