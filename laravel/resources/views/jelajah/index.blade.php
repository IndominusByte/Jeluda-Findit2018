@extends('layouts.app')
@section('content')
    <style>
p{
    font-family:system-ui;
} 
    </style>
<link href="{{asset('css/jelajah.index.blade.css')}}" rel="stylesheet">

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="margin-top:-1.5rem;">
  <div class="align-center text-center carousel-inner">
    <div class="carousel-item active">
      <img class="w-100 h-100" src="{{asset('photo/bannerfront.jpg')}}" alt="First slide">
      <div data-aos="zoom-in" data-aos-once="true" class="carousel-caption">
      @php                                            
      date_default_timezone_set("Asia/Jakarta");  
      $jam = date('H:i');                                 
      @endphp                                         
        @guest
        @if($jam >= '04:00' && $jam <= '10:59')
        <h1 class="img-txt">Selamat pagi, <br> kawan-kawan para pencari budaya indonesia...</h1>
        @elseif($jam >= '11:00' && $jam <= '13:59')
        <h1 class="img-txt">Selamat siang, <br> kawan-kawan para pencari budaya indonesia...</h1>
        @elseif($jam >= '14:00' && $jam <= '18:30')
        <h1 class="img-txt">Selamat sore, <br> kawan-kawan para pencari budaya indonesia...</h1>
        @else
        <h1 class="img-txt">Selamat malam, <br> kawan-kawan para pencari budaya indonesia...</h1>
        @endif
        @else
        @if($jam >= '04:00' && $jam <= '10:59')
        <h1 class="img-txt">Halo {{Auth::user()->name}}, Selamat pagi... <br>Terimakasih telah berkunjung di website kami...</h1>
        @elseif($jam >= '11:00' && $jam <= '13:59')
        <h1 class="img-txt">Halo {{Auth::user()->name}}, Selamat siang... <br>Terimakasih telah berkunjung di website kami...</h1>
        @elseif($jam >= '14:00' && $jam <= '18:30')
        <h1 class="img-txt">Halo {{Auth::user()->name}}, Selamat sore... <br>Terimakasih telah berkunjung di website kami...</h1>
        @else
        <h1 class="img-txt">Halo {{Auth::user()->name}}, Selamat malam... <br>Terimakasih telah berkunjung di website kami...</h1>
        @endif
        @endguest
      </div>
    </div>

    <div class="carousel-item">
      <img class="w-100 h-100" src="{{asset('photo/banershow.jpg')}}" alt="Second slide">
      <div data-aos="zoom-in" data-aos-once="true" class="carousel-caption">
        @guest
        <h1 class="img-txt">Selamat menjelajah kumpulan kebudayaan <br> yang terdapat di Indonesia</h1>
        @else
        <h1 class="img-txt">Selamat menjelajah kumpulan kebudayaan <br> yang terdapat di Indonesia</h1>
        @endguest
      </div>
    </div>

    <div class="carousel-item">
      <img class="w-100 h-100" src="{{asset('photo/bannerfront3.jpg')}}" alt="Third slide">
      <div data-aos="zoom-in" data-aos-once="true" class="carousel-caption">
        @guest
        <h1 class="img-txt">Semoga dapat membantu menambah wawasan anda <br> We <i class="fa fa-heart" aria-hidden="true"></i> Indonesia</h1>
        @else
        <h1 class="img-txt">Semoga dapat membantu menambah wawasan anda <br> We <i class="fa fa-heart" aria-hidden="true"></i> Indonesia</h1>
        @endguest
      </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> 
</div>

<!-- FILTER -->       
<div class="row col-12 justify-content-md-center" style="z-index: 100; margin-top:30px; margin-bottom:20px; padding-left:50px;">
  <div data-aos="fade-right" data-aos-once="true" class="btn-group col-lg-5 col-md-12 col-sm-12" style="margin-bottom:5px;">         
    <button type="button" class="btn btn-outline-secondary text-left" style="width:100%; border-width: medium;" data-toggle="dropdown">Pilih Provinsi 
      <span style="float:right;" class="dropdown-toggle"></span> 
    </button>                                                                                                                     
      <ul class="dropdown-menu scrollable-menu" role="menu" style="width:95%;">           
        @foreach($provinsi as $kategori)                                                  
        <li><a class="dropdown-item" href="{{url("/jelajah/filter")}}/{{str_slug($kategori->nama)}}">{{$kategori->nama}}</a></li> 
        @endforeach                                                                                                               
      </ul>                                                                                                                       
  </div>                                                                                  

  <div data-aos="fade-left" data-aos-once="true" class="btn-group col-lg-5 col-md-12 col-sm-12" style="margin-bottom:5px;"> 
    <button type="button" class="btn btn-outline-secondary text-left" style="width:100%; border-width: medium;" data-toggle="dropdown">Urut Berdasarkan
      <span style="float:right;" class="dropdown-toggle"></span>                          
    </button>                                                                             
      <ul class="dropdown-menu scrollable-menu" role="menu" style="width:95%;">                              
        <li><a class="dropdown-item" href="{{url("/jelajah/filter")}}/{{str_slug('kiriman terbaru')}}">Kiriman Terbaru</a></li>   
        <li><a class="dropdown-item" href="{{url("/jelajah/filter")}}/{{str_slug('kiriman jadul')}}">Kiriman Jadul</a></li>       
        <li><a class="dropdown-item" href="{{url("/jelajah/filter")}}/{{str_slug('disukai')}}">Paling Disukai</a></li>             
        <li><a class="dropdown-item" href="{{url("/jelajah/filter")}}/{{str_slug('terpopuler')}}">Terpopuler</a></li>             
      </ul>                                                                                                                       
  </div>                                                                                                                          
</div>                                                                                                                            
<!-- FILTER -->                                                                           
<div class="row col-12" style="padding-left:50px;">
    @foreach($posting as $postingan)
        @if($postingan->status !== 0)
  <div data-aos="zoom-in-up" data-aos-once="true" class="col-lg-3 col-md-4 col-sm-6" style="padding:10px;">
            <a style="text-decoration:none; color:black" href="{{url("/jelajah/{$postingan->slug}")}}">        
    <div class="card box" style="height:100%; border:solid 1px rgba(48, 77, 109, 0.6);">
    <img class="card-img-top" src="{{asset("storage/posting/{$postingan->foto}")}}" alt="Card image cap" style="width:100%; height:290px; object-fit:cover;">
      <div class="card-body">
          <h6 class="card-title" style="font-family:system-ui;"><b>Provinsi {{$postingan->kabupaten->provinsi->nama}} | Kabupaten {{$postingan->kabupaten->nama}} </b></h6>
        <p class="card-text" style="font-size:1rem; margin-bottom:0px; font-family:system-ui;">
            {{$postingan->deskripsi}}
        </p>
      </div>
      <div class="card-footer" style="position:initial; border-top:solid 1px rgba(48, 77, 109, 0.6);">
          <i class="fa fa-clock-o" aria-hidden="true"><span style="margin-top:4px; margin-bottom:-1px; font-family:system-ui;"> {{Date::parse($postingan->created_at)->ago()}}</span></i>
        <p class="text-muted" style="float:right; font-size:.9rem; margin-top:4px; margin-bottom:-1px; margin-left:10px;">{{$postingan->comment->count()}}  <i class="fa fa-comments-o" aria-hidden="true"></i></p>        
        <p class="text-muted" style="float:right; font-size:.9rem; margin-top:4px; margin-bottom:-1px;">{{$postingan->likes->count()}}  <i class="fa fa-heart-o" aria-hidden="true"></i></p>        
    </div>
    </div>
  </a>
  </div>
  @endif
@endforeach
</div>
    
<div class="pagination justify-content-center" style="margin-top:60px;">{{$posting->links()}}</div>
@endsection
