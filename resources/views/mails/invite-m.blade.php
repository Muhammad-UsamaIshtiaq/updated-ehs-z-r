<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Templates</title>
</head>
<body style="margin:0px;padding:50px;">
    @php
        $temp=\App\Models\EmailTemplates::find(1);
    @endphp
    <div style="max-width:600px;margin-left:auto;margin-right:auto;">
        <div style="background:#fff;">
            <div style="width:100%;height:300px;overflow:hidden;">
                <img src="https://ehs1122.programmersbrain.com/images/1633965821img1.png" style="width:100%;height:auto;" />
            </div>
            <div style="padding:40px 25px;text-align:center;border-width:0px 1px 1px 1px;border-style:solid;border-color:#d2d2d2;">
                <p style="margin:0px;font-size:16px;"><?php echo $temp->descr; ?></p>
                <h3>Your email: {{$email}} </h3>
                <h3>Your password: {{$password}}</h3>
                <h3><a href="{{asset('/login')}}">Click Here</a> To Login And Verify Your Account</h3>
                <a href="{{$temp->img1_button}}" style="border:none;font-size:14px;color:#fff;background:#000;padding:10px 20px;text-decoration:none;
                   display:inline-block;margin-top:20px;">
                    Click Here
                </a>
            </div>
            <div style="display:flex;width: 99.9%;border-width:0px 1px 1px 0px;border-color:#d2d2d2;border-style:solid;">
                <div style="width:35%;overflow:hidden;box-sizing:border-box;">
                    <img src="{{asset($temp->img2)}}" style="width:100%;height:100%;object-fit:cover;" />
                </div>
                <div style="width:65%;padding:25px;box-sizing:border-box;">
                    {{--<h5 style="margin:0;font-size:18px;">What is lorem ipsum</h5>--}}
                    <p style="margin-bottom:0;font-size:14px;"><?php echo $temp->body2; ?></p>
                    <a href="{{$temp->img2_button}}" style="border:none;font-size:14px;color:#fff;background:#000;padding:10px 20px;text-decoration:none;
                        display:inline-block;margin-top:20px;">
                        Click Here
                    </a>
                </div>
            </div>
            <div style="display:flex;width: 99.9%;border-width:0px 1px 0px 0px;border-color:#d2d2d2;border-style:solid;">
                <div style="width:35%;overflow:hidden;box-sizing:border-box;">
                    <img src="{{asset($temp->img3)}}" style="width:100%;height:100%;object-fit:cover;" />
                </div>
                <div style="width:65%;padding:25px;box-sizing:border-box;">
                    {{--<h5 style="margin:0;font-size:18px;">What is lorem ipsum</h5>--}}
                    <p style="margin-bottom:0;font-size:14px;"><?php echo $temp->body3; ?></p>
                    <a href="{{$temp->img3_button}}" style="border:none;font-size:14px;color:#fff;background:#000;padding:10px 20px;text-decoration:none;
                        display:inline-block;margin-top:20px;">
                        Click Here
                    </a>
                </div>
            </div>
            <div style="background:url({{asset($temp->bannerImg)}}) no-repeat center;">
                <div style="padding:40px 25px;text-align:center;background:rgb(0,0,0,0.5);">
                    <p style="margin:0px;color:#fff;font-size:16px;"><?php echo $temp->bannerText; ?></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

