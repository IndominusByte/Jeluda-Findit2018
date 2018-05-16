@extends('layouts.app')
@section('content')
<link href="{{asset('css/jelajah-comment.css')}}" rel="stylesheet">

<div class="kusner">
  <div class="align-center text-center">
    @if(Auth::check())
    <h1 class="text-center" style="z-index:1000; color:#fff;">Kamu sedang mengedit komentar kamu di kebudayaan <br> {{$comment->posting->kabupaten->nama}}</h1>
    @else
    <h1 class="text-center" style="z-index:1000; color:#fff;">Selamat menjelajah budaya kawan</h1>
    @endif
  </div>
</div>
</div>

<div class="container" style="margin-top:50px;">
  <form action="{{url("/jelajah-comment/{$comment->id}")}}" method="POST">
    {{ method_field('PUT')   }} 
    {{ csrf_field()    }}       
    <textarea class="col-12" name="edit_comment" rows="10" placeholder="tulis komentar anda disini..." style="margin-top:20px; padding-top:10px; border:solid 2px #304D6D; background-color:transparent;">{{$comment->subject}}</textarea>
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
  <div class="container">
    <button class="container-fluid btn btn-outline-primary btn-block" name="submit" style="margin-top:15px;">Edit Komentar</button>
  </div>
</form>
@endsection
