
<div class="card-toolbar">

    @php
        $temp=\App\Models\EmailTemplates::find(12);
    @endphp
    <div style="max-width:600px;margin-left:auto;margin-right:auto;">
        <div style="background:#fff;">
            <div style="width:100%;height:300px;overflow:hidden;">
                <img src="{{asset($temp->img1)}}" style="width:100%;height:auto;" />
            </div>
            <div style="padding:40px 25px;text-align:center;border-width:0px 1px 1px 1px;border-style:solid;border-color:#d2d2d2;">
                <p style="margin:0px;font-size:16px;">{{$temp->descr}}</p>
                <table class="datatable table-bordered" >
                    <thead>
                    <tr>

                        <th title="Field #1" >User</th>
                        <th title="Field #2">Role</th>
                        <th title="Field #3">view signs</th>


                    </tr>
                    </thead>
                    <tbody>

                    @php
                        $allsign=\App\Models\Admin\ToolboxSignature::where('file_id',$data)->get();
                        function base64_to_jpeg($base64_string, $output_file) {
                            // open the output file for writing
                            $ifp = fopen( $output_file, 'wb' );

                            // split the string on commas
                            // $data[ 0 ] == "data:image/png;base64"
                            // $data[ 1 ] == <actual base64 string>
                            $data = explode( ',', $base64_string );

                            // we could add validation here with ensuring count( $data ) > 1
                            fwrite( $ifp, base64_decode( $data[ 1 ] ) );

                            // clean up the file resource
                            fclose( $ifp );

                            return $output_file;
                        }
                    @endphp
                    @if(count($allsign) > 0)
                        @foreach($allsign as $signs)
                            @php
                                $image = base64_to_jpeg($signs->sign,public_path('signs/').$signs->user->name.'.png');
                            @endphp

                            <tr>

                                <td>{{$signs->user->name}}</td>
                                <td>{{$signs->user->roles->pluck('name')}}</td>
                                <td><img src="{{asset($signs->folder_path)}}"></td>

                            </tr>
                        @endforeach
                    @else
                        <tr>
                            <td>No</td>
                            <td>Sign</td>
                            <td>On This</td>
                        </tr>
                    @endif



                    </tbody>
                </table>
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
                    <p style="margin-bottom:0;font-size:14px;">{{asset($temp->body2)}}</p>
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
                    <p style="margin-bottom:0;font-size:14px;">{{asset($temp->body3)}}</p>
                    <a href="{{$temp->img3_button}}" style="border:none;font-size:14px;color:#fff;background:#000;padding:10px 20px;text-decoration:none;
                        display:inline-block;margin-top:20px;">
                        Click Here
                    </a>
                </div>
            </div>
            <div style="background:url({{asset($temp->bannerImg)}}) no-repeat center;">
                <div style="padding:40px 25px;text-align:center;background:rgb(0,0,0,0.5);">
                    <p style="margin:0px;color:#fff;font-size:16px;">{{asset($temp->bannerText)}}</p>
                </div>
            </div>
        </div>
    </div>
</div>

