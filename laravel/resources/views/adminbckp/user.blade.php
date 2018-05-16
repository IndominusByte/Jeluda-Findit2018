@extends('admin.admin')
@section('content')
<div>
  <div class="col" style="margin-top:40px;">
    <p><h2 style="text-align:center; font-family: system-ui;">Jumlah User</h2></p>
    <h2 class="text-center" style= "margin-bottom:40px; border-bottom: solid 2px; color:#304D6D; width:150px; text-align:center; margin-left: auto; margin-right: auto;"></h2>
  </div>
</div>

<div class="container-fluid border" style="padding-top:15px;">
  <div class="row col-12" style="margin-top:5px;">
    <form action="{{url('/admin/user')}}" method="get" style="margin-bottom:5px;">
      <input class="form-control py-2 border-right-0 border" placeholder="Cari Nama..." type="text" name="search" id="example-search-input">
    </form>
	<span class="input-group-append" style="margin-right:15px; margin-bottom:5px;">
      <div class="input-group-text bg-transparent"><i class="fa fa-search"></i></div>
    </span>
    <div class="dropdown">
      <button class="btn btn-info dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Filter Berdasarkan
      </button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="{{url("/admin/user/filter")}}/{{str_slug('belum dikonfirmasi')}}">Belum Dikonfirmasi</a>
        <a class="dropdown-item" href="{{url("/admin/user/filter")}}/{{str_slug('kontribusi terbanyak')}}">Kontribusi Terbanyak</a>
      </div>
    </div>
  </div>

  <div class="row">
    @foreach($user as $users) 
    <div class="col-lg-4 col-md-6 col-sm-12">
      <div class="card" style="margin-top:15px;">
        <div class="card-body">
          <a href="{{url("/profile/{$users->id}")}}" style="text-decoration:none;"> 
            <img src="{{asset("storage/avatar/{$users->avatar}")}}" class="rounded-circle" width="50px;" height="50px;" style="object-fit:cover;">        
            <a href="{{url("/profile/{$users->id}")}}" class="card-title" style="margin-left:5px; color:#000; font-size:1.3rem;">{{$users->name}}</a>
            <div class="btn-group float-right">
              @if($users->id !== Auth::user()->id)
              <button type="button" class="btn btn-sm float-right dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              </button>
              @endif
              <div class="dropdown-menu dropdown-menu-right">
                @if($users->role !== 2 && $users->status == 1)
                <a class="dropdown-item" href="{{url("/admin/user/{$users->id}")}}">Admin</a>
                @endif
                @if($users->role !== 1)
                <a class="dropdown-item" href="{{url("/admin/user-biasa/{$users->id}")}}">User</a>
                @endif
                @if($users->role !== 2)
                <a class="dropdown-item" href="{{url("/admin/user-hapus/{$users->id}")}}">Hapus</a>
                @endif
              </div>
            </div>
            <br>
            <p class="card-text" style="margin-top:10px;">
              <i class="fa fa-envelope-o" aria-hidden="true"></i> {{$users->email}}<br>
              Kiriman budaya : {{$users->posting_count}} | Total komentar : {{$users->comment_count}} 
              @if($users->status == 0)
              <br> Status akun: <span class="text-danger">Belum dikonfirmasi </span>
              @else
              <br> Status akun: <span class="text-primary">Sudah dikonfirmasi </span>
              @endif
            </p>  
          </div>
        </div>
      </div>
      @endforeach
    </div>
    <div class="pagination justify-content-center" style="margin-top:20px;">{{$user->links()}}</div>
  </div>
</div>
@endsection
