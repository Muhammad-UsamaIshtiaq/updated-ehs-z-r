@extends('layout.dash1')



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
                    <h5 class="text-dark font-weight-bold my-2 mr-5 text-uppercase">Resources</h5>
                    <!--end::Page Title-->
                    <!--begin::Breadcrumb-->
                    <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                        <li class="breadcrumb-item">
                            <a href="{{url('/home')}}" class="text-muted">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="" onclick="window.history.back(); return false;" class="text-muted">Back</a>

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
    <style>
        html,body{
            overflow-x:hidden;
        }
        #sig-canvas {
            border: 2px dotted #CCCCCC;
            border-radius: 15px;
            cursor: crosshair;

        }
        .cb-wrap{
            display:none !important;
        }
        .form-wrap.form-builder .frmb .field-actions .del-button {

            display: none !important;

        }
        .form-wrap.form-builder .frmb .field-actions .btn {

            display: none !important;

        }
    </style>




    @if(!Auth::user()->hasRole('User'))
    @if($file->type == 2)
    <form action="{{route('form.update')}}" method="post" id="ex_form" >
        @csrf
        <input type="text" class="form-control f-name" placeholder="Enter Form Name" value="{{$data->form_name}}" name="f_name" required readonly >
        <div id="build-wrap"></div>
        <div class="row">
            <div class="col-md-6"></div>
            <div class="setDataWrap col-md-12">


                <button class="btn btn-success col-md-3" id="getJSON" type="button" style="float:center;">Submit</button>
                <input type="hidden" name="form_id" value="{{$data->id}}">
                <input type="hidden" name="formm" id="insert">
                <input type="hidden" name="jsondata" id="insert-json">
                <input id="set" type="hidden" value="{{$data->json}}">
            </div>
        </div>
    </form>
    @endif
    @endif


    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid mt-5">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Card-->
            <div class="card card-custom p-md-10 p-6">
                @if($sign)
                @if($sign->sign != null)

                    <div id="done">
                    <div class="row">

                        <div class="col-md-12">
                            <h2>Your Signatured</h2>
                            <img id="sig-image" src="{{$sign->sign}}" alt="Your signature will go here!"/>
                        </div>
                    </div>
                    </div>

                @else
                    <div id="notdone">
                <div class="row">
                    <div class="col-md-12 mb-5">
                        <h2>E-Signature</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <canvas id="sig-canvas" width="620" height="160">
                            Get a better browser.
                        </canvas>
                    </div>
                </div>
                <div class="row mt-5 mb-10">
                    <div class="col-md-12">
                        <button class="btn btn-primary" id="sig-submitBtn">Submit Signature</button>
                        <button class="btn btn-default" id="sig-clearBtn">Clear Signature</button>
                    </div>
                </div>
                    </div>
                @endif
                @endif
                <br/>
                    @php $folder='Assign Jobs'; @endphp

                    @if(folder_byid($file->folder_id)->type == 'resource')
                        <iframe src="{{asset('/resources')}}/@if(folder_byid($file->folder_id) != ''){{folder_byid($file->folder_id)->name}}@else{{$folder}}@endif/{{$file->name}}" width="auto" height="1100" ></iframe>

                    @endif
                    @if(folder_byid($file->folder_id)->type == 'form')
                    @if(empty($sign->form_submitted))
                        <form method="POST" id="fill_form" action="{{url('submit_form')}}">
                        <input type="hidden" name="form_id" value="{{$id}}">
                        @csrf
                        <div id="form_data">
                        {!! $data->data  !!}
                        </div>
                        <div class="form-submission mt-10" style="text-align: right;" >
                        <input type="hidden" id="form_data_form" name="form_data_form">
                            <button class="btn btn-primary">Submit Form</button>
                        </div>
                        </form>
                    @else
                         <iframe src="{{asset($sign->form_submitted)}}" width="auto" height="1100" />

                    @endif
                    @endif

                <!-- <embed src="{{asset('/resources')}}/@if(folder_byid($file->folder_id) != ''){{folder_byid($file->folder_id)->name}}@else{{$folder}}@endif/{{$file->name}}" width="1040px" height="2100px" /> -->
            </div>

            <input  type="hidden" id="file_id" value="{{$file->id}}" />
            <!--end::Card-->

        @if(folder_byid($file->folder_id)->type == 'form')
        <!--begin::Card-->
       
        <!--end::Card-->
    @endif
        </div>
        <!--end::Container-->
    </div>

    <!--end::Entry-->
@endsection

@section('js')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
    <script src="https://formbuilder.online/assets/js/form-builder.min.js"></script>
    <script src="https://formbuilder.online/assets/js/form-render.min.js"></script>
    <script>
                let images = [];
                 $.each($("select"), function () {
                    $.each($("#"+$(this).attr('id')+" option"), function () {
                            $(this).removeAttr('selected');
                        });
                    // $(this).removeAttr('selected');
                });
             $(document).on('change','input[type="number"]' ,function(e){
                var value = $(this).val();
                //  return false;
                 $(this).attr('value',value);
             });

             $(document).on('change','input[type="checkbox"]' ,function(e){
                 if($(this).prop("checked") == true){
                    $(this).attr('checked', 'checked');
                    return false;
                }
                $(this).removeAttr('checked');
             });

             $(document).on('change','input[type="date"]' ,function(e){
                var date = $(this).val();
                $(this).attr('value',date);
             });
             
             $(document).on('change', 'select',function(){
                var selected_value = $(this).val();
                $('#'+$(this).attr('id')+' option[value="'+selected_value+'"]').attr('selected', "true");
             });
             

            //  $(document).on('change','input[type="radio"]' ,function(e){
            //      var radio_name = $(this).attr('name');
            //      var radio = $(this);
            //      $('input[type="radio"]').each(function(){
            //         if($(this).attr('name') == radio_name)
            //         {
            //             $(this).prop("checked", false);
            //         }
            //      });
            //      radio.attr('checked',true);
            //  });

             $(document).on('change','input[type="text"]' ,function(e){
                var text = $(this).val();
                $(this).attr('value',text);
             });

             $(document).on('change','textarea' ,function(e){
                var text = $(this).val();
                $(this).text(text);
             });

            $("#fill_form").submit(function(){
                $('input[type="date"]').each(function(){
                    $(this).attr('type',"text");
                });

                $('input[type="number"]').each(function(){
                    $(this).attr('type',"text");
                });


                $.each($("select"), function () {
                     var selected_option = 0;
                    $.each($("#"+$(this).attr('id')+" option"), function () {
                          if($(this).attr('selected'))
                          {
                              selected_option++;
                          }
                        });

                        if(selected_option==0)
                        {
                            $("#"+$(this).attr('id')+" option:eq(0)").attr('selected','true');
                        }
                     });
                     
                var full_form = $("#form_data").html();

                $(full_form).find('input[type="file"]').each(function(index, value){
                    var id = $(this).attr('id').replace(/\-/g, '');
                    id = id.replace('file', '');
                    id = id.replace(/\preview/g, '');
                    var src = images[id];
                    if(src !=undefined)
                    {
                        full_form = full_form.replace('<label for="'+$(this).attr('id')+'" class="formbuilder-file-label">File Upload</label>','');
                        full_form = full_form.replace('<input type="file" class="form-control" name="'+$(this).attr('name')+'" access="false" multiple="false" id="'+$(this).attr('id')+'">','<img style="width:22%" src="{{ asset('') }}'+src+'">');
                    }
                });

               $("#form_data_form").val(full_form);
            //    return false;
            });

            $(document).on('change','input[type="file"]' ,function(e){
            var id = $(this).attr('id').replace(/\-/g, '');
            id = id.replace('file', '');
            id = id.replace(/\preview/g, '');
           var file_data = $(this)[0].files[0];
           var form_data = new FormData();
           form_data.append('file', file_data);

           $.ajax({
                method : 'POST',
                url : '{{url("upload_img")}}',
                data: form_data,
                datatype: 'json',
                async : false,
                cache : false,
                contentType : false,
                processData : false,
                success:function(resposne)
                {
                    images[id] = resposne;
                }
           });
        });

        (function() {
            window.requestAnimFrame = (function(callback) {
                return window.requestAnimationFrame ||
                    window.webkitRequestAnimationFrame ||
                    window.mozRequestAnimationFrame ||
                    window.oRequestAnimationFrame ||
                    window.msRequestAnimaitonFrame ||
                    function(callback) {
                        window.setTimeout(callback, 1000 / 60);
                    };
            })();

            var canvas = document.getElementById("sig-canvas");
            var ctx = canvas.getContext("2d");
            ctx.strokeStyle = "#222222";
            ctx.lineWidth = 4;

            var drawing = false;
            var mousePos = {
                x: 0,
                y: 0
            };
            var lastPos = mousePos;

            canvas.addEventListener("mousedown", function(e) {
                drawing = true;
                lastPos = getMousePos(canvas, e);
            }, false);

            canvas.addEventListener("mouseup", function(e) {
                drawing = false;
            }, false);

            canvas.addEventListener("mousemove", function(e) {
                mousePos = getMousePos(canvas, e);
            }, false);

            // Add touch event support for mobile
            canvas.addEventListener("touchstart", function(e) {
                e.preventDefault();
            }, false);

            canvas.addEventListener("touchmove", function(e) {
                e.preventDefault();
                var touch = e.touches[0];
                var me = new MouseEvent("mousemove", {
                    clientX: touch.clientX,
                    clientY: touch.clientY
                });
                canvas.dispatchEvent(me);
            }, false);

            canvas.addEventListener("touchstart", function(e) {
                e.preventDefault();
                mousePos = getTouchPos(canvas, e);
                var touch = e.touches[0];
                var me = new MouseEvent("mousedown", {
                    clientX: touch.clientX,
                    clientY: touch.clientY
                });
                canvas.dispatchEvent(me);
            }, false);

            canvas.addEventListener("touchend", function(e) {
                e.preventDefault();
                var me = new MouseEvent("mouseup", {});
                canvas.dispatchEvent(me);
            }, false);

            function getMousePos(canvasDom, mouseEvent) {
                var rect = canvasDom.getBoundingClientRect();
                return {
                    x: mouseEvent.clientX - rect.left,
                    y: mouseEvent.clientY - rect.top
                }
            }

            function getTouchPos(canvasDom, touchEvent) {
                var rect = canvasDom.getBoundingClientRect();
                return {
                    x: touchEvent.touches[0].clientX - rect.left,
                    y: touchEvent.touches[0].clientY - rect.top
                }
            }

            function renderCanvas() {
                if (drawing) {
                    ctx.moveTo(lastPos.x, lastPos.y);
                    ctx.lineTo(mousePos.x, mousePos.y);
                    ctx.stroke();
                    lastPos = mousePos;
                }
            }

            // Prevent scrolling when touching the canvas
            document.body.addEventListener("touchstart", function(e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);
            document.body.addEventListener("touchend", function(e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);
            document.body.addEventListener("touchmove", function(e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);

            (function drawLoop() {
                requestAnimFrame(drawLoop);
                renderCanvas();
            })();

            function clearCanvas() {
                canvas.width = canvas.width;
            }

            // Set up the UI
            var sigText = document.getElementById("sig-dataUrl");
            var sigImage = document.getElementById("sig-image");
            var clearBtn = document.getElementById("sig-clearBtn");
            var submitBtn = document.getElementById("sig-submitBtn");
            clearBtn.addEventListener("click", function(e) {
                clearCanvas();
                // sigText.innerHTML = "Data URL for your signature will go here!";
                // sigImage.setAttribute("src", "");
            }, false);
            submitBtn.addEventListener("click", function(e) {
                var dataUrl = canvas.toDataURL();

                if(dataUrl != '') {

                    var v_token = "{{csrf_token()}}";
                    var f_id = $('#file_id').val();
                    $.ajax({
                        type: 'POST',
                        url: "{{route('sign.resource')}}",
                        cache: false,
                        data: {img: dataUrl, f_id: f_id, _token: v_token},
                        success: function (data) {
                            $('#notdone').hide();
                            $('#done').show();
                            toastr.success('', 'Signatured');
                            $('#sig-image').attr('src', dataUrl);
                        }


                    });
                }else{

                }


            }, false);

        })();

    </script>
 

    <script>


        jQuery(function($) {




            var fbEditor = document.getElementById('build-wrap');
            var formBuilder = $(fbEditor).formBuilder();
            var editdata=$('#set').val();


            setTimeout(function(){ formBuilder.actions.setData(editdata); }, 2000);

            const options = {
                allowStageSort: false // default: `true`
            };


            document.getElementById('getJSON').addEventListener('click', function() {
                // alert(formBuilder.actions.getData('json'));
                const code = document.getElementById("markup");
                const formData =formBuilder.actions.getData('json');
                const addLineBreaks = html => html.replace(new RegExp("><", "g"), ">\n<");

                // Grab markup and escape it
                const $markup = $('<p>');
                $markup.formRender({ formData });

                // set < code > innerText with escaped markup
                // code.innerText = addLineBreaks($markup.formRender("html"));
                var full_form =addLineBreaks($markup.formRender("html"));
                // $('#apendd').append(full_form);
                $('#insert').val(full_form);

                var json_form=formBuilder.actions.getData('json');
                $('#insert-json').val(json_form);

                if($('.f-name').val() == ''){
                    alert('Please Fill Form Name Field');
                }else{
                    $('#ex_form').submit();

                }
            });

        });



    </script>
<script>


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
                    field: 'File',
                    type: 'text',
                },{
                    field: 'Folder',
                    type: 'text',
                }
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
function resizeCanvasView() {
    if($(window).width() <= 575){
        $('#sig-canvas').attr('width',270)
    }else{
        $('#sig-canvas').attr('width',620)
    }
}
$(window).bind( "load resize", function() {
    resizeCanvasView()
})
jQuery(document).ready(function() {
    resizeCanvasView()
    KTDatatableHtmlTableDemo.init();
});

</script>

@endsection
