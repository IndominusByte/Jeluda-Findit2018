@extends('layouts.app')
@section('content')

<div class="col" style="margin-top:100px;">
  <p><h2 data-aos="zoom-in" data-aos-once="true" style="text-align:center; font-family: system-ui; margin:40px 0 0 0;">Notifikasi</h2></p>
  <h2 class="text-center" style= "margin-bottom:60px; border-bottom: solid 2px; color:#304D6D; width:250px; text-align:center; margin-left: auto; margin-right: auto;"></h2>  
</div>

@if(count($notification) == 0)
<div class="container" style="margin-top:20px; margin-bottom:12%;">
  <div data-aos="zoom-in-up" data-aos-once="true" class="jumbotron">
    <h3 class="display-8 text-center" style="letter-spacing:2px;">Notifikasi anda kosong <i class="fa fa-trash-o" aria-hidden="true"></i></h3>
  </div>
</div>
@else
<div class="container" style="margin-bottom:10%;">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="row">Komentar dan Like</th>
      <td align="right"><b>Pilih Semua</b> &nbsp; <input type="checkbox" id='checkall'></td>
    </tr>
  </thead>
  <tbody>
    @foreach($notification as $notif)
    <tr>
      <th scope="row">
       <a href="{{url("/jelajah/{$notif->posting->slug}")}}">
          {!!$notif->subject.' '.'kabupaten '.$notif->posting->kabupaten->nama!!}
      </a>
      </th>
      <td>
       <form action="{{url("/notif")}}" method="POST">                                   
     <input style="float:right;" class='checkbox' type="checkbox" name="checked[]" value="{{$notif->id}}">
 {{ csrf_field() }}                                                                      
      </td>
    </tr>
@endforeach
  </tbody>
</table>
<br>
<button type="submit" class="btn btn-outline-danger btn-block"><i class="fa fa-trash-o" aria-hidden="true"></i> Hapus</button>
</form>
</div>
@endif

@php
    $notif_model::where('user_id',$user->id)->where('seen',0)->update(['seen' => 1]);
@endphp

<script type='text/javascript'>
 $(document).ready(function(){
   // Check or Uncheck All checkboxes
   $("#checkall").change(function(){
     var checked = $(this).is(':checked');
     if(checked){
       $(".checkbox").each(function(){
         $(this).prop("checked",true);
       });
     }else{
       $(".checkbox").each(function(){
         $(this).prop("checked",false);
       });
     }
   });
 
  // Changing state of CheckAll checkbox 
  $(".checkbox").click(function(){
 
    if($(".checkbox").length == $(".checkbox:checked").length) {
      $("#checkall").prop("checked", true);
    } else {
      $("#checkall").removeAttr("checked");
    }

  });
});
</script>

@endsection
