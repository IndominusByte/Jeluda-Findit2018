<div>
  <div class="col" style="margin-top:40px;">
    <p><h2 style="text-align:center; font-family: system-ui;">Posting yang belum dikonfirmasi</h2></p>
    <h2 class="text-center" style= "margin-bottom:40px; border-bottom: solid 2px; color:#304D6D; width:150px; text-align:center; margin-left: auto; margin-right: auto;"></h2>  
  </div>
</div>
  <div class="container-fluid" style="margin-bottom:10px;"> 
    <div class="row col-12" style="margin-left:5px;">
      @foreach($posting as $postingan)
      @if($postingan->status == 0)
      <div class="col-lg-3 col-md-4 col-sm-6" style="padding:10px;">
        <a style="text-decoration:none; color:black" href="{{url("/jelajah/{$postingan->slug}")}}">        
          <div class="card box" style="height:100%; border:solid 1px rgba(48, 77, 109, 0.6);">
            <img class="card-img-top" src="{{asset("storage/posting/{$postingan->foto}")}}" alt="Card image cap" style="width:100%; height:290px; object-fit:cover;">
            <div class="card-body">
              <h6 class="card-title">
                <b>Provinsi {{$postingan->kabupaten->provinsi->nama}} | Kabupaten {{$postingan->kabupaten->nama}} </b>
              </h6>
              <p class="card-text" style="font-size:1rem; margin-bottom:0px;">
                {{$postingan->deskripsi}}
              </p>
            </div>
            <div class="card-footer" style="position:initial; border-top:solid 1px rgba(48, 77, 109, 0.6);">
              <i class="fa fa-clock-o" aria-hidden="true">
                <span style="margin-top:4px; margin-bottom:-1px; font-family:system-ui;"> 
                    {{Date::parse($postingan->created_at)->ago()}}
                </span>
              </i>
              <p class="text-muted" style="float:right; font-size:.9rem; margin-top:4px; margin-bottom:-1px;">
                {{$postingan->comment->count()}}  <i class="fa fa-comments-o" aria-hidden="true"></i>
              </p>        
            </div>
          </div>
		</a>
      </div>
      @endif
      @endforeach
    </div>
  </div>

  <div class="col-12">
    <div class="d-flex justify-content-center">
      @if(count($belum) == 0)
      <div class="container" style="margin-top:20px;">
        <div class="jumbotron">
          <h3 class="display-8 text-center" style="letter-spacing:2px;">Semua budaya telah dikonfirmasi</h3>
        </div>
      </div>
      @endif
    </div>
  </div>   
