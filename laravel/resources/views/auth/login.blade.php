@extends('layouts.app')
<style>
.latar {
height:100%;   
background-image: url('/photo/banerlogin.jpg');
background-size: cover;
padding-top:10%;
margin-top:-1.5rem;
font-family:system-ui;
margin-bottom:-100px;
}

@media (min-width: 375px) {
  .latar{
    padding-top:70px;
  }
}

@media (min-width: 576px) {
 .latar{
    padding-top:75px;
  }
}

@media (min-width: 768px) {
  .latar{
    padding-top:80px;
  }
}


@media (min-width: 992px) {
  .latar{
    padding-top:90px;
  }
}

@media (min-width: 1200px) {
  .latar{
    padding-top:110px;
  }
}
@media (min-width: 1366px) {
  .latar{
    padding-top:120px;
  }
}
@media (min-width: 1920px) {
  .latar{
    padding-top:240px;
  }
}
</style>
@section('content')
<div class="latar">
<div class="container position-static">  
    <div class="row justify-content-center">      
        <div class="col-md-8">                    
            <div class="card" style="background-color:rgba(156, 166, 183,0.4);">                    
                <div class="card-header text-center"><i class="fa fa-user-circle-o fa-3x text-white"aria-hidden="true"></i><br>
					<span style="font-size:1.5rem;" class="text-white">Masuk</span>
						</div>

<div class="card-body">
    <form method="POST" action="{{ route('login')  }}">     
         @csrf                                              

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-envelope" aria-hidden="true"></i></span>
  </div>
  <input id="email" type="email" placeholder="Alamat Email" class="form-control{{ $errors->has('email') ? ' is-invalid' : ''  }}" name="email" value="{{ old('email')  }}" required autofocus>
 @if ($errors->has('email'))                                                        
     <span class="invalid-feedback" style="color:#fff; font-family:system-ui;" > 
         <strong>{{ $errors->first('email') }}</strong>                             
     </span>                                                                        
 @endif                                                                             

</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-key" style="margin-left:1px;" aria-hidden="true"></i></span>
  </div>
  <input id="password" type="password" placeholder="Kata Sandi" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
  @if ($errors->has('password'))                            
      <span class="invalid-feedback" style="color:#fff; font-family:system-ui;">                       
          <strong>{{ $errors->first('password') }}</strong> 
      </span>                                               
  @endif                                                    
</div>

<div class="custom-control custom-checkbox" style="margin-left:3px; margin-bottom:10px;">
  <input type="checkbox" class="custom-control-input" id="customCheck1" name="remember" {{ old('remember') ? 'checked' : ''  }}>
  <label class="custom-control-label text-white" for="customCheck1">Ingat Saya</label>
</div>

<button type="submit" class="btn btn-primary btn-block"><b>Masuk</b></button>

<a class="btn btn-link hover_effect" style="color:#fff; margin-top:10px; margin-bottom:-10px; text-decoration:none; font-family:system-ui;" href="{{ route('password.request')  }}">Lupa Password?
</a>
</div>
</form>

            	</div>
        	</div>
    	</div>
	</div>
</div>
@endsection
