@extends('layouts.app')
<link href="{{asset('css/email.blade.css')}}" rel="stylesheet">

@section('content')
<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" style="margin-top:-30px;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="{{asset('photo/resetbanner.jpg')}}" alt="First slide">
      <div class="carousel-caption">           
	<h1 class="img-txt" style="z-index:1000; color:#fff;margin-bottom:0px;">Masukkan email untuk mengatur ulang password</h1>                                                                      
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
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="POST" action="{{ route('password.email') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="email" style="color:#304D6D; font-family:system-ui;" class="col-md-4 col-form-label text-md-right">{{ __('Alamat Email') }}</label>

                            <div class="col-md-6" style="color:#304D6D; font-family:system-ui;">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary" style="font-family:system-ui;">
                                    {{ __('Kirim Password Reset Link') }}
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
