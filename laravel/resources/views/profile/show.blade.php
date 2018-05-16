 @extends('layouts.app')
 @section('content')
<link href="{{asset('css/profile.css')}}" rel="stylesheet"> 

<div class="col" style="margin-top:80px;">
  <p><h2 data-aos="zoom-in" data-aos-once="true" style="text-align:center; font-family: system-ui; margin:40px 0 0 0;">Profile</h2></p>
  <h2 class="text-center" style= "margin-bottom:60px; border-bottom: solid 2px; color:#304D6D; width:150px; text-align:center; margin-left: auto; margin-right: auto;"></h2>  
</div>

<div class="col-12" style="text-align:center;">
  <p>
    <div data-aos="fade-up" data-aos-once="true" class="card-img-wrap" style="margin:0 auto;">
      <img src="{{asset("/storage/avatar/{$user->avatar}")}}" class="rounded-circle" style="object-fit:cover;">
    </div>
  </p>
</div>

<h2 data-aos="fade-up" data-aos-once="true" style="text-align:center; font-family: system-ui; margin:20px 0 10px 0;">{{$user->name}}</h2>

@if(count($postings->where('status','=',1)) >= 7 && $user->role == 1)
<div data-aos="fade-up" data-aos-once="true" class="text-center" style="margin-bottom:50px;"><img src="{{asset('/photo/gold.png')}}" width="100px;" height="100px;"></div>
@elseif(count($postings->where('status','=',1)) >= 5 && $user->role == 1)
<div data-aos="fade-up" data-aos-once="true" class="text-center" style="margin-bottom:50px;"><img src="{{asset('/photo/silver.png')}}" width="100px;" height="100px;"></div>
@elseif(count($postings->where('status','=',1)) >= 3 && $user->role == 1)
<div data-aos="fade-up" data-aos-once="true" class="text-center" style="margin-bottom:50px;"><img src="{{asset('/photo/bronze.png')}}" width="100px;" height="100px;"></div>
@endif

<div class="container">
<div class="row"> 
  <div data-aos="fade-right" data-aos-once="true" id="accordion" class="col-lg-6 col-md-12">
    <div class="card" style="margin-top:20px;">
      <div class="card-header" id="headingOne">
        <a align="center" style="cursor:pointer; font-size:1.1rem; " data-toggle="collapse" data-target="#kiriman-budaya" aria-expanded="true" aria-controls="kiriman-budaya">
          <a class="mb-0" style="text-align:left;">Kiriman Budaya</a>
          <p class="text-muted" style="float:right; font-size:.9rem; margin-top:6px; margin-bottom:-10px;"><i class="fa fa-upload" aria-hidden="true"></i> {{$postings->count()}}</p> 
        </a>
      </div>
      <div id="kiriman-budaya" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion" style="max-height:245px; overflow-x:auto;">
          @foreach($postings as $posting)
        <div class="card-body list-group-item">
                <a href="{{url("/jelajah/{$posting->slug}")}}" style="text-decoration:none;">{{$posting->kabupaten->nama}}
                </a>@if($posting->status == 0) <small class="text-muted" style="float:right;"> Belum dikonfirmasi</small>@endif
        </div>
        @endforeach
      </div>
    </div>
  </div>
  <div data-aos="fade-left" data-aos-once="true" id="accordion" class="col-lg-6 col-md-12" style="margin-bottom:30px;margin-top;30px;">
    <div class="card" style="margin-top:20px;">
      <div class="card-header" id="headingOne">
        <a style="cursor:pointer; font-size:1.1rem;" data-toggle="collapse" data-target="#komentar" aria-expanded="true" aria-controls="komentar">
          <a class="mb-0" style="text-align:left;">Komentar</a>
          <p class="text-muted" style="float:right; font-size:.9rem; margin-top:6px; margin-bottom:-10px;"><i class="fa fa-comments-o" aria-hidden="true"></i> {{$comments->count()}}</p> 
        </a>
      </div>
      <div id="komentar" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion" style="max-height:245px; overflow-x:auto;">
          @foreach($comments as $comment)
        <div class="card-body list-group-item">
          <a href="{{url("/jelajah/{$comment->posting->slug}")}}" style="text-decoration:none;">{{$comment->subject}}</a>
        </div>
    @endforeach
      </div>
    </div>
  </div>
</div>
</div>
@endsection
