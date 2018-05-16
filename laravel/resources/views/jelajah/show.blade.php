@extends('layouts.app')
@section('content')
<link href="{{asset('css/jelajah.show.blade.css')}}" rel="stylesheet">

<div id="carouselExampleControls" class="carousel" data-ride="carousel" style=" margin-top:-1.5rem;">
  <div class="align-center text-center carousel-inner">                                           
    <div class="carousel-item active">                                                            
      <img class="w-100 h-100" src="{{asset('photo/bannerfront4.jpg')}}" alt="First slide">            
      <div class="carousel-caption">                      
        @guest 
        <h1 class="img-txt" style="z-index:1000; color:#fff;margin-bottom:0px;">
          Selamat menjelajah <br>budaya {{$posting->kabupaten->nama}} kawan
        </h1>
        @else 
        <h1 class="img-txt" style="z-index:1000; color:#fff;">
          Selamat menjelajah budaya {{$posting->kabupaten->nama}} di sistem kami <br>{{Auth::user()->name}}
        </h1>
        @endguest                                                                                     
      </div>                                                                                      
    </div>                                                                                        
  </div>                                                                                          
</div>                                                                                            

<div class="container-fluid" style="margin-top:40px; padding-left:30px;">
<div class="row">
<div class="col-sm-3" id="spy">
  <ul class="nav nav-pills flex-column">
    <li class="nav-item"><a class="nav-link active" href="#makanan">Makanan</a></li>
    <li class="nav-item"><a class="nav-link" href="#rumah">Rumah</a></li>
    <li class="nav-item"><a class="nav-link" href="#tarian">Tarian</a></li>
    <li class="nav-item"><a class="nav-link" href="#senjata">Senjata</a></li>
    <li class="nav-item"><a class="nav-link" href="#lokasi">Lokasi</a></li>
    <li class="nav-item"><a class="nav-link" href="#musik">Alat Musik</a></li>
    <li class="nav-item"><a class="nav-link" href="#pakaian">Pakaian Adat</a></li>
    <li class="nav-item"><a class="nav-link" href="#bahasa">Bahasa Daerah</a></li>

    <div class="col-12">
    @if(!Auth::guest())
        @if($posting->user->id == Auth::user()->id || Auth::user()->role == 2)        
        <a style="text-decoration:none;" href="{{url("/jelajah/{$posting->id}/edit")}}"><button style="margin:10px 0;" type="submit" class="btn btn-outline-info btn-block"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>                                                              
        @if(Auth::user()->role == 2 && $posting->status == 1)        
        <form onclick="return confirmDelete()" action="{{url("/jelajah/{$posting->id}")}}" method="POST">                                                 
		{{ method_field('DELETE')   }}                                                                                             
        {{ csrf_field() }}
		<button type="submit" class="btn btn-outline-danger btn-block"><i class="fa fa-trash-o" aria-hidden="true"></i> Hapus</button>
        </form>          
    @endif
    @if(Auth::user()->role == 2 && $posting->status == 0)        
        <form onclick="return confirmDelete()" action="{{url("/admin/{$posting->id}")}}" method="POST">                                                 
		{{ method_field('DELETE')   }}                                                                                             
        {{ csrf_field() }}
		<button type="submit" class="btn btn-outline-danger btn-block"><i class="fa fa-trash-o" aria-hidden="true"></i> Hapus</button>
        </form>          
    @endif

        <br>
        @if(Auth::user()->role == 2 && $posting->status == 0)
          <form action="{{url("/admin/{$posting->id}")}}" method="POST">
		    {{ method_field('PUT')   }} 
            {{ csrf_field()  }} 
            <button type="submit" class="btn btn-outline-success btn-block">
              <i class="fa fa-check-square-o" aria-hidden="true"></i> Konfirmasi
            </button>
          </form>
        @endif
    @endif
@endif
<!-- SYSTEM LIKE JANGAN DI UBAH CLASS NYA, INI PAKE AJAX 2 HARI KU BUAT !!-->
@if(!Auth::guest() && $posting->status !== 0)
    <div class="like_wrapper" style="margin-top:10px;">
        <div class="btn btn-block {{$posting->is_liked() ? 'btn-danger btn-unlike' : 'btn-primary btn-like' }}" data-model-id="{{$posting->id}}" data-type="1">
            {{$posting->is_liked() ? 'Unlike' : 'Like'}}
        </div>
        <div class="total_like">
            <span class="like_number">{{$posting->likes->count()}} </span> Like
            <span class="like_warning" style="display:none;">enggak boleh like sendiri</span>
        </div>
    </div>
    @endif

  </div>                                                                                                          
  </ul>
</div>
<br>

@foreach($posting->makanan as $makanan)
    @foreach($posting->rumah as $rumah)
        @foreach($posting->tarian as $tarian)
            @foreach($posting->senjata as $senjata)
                @foreach($posting->music as $music)
                    @foreach($posting->pakaian as $pakaian)
                        @foreach($posting->bahasa as $bahasa)


<!-- Modal Makanan 1-->
<div class="modal fade" id="makanan1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/makanan/{$makanan->foto1}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Makanan 2-->
<div class="modal fade" id="makanan2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/makanan/{$makanan->foto2}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Makanan 3-->
<div class="modal fade" id="makanan3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/makanan/{$makanan->foto3}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Rumah 1-->                                                                                                                                 
<div class="modal fade" id="rumah1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">                         
  <div class="modal-dialog modal-dialog-centered" role="document">                                                                                      
    <div class="modal-content">                                                                                                                         
        <img class="d-block view-img" src="{{asset("storage/rumah/{$rumah->foto1}")}}" alt="First slide">
    </div>                                                                                                                                              
  </div>                                                                                                                                                
</div>                                                                                                                                                  
                                                                                                                                                        
<!-- Modal Rumah 2-->                                                                                                                                 
<div class="modal fade" id="rumah2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">                         
  <div class="modal-dialog modal-dialog-centered" role="document">                                                                                      
    <div class="modal-content">                                                                                                                         
        <img class="d-block view-img" src="{{asset("storage/rumah/{$rumah->foto2}")}}" alt="First slide">
    </div>                                                                                                                                              
  </div>                                                                                                                                                
</div>                                                                                                                                                  
                                                                                                                                                        
<!-- Modal Rumah 3-->                                                                                                                                 
<div class="modal fade" id="rumah3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">                         
  <div class="modal-dialog modal-dialog-centered" role="document">                                                                                      
    <div class="modal-content">                                                                                                                         
        <img class="d-block view-img" src="{{asset("storage/rumah/{$rumah->foto3}")}}" alt="First slide">
    </div>                                                                                                                                              
  </div>                                                                                                                                                
</div>                                                                                                                                                  

<!-- Modal Senjata 1-->
<div class="modal fade" id="senjata1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/senjata/{$senjata->foto1}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Senjata 2-->
<div class="modal fade" id="senjata2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/senjata/{$senjata->foto2}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Senjata 3-->
<div class="modal fade" id="senjata3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/senjata/{$senjata->foto3}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Musik 1-->
<div class="modal fade" id="musik1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/music/{$music->foto1}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Musik 2-->
<div class="modal fade" id="musik2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/music/{$music->foto2}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Musik 3-->
<div class="modal fade" id="musik3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/music/{$music->foto3}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Pakaian 1-->
<div class="modal fade" id="pakaian1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/pakaian/{$pakaian->foto1}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Pakaian 2-->
<div class="modal fade" id="pakaian2" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/pakaian/{$pakaian->foto2}")}}" alt="First slide">
    </div>
  </div>
</div>

<!-- Modal Pakaian 3-->
<div class="modal fade" id="pakaian3" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <img class="d-block view-img" src="{{asset("storage/pakaian/{$pakaian->foto3}")}}" alt="First slide">
    </div>
  </div>
</div>



<div class="col-sm-9 scrollspy-example" data-spy="scroll" data-target="#spy" style="padding-right:30px;">
  <div id="makanan">
    <h2 style="margin-bottom:15px;">Makanan Tradisional - <small><strong>{{$makanan->nama}}</strong></small></h2>
<div id="carouselExampleControls0" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" data-toggle="tooltip" data-placement="top" data-html="true" title="Tekan untuk melihat ukuran asli..">
    <div class="carousel-item active">
      <a data-toggle="modal" data-target="#makanan1">
        <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/makanan/{$makanan->foto1}")}}" alt="First slide">
      </a>
    </div>
    <div class="carousel-item">
      <a data-toggle="modal" data-target="#makanan2">
        <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/makanan/{$makanan->foto2}")}}" alt="Second slide">
      </a>
    </div>
    <div class="carousel-item">
      <a data-toggle="modal" data-target="#makanan3">
        <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/makanan/{$makanan->foto3}")}}" alt="Third slide">
      </a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls0" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls0" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
    <p class="pre" style="margin-top:-10px;" "font-size:1.2rem;">
        {!!$makanan->desc!!}
    </p>
  </div>
  <div id="rumah">
    <h2 style="margin:40px 0 15px 0;">Rumah Adat - <small><strong>{{$rumah->nama}}</strong></small></h2>
<div id="carouselExampleControls1" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" data-toggle="tooltip" data-placement="top" title="Tekan untuk melihat ukuran asli..">
    <div class="carousel-item active">
      <a data-toggle="modal" data-target="#rumah1">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/rumah/{$rumah->foto1}")}}" alt="First slide">
      </a>
    </div>
    <div class="carousel-item">
      <a data-toggle="modal" data-target="#rumah2">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/rumah/{$rumah->foto2}")}}" alt="Second slide">
      </a>
    </div>
    <div class="carousel-item">
      <a data-toggle="modal" data-target="#rumah3">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/rumah/{$rumah->foto3}")}}" alt="Third slide">
      </a>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<p class="pre" style="margin-top:-10px; font-size:1.2rem;">
        {!!$rumah->desc!!}
</p>

  </div>
  <div id="tarian">
    <h2 style="margin:40px 0 15px 0;">Tarian Tradisional - <small><strong>{{$tarian->nama}}</small></strong></h2>
<div class="embed-responsive embed-responsive-16by9">
  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/{{$id}}?rel=0" allowfullscreen></iframe>
</div>
<p class"text-muted">Source : {{$tarian->video}}</p>

<p class="pre" style="margin-top:-10px; font-size:1.2rem;">
        {!!$tarian->desc!!}
</p>
  </div>
  <div id="senjata">
    <h2 style="margin:40px 0 15px 0;">Senjata Tradisional - <small><strong>{{$senjata->nama}}</small></strong></h2>
<div id="carouselExampleControls2" class="carousel slide" data-ride="carousel">                       
  <div class="carousel-inner" data-toggle="tooltip" data-placement="top" title="Tekan untuk melihat ukuran asli..">     
    <div class="carousel-item active">                                                               
      <a data-toggle="modal" data-target="#senjata1">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/senjata/{$senjata->foto1}")}}" alt="First slide"> 
      </a>
    </div>                                                                                           
    <div class="carousel-item">                                                                      
      <a data-toggle="modal" data-target="#senjata2">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/senjata/{$senjata->foto2}")}}" alt="Second slide">
      </a>
    </div>                                                                                           
    <div class="carousel-item">                                                                      
      <a data-toggle="modal" data-target="#senjata3">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/senjata/{$senjata->foto3}")}}" alt="Third slide"> 
      </a>
    </div>                                                                                           
  </div>                                                                                             
  <a class="carousel-control-prev" href="#carouselExampleControls2" role="button" data-slide="prev">  
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>                              
    <span class="sr-only">Previous</span>                                                            
  </a>                                                                                               
  <a class="carousel-control-next" href="#carouselExampleControls2" role="button" data-slide="next">  
    <span class="carousel-control-next-icon" aria-hidden="true"></span>                              
    <span class="sr-only">Next</span>                                                                
  </a>                                                                                               
</div>                                                                                               
    
<p class="pre" style="margin-top:-10px; font-size:1.2rem;">
        {!!$senjata->desc!!}
    </p>
  </div>
  <div id="lokasi">
    <h2 style="margin:40px 0 15px 0;">Lokasi</h2>
    <div style="width: 100%; height: 500px;">{!! Mapper::render() !!}</div>  
  </div>

  <div id="musik">
    <h2 style="margin:40px 0 15px 0;">Alat Musik - <small><strong>{{$music->nama}}</small></strong></h2>
<div id="carouselExampleControls3" class="carousel slide" data-ride="carousel">                                                                    
  <div class="carousel-inner" data-toggle="tooltip" data-placement="top" title="Tekan untuk melihat ukuran asli..">         
    <div class="carousel-item active">                                                                                                            
      <a data-toggle="modal" data-target="#musik1">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/music/{$music->foto1}")}}" alt="First slide"> 
      </a>
    </div>                                                                                                                                        
    <div class="carousel-item">                                                                                                                   
      <a data-toggle="modal" data-target="#musik2">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/music/{$music->foto2}")}}" alt="Second slide">
      </a>
    </div>                                                                                                                                        
    <div class="carousel-item">                                                                                                                   
      <a data-toggle="modal" data-target="#musik3">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/music/{$music->foto3}")}}" alt="Third slide"> 
      </a>
    </div>                                                                                                                                        
  </div>                                                                                                                                          
  <a class="carousel-control-prev" href="#carouselExampleControls3" role="button" data-slide="prev">                                               
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>                                                                           
    <span class="sr-only">Previous</span>                                                                                                         
  </a>                                                                                                                                            
  <a class="carousel-control-next" href="#carouselExampleControls3" role="button" data-slide="next">                                               
    <span class="carousel-control-next-icon" aria-hidden="true"></span>                                                                           
    <span class="sr-only">Next</span>                                                                                                             
  </a>                                                                                                                                            
</div>                                                                                                                                            
<p class="pre" style="margin-top:-10px; font-size:1.2rem;">
    {!!$music->desc!!}
</p>
  </div>
  
  <div id="pakaian">
    <h2 style="margin:40px 0 15px 0;">Pakaian Adat - <small><strong>{{$pakaian->nama}}</small></strong></h2>
<div id="carouselExampleControls4" class="carousel slide" data-ride="carousel">                                                                       
  <div class="carousel-inner" data-toggle="tooltip" data-placement="top" title="Tekan untuk melihat ukuran asli..">      
    <div class="carousel-item active">                                                                                                               
      <a data-toggle="modal" data-target="#pakaian1">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/pakaian/{$pakaian->foto1}")}}" alt="First slide">        
      </a>
    </div>                                                                                                                                           
    <div class="carousel-item">                                                                                                                      
      <a data-toggle="modal" data-target="#pakaian2">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/pakaian/{$pakaian->foto2}")}}" alt="Second slide">       
      </a>
    </div>                                                                                                                                           
    <div class="carousel-item">                                                                                                                      
      <a data-toggle="modal" data-target="#pakaian3">
      <img class="d-block w-100" style="height:550px; object-fit: cover;" src="{{asset("storage/pakaian/{$pakaian->foto3}")}}" alt="Third slide">        
      </a>
    </div>                                                                                                                                           
  </div>                                                                                                                                             
  <a class="carousel-control-prev" href="#carouselExampleControls4" role="button" data-slide="prev">                                                  
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>                                                                              
    <span class="sr-only">Previous</span>                                                                                                            
  </a>                                                                                                                                               
  <a class="carousel-control-next" href="#carouselExampleControls4" role="button" data-slide="next">                                                  
    <span class="carousel-control-next-icon" aria-hidden="true"></span>                                                                              
    <span class="sr-only">Next</span>                                                                                                                
  </a>                                                                                                                                               
</div>
<p class="pre" style="margin-top:-10px; font-size:1.2rem;">
{!!$pakaian->desc!!}
    </p>
  </div>
  <div id="bahasa">
    <h2 style="margin:40px 0 15px 0;">Bahasa Daerah - <small><strong>{{$bahasa->nama}}</small></strong></h2>
    <p class="pre" style="margin-top:-10px; font-size:1.2rem;">
        {!!$bahasa->desc!!}
    </p>
  </div>

</div>
</div>
</div>
@endforeach
@endforeach
@endforeach
@endforeach
@endforeach
@endforeach
@endforeach


<!-- KOMENTAR -->
@if($posting->status == 1)
<div class="container">
  <div data-aos="zoom-in-up"data-aos-once="true" class="card mx-auto" style="margin-top:50px; margin-bottom:10px; border:none; background-color:#304D6D;">
    <div class="card-body">
      <h3 class="card-text text-center" style="color:whitesmoke;">Komentar</h3>
    </div>
  </div>
</div>

@if(count($comment) > 0 )
@foreach($comment as $comments)
<div class="container">
  <div data-aos="zoom-in-up" data-aos-once="true" class="card mx-auto komen" style="margin-bottom:10px;">
    <div class="card-body box">
      <a class="col-1 float-left" style="padding-left:23px;" href="{{url("/profile/{$comments->user->id}")}}">
        <img src="{{asset("/storage/avatar/{$comments->user->avatar}")}}" class="rounded-circle" width="75px;" height="75px;" style="margin-right:5px; margin-left:-25px; object-fit:cover;">
      </a>        
      <a class="float-left text-muted" style="font-size:1.3rem; margin-left:40px;">oleh </a>
      <a href="{{url("/profile/{$comments->user->id}")}}" class="card-title" style="font-size:1.5rem; text-decoration:none; padding-left:5px; color:#304D6D;">{{$comments->user->name}}

          @if($comments->user->posting->where('status','=',1)->count() >= 7 && $comments->user->role == 1)
<img src="{{asset('/photo/gold.png')}}" width="50px;" height="50px;" style="float:right; margin-right:-10px;">
          @elseif($comments->user->posting->where('status','=',1)->count() >= 5 && $comments->user->role == 1)
<img src="{{asset('/photo/silver.png')}}" width="50px;" height="50px;" style="float:right; margin-right:-10px;">
          @elseif($comments->user->posting->where('status','=',1)->count() >= 3 && $comments->user->role == 1)
<img src="{{asset('/photo/bronze.png')}}" width="50px;" height="50px;" style="float:right; margin-right:-10px;">
@endif

          @if($comments->user->role == 2)<i class="fa fa-check" aria-hidden="true" style="color:#44bd32;"></i>@endif
      </a><br>
      <i class="fa fa-clock-o text-muted" aria-hidden="true" style="margin-left:40px; font-size:1rem;"></i><a class="text-muted" style="font-size:1rem;">
      {{Date::parse($comments->created_at)->ago()}}</a><br> 
      <a class="card-text" style="margin-left:40px;">{{$comments->subject}}</a>
      @if($comments->cekowner())<br>
      <table class="float-right" style="margin-top:5px;">
        <tr>
          <td> 
            <a href="{{url("/jelajah-comment/{$comments->id}/edit")}}">
              <button type="button" class="btn btn-outline-dark btn-sm" style="margin-right:5px;">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i> edit
              </button>
            </a>
          </td>
          <td>
            <form action="{{url("/jelajah-comment/{$comments->id}")}}" method="POST">
            {{ method_field('DELETE')   }} 
            {{ csrf_field()   }}           
              <button style="margin-top:px;" type="submit" class="btn btn-outline-danger btn-sm">
                <i class="fa fa-trash-o" aria-hidden="true"></i> hapus
              </button>
            </form>
          </td>
        </tr>
      </table>
      @endif
    </div>
  </div>
</div>
@endforeach
@endif
<div data-aos="zoom-in-up" data-aos-once="true" class="pagination justify-content-center" style="margin-top:20px;">{{$comment->links()}}</div>

@if(count($comment) == 0)
<div class="container" style="margin-top:20px;">
  <div data-aos="zoom-in-up" data-aos-once="true" class="jumbotron">
    <h3 class="display-8 text-center" style="letter-spacing:2px;">Belum ada komentar</h3>
  </div>
</div>
@endif
<!-- KOMENTAR -->

@guest
<div data-aos="zoom-in-up" data-aos-once="true" class="container">
    <a href="{{url('/login')}}" style="text-decoration:none;"><button class="container-fluid btn btn-outline-primary btn-block" name="submit" style="margin-top:15px;">Login Untuk Komentar</button></a>
</div>
<div data-aos="zoom-in-up" data-aos-once="true" class="container">
    <a href="{{url('/jelajah')}}" style="text-decoration:none;"><button class="container-fluid btn btn-outline-primary btn-block" name="submit" style="margin-top:15px;">Balik Ke Jelajah</button></a>
</div>
@endguest

@if(!Auth::guest())
<div data-aos="zoom-in-up" data-aos-once="true" class="container">
<form action="{{url("/jelajah-comment/{$posting->id}")}}" method="POST">
       {{ csrf_field()   }}
  <textarea class="col-12" id="exampleFormControlTextarea1" name="comment" rows="10" placeholder="tulis komentar anda disini..." style="margin-top:20px; padding-top:10px; border:solid 2px #304D6D;">{{old('comment')}}</textarea>

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

</div>
  <div data-aos="zoom-in-up" data-aos-once="true" class="container">
    <button class="container-fluid btn btn-outline-primary btn-block" name="submit" style="margin-top:15px;">Kirim Komentar</button>
  </div>
</form>
@endif


@endif
</div>  
</div>
<script>
function confirmDelete() {
var result = 'Kamu yakin ingin menghapusnya ?';
if (confirm(result)) {
        return true;
    } else {
        return false;
    }
}
</script>
<script src="{{asset('js/jquery-3.1.1.min.js')}}"></script>
<script src="{{ asset('js/posting.js') }}"></script>
@endsection

