 <div id="content" style="padding:20px;"> 
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-3 col-md-4 col-sm-12">
          <div class="card" style="margin-top:10px;">
            <div class="card-header bg-success text-white"><i class="fa fa-check fa-4x" aria-hidden="true"></i>
              <span class="pull-right" style="font-size:1.8rem;"> {{$sudah->count()}}</span>
              <p class="text-right" style="margin-top:-20px; font-size:.9rem; margin-bottom:-2px;">Jumlah Budaya</p>
            </div>
          </div>
        </div>
       
        <div class="col-lg-3 col-md-4 col-sm-12">
          <div class="card" style="margin-top:10px;">
            <div class="card-header bg-danger text-white">
              <i class="fa fa-pencil-square-o fa-4x" aria-hidden="true"></i>
              <span class="pull-right" style="font-size:1.8rem;"> {{$belum->count()}}</span>
              <p class="text-right" style="margin-top:-20px; font-size:.9rem; margin-bottom:-2px;">Belum di konfirmasi</p>
            </div>
          </div>
        </div>
        
        <div class="col-lg-3 col-md-4 col-sm-12">
          <div class="card" style="margin-top:10px;">
            <div class="card-header bg-primary text-white"><i class="fa fa-users fa-4x" aria-hidden="true"></i>
              <span class="pull-right" style="font-size:1.8rem;"> {{$userc->count()}}</span>
              <p class="text-right" style="margin-top:-20px; font-size:.9rem; margin-bottom:-2px;">Jumlah User</p>
            </div>
          </div>
        </div>
            
        <div class="col-lg-3 col-md-4 col-sm-12">
          <div class="card" style="margin-top:10px;">
            <div class="card-header bg-secondary text-white"><i class="fa fa-comments-o fa-4x" aria-hidden="true"></i>
              <span class="pull-right" style="font-size:1.8rem;"> {{$commentc->count()}}</span>
              <p class="text-right" style="margin-top:-20px; font-size:.9rem; margin-bottom:-2px;">Jumlah komentar</p>
            </div>
          </div>
        </div>

