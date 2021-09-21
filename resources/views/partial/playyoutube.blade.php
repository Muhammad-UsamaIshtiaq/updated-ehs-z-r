    @if($video_type !="vimeo")
    <iframe
        src="https://www.youtube.com/embed/{{$file}}?enablejsapi=1&amp;start=00&amp;disablekb=1&amp;autoplay=1&amp;rel=0"
        allow="accelerometer;
                        autoplay;
                        encrypted-media;
                        gyroscope;
                        picture-in-picture"
        allowfullscreen=""

        frameborder="0"
    ></iframe>
    @else
    <iframe
        src="https://player.vimeo.com/video/{{$file}}?h=a04a74d966&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;"
        allow="accelerometer;
                        autoplay;
                        encrypted-media;
                        gyroscope;
                        picture-in-picture"
        allowfullscreen=""

        frameborder="0"
    ></iframe>
    @endif
