@extends('admin.admin')
@section('content')
<div class="container-fluid" style="margin-top:75px; margin-bottom:75px;">
  <div class="row">
    <div class="col">
      {!! $chart->render() !!}
    </div>
  </div>
</div>                 
{!! $chart->script() !!}
@include('admin.posting1')
@endsection
