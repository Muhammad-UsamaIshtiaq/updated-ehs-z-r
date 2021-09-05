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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-1">
                <!--begin::Page Heading-->
                <div class="d-flex align-items-baseline mr-5">
                    <!--begin::Page Title-->

                    <!--end::Page Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                        <li class="breadcrumb-item">
                            <a href="{{url('')}}" class="text-muted">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            @if(!isset($type))
                            @if(folder_byid($file->folder_id)->type == 'resource')
                            <a href="{{url('/admin-resources')}}" class="text-muted">Resources</a>
                                @endif
                            @if(folder_byid($file->folder_id)->type == 'form')
                                    <a href="{{url('/form')}}" class="text-muted">Forms</a>
                                @endif
                                @else
                                <a href="{{url('/form')}}" class="text-muted">Forms</a>
                                @endif
                        </li>
                    </ul>
                    <!--end::Breadcrumb-->
                </div>
                <!--end::Page Heading-->
            </div>
            <!--end::Info-->

        </div>
    </div>
    <!--end::Subheader-->
@endsection
@section('dashboard')
    @if(isset($type))
    <div class=" card-custom gutter-b mt-3">
        <div class="row">
            <div class="col-3"></div>
            <div class="col-3">
                <button class="btn btn-info assign-to-department" data-toggle="modal" data-target="#toemploye">Employee</button>
            </div>
            @if (Auth::user()->hasRole('Admin'))
                <div class="col-3">
                <button class="btn btn-info assign-to-department" data-toggle="modal" data-target="#tomanager">Manager</button>
            </div>   
            @endif            
            <div class="col-3">
                <button class="btn btn-info set_file" data-toolbox_id="16" data-toggle="modal" data-target="#toemail">Send Mail</button>
            </div>                 
        </div>
    </div>
            <!-- manager modal start -->
        <div class="modal fade w-100" id="tomanager" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: #4a4e6b;">
                    <h5 class="modal-title text-uppercase text-white" id="exampleModalLabel">To Manager</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close text-white"></i>
                    </button>
                </div>
                <div class="modal-body p-0">
                    <div class="row">
                        <div class="col-12">
                            <form class="form" action="{{url('send_form')}}" method="post">
                                <div class="card-body">
                                <input type="hidden" name="form_id" value="{{$signature->id}}">
                                    @csrf
                                    <div class="col-12">
                                        <label for="companyName">Managers</label>
                                        <div class="input-group">
                                            <select class="form-control" name='email' >
                                                <option value="" disabled  readonly>Manager</option>
                                                @foreach($managers as $manager)
                                                    <option value="{{$manager->id}}">{{$manager->name}}</option>
                                                @endforeach
                                            </select>

                                        </div>

                                    </div>

                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <button type="reset" class="btn btn-primary mr-2" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-secondary">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
                <!-- manager modal end -->

                <!-- to specific email modal start -->
    <div class="modal fade w-100" id="toemail" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: #4a4e6b;">
                    <h5 class="modal-title text-uppercase text-white" id="exampleModalLabel">To</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close text-white"></i>
                    </button>
                </div>
                <div class="modal-body p-0">
                    <div class="row">
                        <div class="col-12">
                            <form class="form" action="{{url('send_form')}}" method="post">
                                <div class="card-body">
                                <input type="hidden" name="form_id" value="{{$signature->id}}">

                                    @csrf
                                    <input type="hidden" id="toolbox_id" value="" >

                                    <div class="col-12">
                                        <label for="companyName">To</label>


                                    <input type="email" name='email' class="form-control" id="to_email" required >


                                    </div>

                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <button type="reset" class="btn btn-primary mr-2" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-secondary send-mail">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </form>  

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

            <!-- to specific modal end -->


            <!-- to emolyee modal start -->

    <div class="modal fade w-100" id="toemploye" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdrop" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header" style="background: #4a4e6b;">
                    <h5 class="modal-title text-uppercase text-white" id="exampleModalLabel">To Employee</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <i aria-hidden="true" class="ki ki-close text-white"></i>
                    </button>
                </div>
                <div class="modal-body p-0">
                    <div class="row">
                        <div class="col-12">
                            <form class="form" action="{{url('send_form')}}" method="post">
                                <div class="card-body">
                                    <input type="hidden" name="form_id" value="{{$signature->id}}">
                                    @csrf
                                    <div class="col-12">
                                        <label for="companyName">Employee</label>
                                        <div class="input-group">
                                            <select class="form-control" name='email' >
                                                <option value=""  disabled>Employee</option>
                                                @foreach($users as $user)
                                                    <option value="{{$user->email}}">{{$user->name}}</option>
                                                @endforeach
                                            </select>

                                        </div>

                                    </div>

                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <button type="reset" class="btn btn-primary mr-2" data-dismiss="modal">Close</button>
                                            <button type="submit" class="btn btn-secondary">Send</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
            <!-- to emolyee modal end -->

    @endif
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Card-->
            <div class="card card-custom">
            @if(!isset($type))
            <input  type="hidden" id="file_id" value="{{$file->id}}" />
                @php $folder='forms'; @endphp
                @if(folder_byid($file->folder_id)->type == 'resource')

                    <iframe src="{{asset('/resources')}}/@if(folder_byid($file->folder_id) != ''){{folder_byid($file->folder_id)->name}}@else{{$folder}}@endif/{{$file->name}}" width="auto" height="1100px" />

                @endif
                @if(folder_byid($file->folder_id)->type == 'form')
                    <iframe src="{{asset('/forms')}}/@if(folder_byid($file->folder_id) != ''){{folder_byid($file->folder_id)->name}}@endif/{{$file->name}}" width="auto" height="1100px" />
                @endif
                
                @else
                <iframe src="{{asset($signature->form_submitted)}}" width="auto" height="1100px" />
              @endif  
            </div>
            <!--end::Card-->
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
@endsection
@section('js')

@endsection
