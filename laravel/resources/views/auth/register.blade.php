@extends('layouts.app')
<style>
.latar {
height:100%;    
background-image: url('/photo/bannerdaftar.jpg');
background-size: cover;
padding-top:10%;
margin-top:-1.5rem;
font-family:system-ui;
margin-bottom:-120px;
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

<div class="container">  
    <div class="row justify-content-center">      
        <div class="col-md-8">                    
            <div class="card" style="background-color:rgba(156, 166, 183,0.4);">                    
                <div class="card-header text-center"><i class="fa fa-user-circle-o fa-3x" style="color:white;" aria-hidden="true"></i><br>
					<span class="text-white" style="font-size:1.5rem;">Daftar Akun</span>
						</div>

<div class="card-body">
    <form method="POST" action="{{ route('register')  }}">  
        @csrf                                              
<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-user" style="margin-left:2px;"aria-hidden="true"></i></span>
  </div>
  <input id="name" type="text" placeholder="Username" class="form-control{{ $errors->has('name') ? ' is-invalid' : ''  }}" name="name" value="{{ old('name')  }}" required autofocus>
@if ($errors->has('name'))                                                          
    <span class="invalid-feedback" style="color:#304D6D; font-family:system-ui;" >  
        <strong>{{ $errors->first('name') }}</strong>                               
    </span>                                                                         
@endif                                                                              
    </div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-envelope" aria-hidden="true"></i></span>
  </div>
  <input id="email" type="email" placeholder="Alamat Email" class="form-control{{ $errors->has('email') ? ' is-invalid' : ''  }}" name="email" value="{{ old('email')  }}" required>
 @if ($errors->has('email'))                                                        
     <span class="invalid-feedback" style="color:#304D6D; font-family:system-ui;" > 
         <strong>{{ $errors->first('email') }}</strong>                             
     </span>                                                                        
 @endif                                                                             

</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-unlock-alt" style="margin-left:3px;" aria-hidden="true"></i></span>
  </div>
  <input id="password" type="password" placeholder="Kata Sandi" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
  @if ($errors->has('password'))                            
      <span class="invalid-feedback" style="color:#304D6D; font-family:system-ui;">                       
          <strong>{{ $errors->first('password') }}</strong> 
      </span>                                               
  @endif                                                    
</div>

<div class="input-group mb-3">
  <div class="input-group-prepend">
      <span class="input-group-text" style="width:41px;" id="basic-addon1"><i class="fa fa-unlock" style="margin-left:2px;" aria-hidden="true"></i></span>
  </div>
  <input id="password-confirm" placeholder="Ulangi Sandi" type="password" class="form-control" name="password_confirmation" required>
</div>
<button type="submit" class="btn btn-primary btn-block"><b>Daftar</b></button>
</div>
</form>
            	</div>
        	</div>
    	</div>
	</div>
</div>
</br></br>
@endsection
