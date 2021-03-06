@extends('layout.dashadmin')


@section('button-toggle-mobile')
    <!--begin::Toggle-->
    <button class="brand-toggle btn btn-sm px-0" id="kt_aside_toggle">
        <span class="svg-icon svg-icon svg-icon-xl">
            <!--begin::Svg Icon | path:assets/media/svg/icons/Navigation/Angle-double-left.svg-->
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <polygon points="0 0 24 0 24 24 0 24" />
                    <path d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z" fill="#000000" fill-rule="nonzero" transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999)" />
                    <path d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z" fill="#000000" fill-rule="nonzero" opacity="0.3" transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999)" />
                </g>
            </svg>
            <!--end::Svg Icon-->
        </span>
    </button>
    <!--end::Toolbar-->
@endsection

@section('subheader')
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline mr-5">
                    <!--begin::Page Title-->
                    <h5 class="text-dark font-weight-bold my-2 mr-5 text-uppercase">Email Templates</h5>
                    <!--end::Page Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                        <li class="breadcrumb-item">
                            <a href="{{url('/')}}" class="text-muted">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{url('/admin/email-templates')}}" class="text-muted">Edit Email Templates</a>
                        </li>
                    </ul>
                    <!--end::Breadcrumb-->
                </div>
                <!--end::Page Heading-->
            </div>
            <!--end::Info-->

        </div>
    </div>

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
                        <h3 class="card-label">Email Templates
                        </h3>
                    </div>

                </div>
                <form class="form" action="{{url('admin/update-email-template')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{$data->id}}"/>
                    <div class="card-body">
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <label>Name:</label>
                                <input type="text" class="form-control" name="name" value="{{$data->name}}" placeholder="Enter full name"/>
                                <span class="form-text text-muted">Please enter emailtype/name</span>
                            </div>
                            <div class="col-lg-6">
                                <label>From:</label>
                                <input type="email" class="form-control" name="from_email" value="{{$data->email_from}}" placeholder="Enter contact number"/>
                                <span class="form-text text-muted">Please enter email from/address</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <label>Subject:</label>
                                <input type="text" class="form-control" name="subject" value="{{$data->subject}}" placeholder="Enter full name"/>
                                <span class="form-text text-muted">Please enter email subject</span>
                            </div>
                            <div class="col-lg-6">
                                <label>Status:</label>
                               <select class="form-control"  name="status">

                                   <option value="1" @if($data->status == 1) selected @endif>Active</option>
                                   <option value="0" @if($data->status == 0) selected @endif>Deactive</option>
                               </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <label>Image1:</label>
                                <input class="form-control" name="img1" type="file" />
                                @if(!empty($data->img1))
                                <div><img src="{{$data->img1}}" width="100"></div>
                                @endif
                            </div>
                            <div class="col-lg-6">
                                <label>Image1 Button Link:</label>
                                <input class="form-control" name="img1_button" type="text"  value="{{$data->img1_button}}"/>
                            </div>
                            <div class="col-12 mt-10">
                                <div>
                                    <label class="text-right">Image 1 Detail</label>
                                    <textarea class="summernote" name="body" id="kt_summernote_1">{{$data->descr}}</textarea>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-10">
                                <label>Image2:</label>
                                <input class="form-control" name="img2" type="file" />
                                @if(!empty($data->img2))
                                    <div><img src="{{$data->img2}}" width="100"></div>
                                @endif
                            </div>
                            <div class="col-lg-6 mt-10">
                                <label>Image2 Button Link:</label>
                                <input class="form-control" name="img2_button" type="text" value="{{$data->img2_button}}"/>
                            </div>
                            <div class="col-12 mt-10">
                                <div>
                                    <label class="text-right">Image 2 Detail</label>
                                    <textarea class="summernote" name="body2" id="kt_summernote_1">{{$data->body2}}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-lg-6">
                                <label>Image3:</label>
                                <input class="form-control" name="img3" type="file" />
                                @if(!empty($data->img3))
                                    <div><img src="{{$data->img3}}" width="100"></div>
                                @endif
                            </div>
                            <div class="col-lg-6">
                                <label>Image3 Button Link:</label>
                                <input class="form-control" name="img3_button" type="text" value="{{$data->img3_button}}"/>
                            </div>
                            <div class="col-12 mt-10">
                                <div>
                                    <label class="text-right">Image 3 Detail</label>
                                    <textarea class="summernote" name="body3" id="kt_summernote_1">{{$data->body3}}</textarea>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-10">
                                <label>Banner Image:</label>
                                <input class="form-control" name="bannerImg" type="file" />
                                @if(!empty($data->bannerImg))
                                    <div><img src="{{$data->bannerImg}}" width="100"></div>
                                @endif
                                <div class="mt-10">
                                    <label class="text-right">Banner Image Text</label>
                                        <textarea class="summernote" name="bannerText" id="kt_summernote_1">{{$data->bannerText}}</textarea>
                                    </div>
                               </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-lg-6">
                                <button type="submit" class="btn btn-primary mr-2">Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
@endsection
@section('js')
    <script src="{{ asset('assets/js/pages/crud/forms/editors/summernote.js?v=7.2.7')}}"></script>
    <script >
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
                    search: {
                        input: $('#kt_datatable_search_query'),
                        key: 'generalSearch'
                    },
                    columns: [
                        {
                            field: 'ID',
                            type: 'number',
                        },{
                            field: 'name',
                            type: 'text',
                        },{
                            field: 'description',
                            type: 'text',
                        },
                        {
                            field: 'created_at',
                            type: 'datetime',
                            format: 'YYYY-MM-DD',
                        },
                        {
                            field: 'updated_at',
                            type: 'datetime',
                            format: 'YYYY-MM-DD',
                        }, {
                            field: 'Status',
                            title: 'Status',

                            // callback function support for column rendering
                            template: function(row) {
                                var status = {
                                    1: {
                                        'title': 'Active',
                                        'class': ' label-light-success'
                                    },
                                    0: {
                                        'title': 'Deactive',
                                        'class': ' label-light-danger'
                                    }

                                };
                                return '<span class="label font-weight-bold label-lg' + status[row.Status].class + ' label-inline">' + status[row.Status].title + '</span>';
                            },
                        },
                    ],
                });



                $('#kt_datatable_search_status').on('change', function() {
                    datatable.search($(this).val().toLowerCase(), 'Status');
                });

                $('#kt_datatable_search_type').on('change', function() {
                    datatable.search($(this).val().toLowerCase(), 'Type');
                });

                $('#kt_datatable_search_status, #kt_datatable_search_type').selectpicker();

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

        // Class definition

        var KTSummernoteDemo = function () {
            // Private functions
            var demos = function () {
                $('.summernote').summernote({
                    height: 150
                });
            }

            return {
                // public functions
                init: function() {
                    demos();
                }
            };
        }();

        // Initialization
        jQuery(document).ready(function() {
            KTSummernoteDemo.init();
        });
    </script>

@endsection
