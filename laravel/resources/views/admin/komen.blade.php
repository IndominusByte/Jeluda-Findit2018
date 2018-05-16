@extends('admin.admin')
@section('content')
<div> 
  <div class="col" style="margin-top:40px;">
    <p><h2 style="text-align:center; font-family: system-ui;">Kumpulan Komentar</h2></p>
    <h2 class="text-center" style= "margin-bottom:40px; border-bottom: solid 2px; color:#304D6D; width:150px; text-align:center; margin-left: auto; margin-right: auto;"></h2>
  </div>
</div>

<div class="container-fluid border" style="padding-top:15px;">
  <div class="row col-12" style="margin-top:5px;">
    <form action="{{url('/admin/komentar')}}" method="get" style="margin-bottom:5px;">
      <input class="form-control py-2 border-right-0 border" placeholder="Cari Komentar..." type="text" name="search" id="example-search-input">
    </form>
	<span class="input-group-append" style="margin-right:15px; margin-bottom:5px;">
      <div class="input-group-text bg-transparent"><i class="fa fa-search"></i></div>
    </span>
    <div class="dropdown">
      <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Filter Berdasarkan
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="{{url("/admin/komentar/filter")}}/{{str_slug('komentar jadul')}}">Komentar Jadul</a>
      </div>
    </div>
  </div><!-- ROW COL-12 -->

  <div class="row">
    @foreach($comment as $comments)
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="margin-top:15px;">
        <div class="card-body">
          <a href="{{url("/profile/{$comments->user->id}")}}" style="text-decoration:none;"> 
            <img src="{{asset("storage/avatar/{$comments->user->avatar}")}}" class="rounded-circle" width="50px;" height="50px;" style="object-fit:cover;">        
              <a href="{{url("/profile/{$comments->user->id}")}}" class="card-title" style="margin-left:5px; font-size:1.3rem; color:#000;">{{$comments->user->name}}</a>
<div class="btn-group float-right">
              <button type="button" class="btn btn-sm float-right dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              </button>
              <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="{{url("/admin/komentar-hapus/{$comments->id}")}}">Hapus</a>
              </div>
            </div>
          </a>
          <p class="card-text" style="margin-top:10px;">
            <a href="{{url("/jelajah/{$comments->posting->slug}")}}" style="text-decoration:none;">Provinsi {{$comments->posting->kabupaten->provinsi->nama}} | Kabupaten {{$comments->posting->kabupaten->nama}}</a><br> 
              Komentar : {{$comments->subject}}<br>
            <i class="fa fa-clock-o text-muted" aria-hidden="true" style="font-size:0.9rem;"></i>
            <a class="text-muted" style="font-size:0.9rem;"> {{Date::parse($comments->created_at)->ago()}}</a>
          </p>  
        </div>
      </div>
    </div>
    @endforeach
  </div><!-- ROW -->
  <div class="pagination justify-content-center" style="margin-top:20px;">{{$comment->links()}}</div>
</div><!-- container fluid -->
</div>
@endsection
