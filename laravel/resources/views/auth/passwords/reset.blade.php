@extends('layouts.app')
<link href="{{asset('css/reset.blade.css')}}" rel="stylesheet">

@section('content')

<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" style="margin-top:-30px;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="{{asset('photo/bannereset.jpg')}}" alt="First slide">
      <div class="carousel-caption">           
	<h1 class="img-txt" style="z-index:1000; color:#fff;margin-bottom:0px;">Lain kali, passwordnya jangan dilupakan ya <i class="fa fa-smile-o" aria-hidden="true"></i></h1>                                                                      
      </div>                                                                                      
    </div>
  </div>
</div>


<div class="container" style="margin-top:60px;">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="background-color:#304D6D; color:#fff; font-family:system-ui;">{{ __('Reset Password') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('password.request') }}">
                        @csrf

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group row">
                            <label for="email" style="color:#304D6D; font-family:system-ui;" class="col-md-4 col-form-label text-md-right">{{ __('Alamat Email') }}</label>

                            <div class="col-md-6" style="color:#304D6D; font-family:system-ui;">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $email or old('email') }}" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" style="color:#304D6D; font-family:system-ui;" class="col-md-4 col-form-label text-md-right">{{ __('Kata Sandi') }}</label>

                            <div class="col-md-6" style="color:#304D6D; font-family:system-ui;">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" style="color:#304D6D; font-family:system-ui;" class="col-md-4 col-form-label text-md-right">{{ __('Ulangi Sandi') }}</label>
                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control{{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}" name="password_confirmation" required>

                                @if ($errors->has('password_confirmation'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password_confirmation') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary" style="font-family:system-ui;">
                                    {{ __('Reset Password') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
