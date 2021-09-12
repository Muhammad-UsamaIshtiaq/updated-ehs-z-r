

@php
    $counterr=0;
    $video_completed=0;
    $form_completed=0;
@endphp
@if($type == 'video')
@foreach($data as $v)
    @if($counterr == $counter )
        @if(count($data) == ($counter+1))
            @php $video_completed=1; @endphp
            @endif

        @php
            $api_key = "AIzaSyAPQKBhoyH0cgY_kCOA_91uqOKpjCFz6A4";
        $video_id =$v->file;
        $url = "https://www.googleapis.com/youtube/v3/videos?id=$video_id&key=$api_key&part=snippet,contentDetails,statistics,status";
        $ch = curl_init();
        curl_setopt( $ch, CURLOPT_AUTOREFERER, TRUE );
        curl_setopt( $ch, CURLOPT_HEADER, 0 );
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt( $ch, CURLOPT_URL, $url );
        curl_setopt( $ch, CURLOPT_FOLLOWLOCATION, TRUE );
        $data = curl_exec( $ch );
        curl_close( $ch );
        $getData = json_decode($data , true);
        if ($getData['items'] != []){
        foreach((array)$getData['items'] as $key => $gDat){
            $timee = $gDat['contentDetails']['duration'];
        }


        $time=ISO8601ToSeconds($timee);
        }else{
            $time=0;
        }

        @endphp
        <input class="vtime" type="hidden"  value="{{($time-($resumetime))}}">
       <div style="overflow: auto !important;text-align:center;background: #1e1e2d;">
           <div id="player" ></div>
       </div>

        <div id="countdown"></div>
        <div class="plyr__video-embed js-player" data-plyr-provider="youtube" data-plyr-embed-id="{{$v->file}}"></div>
        </div>
        @if($video_completed == 1)
            <button type="button" class="btn btn-info video_next" id="countdown" >Next</button>

        @else

            <button type="button" class="btn btn-info next mt-5" data-type="video">Next Video</button>

        @endif



    @endif
    @php $counterr++; @endphp
@endforeach
    @endif
@if($type == 'ack_form')

    @foreach($data1 as $v2)
        @if($counterr == $counter )
            @if(count($data1) == ($counter+1))
                @php $form_completed=1;

                @endphp
            @endif

        @php $file=\App\Models\Form::find($v2->form_id); @endphp
        <iframe src="{{asset('/images/assignments/acknowledgment')}}/{{$file->file_name}}" width="600px" height="2100px"></iframe>
       @endif
       @php $counterr++; @endphp
        @endforeach


        <center>
            <div class="form-group row text-align-left">
                <label class="col-12 col-form-label text-left">I Read and Agree</label>
               
                           <span class="switch switch-outline switch-icon switch-success" >
                            <label >
                             <input type="checkbox"  id="i_agree" onclick="agree()">
                             <span></span>
                            </label>
                           </span>
               
            </div>
        </center>

            @if($form_completed == 1)
                <button type="button" class="btn btn-info file_next"  >Next</button>

            @else

                <button type="button" class="btn btn-info next " data-type="ack_form">Next File</button>

            @endif
    @endif
<style>
     .video-control-panel{
        background: #1e1e2d;
        padding:0px 15px; 
        border-top:1px solid #3e3e3e; 
    }
    .video-control-panel button>i{
        font-size:30px;
    }
    .bi-fullscreen,.bi-arrow-counterclockwise{
        font-size:25px !important;
    }
    iframe{
        max-width:100%;
        height:300px;
    }
    .custom__range__field input{
        -webkit-appearance: none;
        width: 100px;
        height: 2px;
        background-color: #4471ef;
        outline: none;
    }
</style>
@if($type == 'video')
    <link rel="stylesheet" type="text/css" href="{{asset('assets/js/plyr/plyr.css')}}" />
    <script src="{{asset('assets/js/plyr/plyr.min.js')}}"></script>
<script>
    $(document).ready(() => {
        const controls = [
            'play-large', 
            'restart', 
            'play', 
            'duration',
            'mute',
            'volume',
            'download',
            'fullscreen' 
        ];
        const instances = Plyr.setup('.js-player', { controls });
        var player = instances[0];
        player.on('ended', function() {
            $('.video_next').show();
            $('.next').show();
        });
        $(document).on('click','button[data-plyr="restart"]',function(){
            $('.video_next').hide();
            $('.next').hide();
        })
    });

</script>

@endif

<script>




    $(document).ready(function(e)
    {



        $('.file_next').hide();
        $('.video_next').hide();
        $('.next').hide();

        $('.next').click(function () {

            var c_id = $('#c_id').val();
            var counter = $('#counter').val();
            if ($(this).data('type') == 'video'){

                var urrl = "{{url('usertests')}}/" + c_id + "?v=" + counter;
            window.location.href = urrl;
        }
            if ($(this).data('type') == 'ack_form'){
                synctest($(this).data('type'));

            }

        });

        $('.video_next').click(function () {

            @if(count($data1) > 0)
            $('#counter').val(0);
            $('#video_v').hide();
            $('#ack-file').show();
            $('#question_v').hide();
            synctest('ack_form');
            @elseif(count($data2) > 0)
            $('#video_v').hide();
            $('#ack-file').hide();
            $('#question_v').show();
            @else
            // alert('test submit');
            $('#testform').submit();
            @endif
        });

        $('.file_next').click(function () {

            @if(count($data2) > 0)
            $('#video_v').hide();
            $('#ack-file').hide();
            $('#question_v').show();
            @else
            alert('test submit');
            $('#testform').submit();
            @endif
        });




    });


    function agree() {
        var checkBox = document.getElementById("i_agree");

        if (checkBox.checked == true){
            $('.next').show();
            $('.file_next').show();
        } else {
            $('.next').hide();
            $('.file_next').hide();
        }
    }



</script>


