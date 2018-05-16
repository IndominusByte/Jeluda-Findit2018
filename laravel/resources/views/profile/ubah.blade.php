 @extends('layouts.app')
 @section('content')
<link href="{{asset('css/profile.css')}}" rel="stylesheet"> 

<div class="col" style="margin-top:80px;">
  <p><h2 data-aos="zoom-in" data-aos-once="true" style="text-align:center; font-family: system-ui; margin:40px 0 0 0;">Ubah Profile</h2></p>
  <h2 class="text-center" style= "margin-bottom:60px; border-bottom: solid 2px; color:#304D6D; width:250px; text-align:center; margin-left: auto; margin-right: auto;"></h2>  
</div>

<div class="col-12" style="text-align:center;">
  <p>
    <div data-aos="fade-up" data-aos-once="true" class="card-img-wrap" style="margin:0 auto;">
      <img src="{{asset("/storage/avatar/{$user->avatar}")}}" class="rounded-circle" style="object-fit:cover;">
    </div>
  </p>
</div>

@if($user->id == Auth::user()->id)
<form action="{{url("/ubah-profile/{$user->id}")}}" method="POST" enctype="multipart/form-data">
  {{ method_field('PUT')  }}
  {{ csrf_field()   }}
  <div class="col-12" style="text-align:center;">
    <label data-aos="fade-up" data-aos-once="true" class="btn btn-default btn-file">
      Ganti Foto<input type="file" name="file_avatar" style="display:none;">
    </label>
  </div>
  <div class="container">
    
@if ($errors->any())
    <div class="alert alert-danger">
      <ul>
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
      </ul>
    </div>
@endif

<div data-aos="fade-up" data-aos-once="true" class="row" style=" margin-top:50px;">
      <div class="col-lg-6 col-sm-12" style="color:#304D6D;">
        <label for="exampleInputName">Nama</label>
        <input type="name" class="form-control" name="name" value="{{$user->name}}" style="margin-bottom:20px;">    
        <label for="exampleInputEmail1">Alamat Email</label>
        <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->email}}" style="margin-bottom:20px;">
      </div>
      <div class="col-lg-6 col-sm-12" style="color:#304D6D;">
        <label for="exampleInputPassword1">Atur ulang sandi</label>
        <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Sandi baru" style="margin-bottom:20px;">
        <label for="exampleInputPassword1">Konfirmasi sandi</label>
        <input type="password" class="form-control" name="password_confirmation" id="exampleInputPassword1" placeholder="Ulang sandi baru" style="margin-bottom:20px;">
      </div>
    </div>
    <button data-aos="fade-up" data-aos-once="true" type="submit" class="btn btn-primary btn-block btn-lg">Simpan</button>
  </div>
</form>
@endif
@endsection
