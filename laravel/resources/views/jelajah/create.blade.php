@extends('layouts.app')
@section('content')
<div class="col" style="margin-top:150px;">
  <p><h2 style="text-align:center; font-family: system-ui; margin:40px 0 0 0;">Tambahkan Budaya Baru</h2></p>
  <h2 class="text-center" style= "margin-bottom:10px; border-bottom: solid 2px; color:#304D6D; width:30%; text-align:center; margin-left: auto; margin-right: auto;"></h2>  
</div>

<div class="container" style="margin-top:100px;">
  <form method="POST" action="{{url('/jelajah')}}" enctype="multipart/form-data">
    {{ csrf_field()  }}
    <div class="form-group">
      <label for="exampleFormControlSelect1">Deskripsi singkat budaya anda, 
        <strong class="alert-info">Note : Deskripsi maksimal 140 karakter</strong>
      </label>
      <textarea class="form-control {{ $errors->has('deskripsi_singkat') ? ' is-invalid' : ''  }}" onkeyup="countChar(this)" name="deskripsi_singkat" id="exampleFormControlTextarea1" rows="5">{{old('deskripsi_singkat')}}</textarea>
      <p class="text-center" style="padding-top:5px;"><strong id="charNum"></strong></p>
      @if ($errors->has('deskripsi_singkat'))
      <span class="invalid-feedback">
        <strong>{{ $errors->first('deskripsi_singkat') }}</strong>
      </span>
      @endif
      <br>
      <label for="exampleFormControlSelect1">Kabupaten</label>
      <select class="form-control" id="exampleFormControlSelect1" name="kabupaten">
        @foreach ($provinsi as $provinsis)
        <optgroup label="{{$provinsis->nama}}">
          @foreach ($provinsis->kabupaten as $kabupaten)
          <option value="{{$kabupaten->id}}">{{$kabupaten->nama}}</option>
          @endforeach
        </optgroup>
        @endforeach
      </select>
      <label for="exampleFormControlInput1" style="margin-top:15px;">Foto Sampul</label>
      <div class="form-group" style="margin-top:5px;">
        <input type="file" name="files[]" required> 
      </div>
    </div><!-- form group -->
    <ul class="list-group">                                                                      
      @if ($errors->has('files.*'))                                                                
      @if ($errors->has('files.0'))                                                            
      <li class="list-group-item list-group-item-danger">{{ $errors->first('files.0')  }}</li> 
	  @endif
      @endif                                                                                       
    </ul>                                                                                        
    <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Makanan Tradisional</h4></p>  
    <div class="form-group">
      <label for="exampleFormControlInput1">Nama Makanan</label>
      <input type="text" name="nama_makanan_tradisional" class="form-control {{ $errors->has('nama_makanan_tradisional') ? ' is-invalid' : ''   }}" id="exampleFormControlInput1" value="{{old('nama_makanan_tradisional')}}">
      @if ($errors->has('nama_makanan_tradisional'))                           
      <span class="invalid-feedback">                       
        <strong>{{ $errors->first('nama_makanan_tradisional') }}</strong>
      </span>                                               
      @endif                                                      
    </div>
    <div class="form-group">
      <label for="exampleFormControlTextarea1">Deskripsi Makanan</label>
      <textarea id="area1" class="form-control {{ $errors->has('deskripsi_makanan_tradisional') ? ' is-invalid' : '' }}" name="deskripsi_makanan_tradisional" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_makanan_tradisional')}}</textarea>
      @if ($errors->has('deskripsi_makanan_tradisional'))                            
      <span class="invalid-feedback">                           
        <strong>{{ $errors->first('deskripsi_makanan_tradisional') }}</strong> 
      </span>                                                   
      @endif                                                          
    </div><!-- form group -->
    <label for="exampleFormControlTextarea1">Foto Makanan</label>  
    <div class="form-group">
      <input type="file" name="files[]" style="margin-bottom:5px;" required> 
      <input type="file" name="files[]" style="margin-bottom:5px;" required>
      <input type="file" name="files[]" style="margin-bottom:5px;" required>
    </div>
<ul class="list-group">
@if ($errors->has('files.*'))
    @if ($errors->has('files.1'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.1')  }}</li>
    @endif
    @if ($errors->has('files.2'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.2')  }}</li>
    @endif
    @if ($errors->has('files.3'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.3')  }}</li>
    @endif
@endif
</ul>

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Rumah Adat Tradisional</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Rumah Adat</label>
    <input type="text" name="nama_rumah_adat_tradisional" class="form-control {{ $errors->has('nama_rumah_adat_tradisional') ? ' is-invalid' : ''}}" id="exampleFormControlInput1" value="{{old('nama_rumah_adat_tradisional')}}">
@if ($errors->has('nama_rumah_adat_tradisional'))                            
    <span class="invalid-feedback">                           
        <strong>{{ $errors->first('nama_rumah_adat_tradisional') }}</strong> 
    </span>                                                   
@endif                                                        
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Rumah Adat</label>
    <textarea id="area2" class="form-control {{ $errors->has('deskripsi_rumah_adat_tradisional') ? ' is-invalid' : ''}}" name="deskripsi_rumah_adat_tradisional" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_rumah_adat_tradisional')}}</textarea>
@if ($errors->has('deskripsi_rumah_adat_tradisional'))                            
    <span class="invalid-feedback">                           
        <strong>{{ $errors->first('deskripsi_rumah_adat_tradisional') }}</strong> 
    </span>                                                   
@endif                                                        
  </div>
  <label for="exampleFormControlTextarea1">Foto Rumah Adat</label>  
  <div class="form-group">
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
  </div> 
<ul class="list-group">
@if ($errors->has('files.*'))
    @if ($errors->has('files.4'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.4')  }}</li>
    @endif
    @if ($errors->has('files.5'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.5')  }}</li>
    @endif
    @if ($errors->has('files.6'))
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.6')  }}</li>
    @endif
@endif
</ul>

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Tarian Tradisional</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Tarian</label>
    <input type="text" name="nama_tarian_tradisional" class="form-control {{ $errors->has('nama_tarian_tradisional') ? ' is-invalid' : '' }}" id="exampleFormControlInput1" value="{{old('nama_tarian_tradisional')}}">
@if ($errors->has('nama_tarian_tradisional'))                           
    <span class="invalid-feedback">                                              
        <strong>{{ $errors->first('nama_tarian_tradisional') }}</strong>
    </span>                                                                      
@endif                                                                           
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Tarian</label>
    <textarea id="area3" class="form-control {{ $errors->has('deskripsi_tarian_tradisional') ? ' is-invalid' : '' }}" name="deskripsi_tarian_tradisional" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_tarian_tradisional')}}</textarea>
@if ($errors->has('deskripsi_tarian_tradisional'))                           
    <span class="invalid-feedback">                                     
        <strong>{{ $errors->first('deskripsi_tarian_tradisional') }}</strong>
    </span>                                                             
@endif                                                                  
  </div>
  <label for="exampleFormControlTextarea1">Video Tarian - Youtube Url</label>  
  <div class="form-group">
    <input type="text" name="video_tarian_tradisional" class="form-control {{ $errors->has('video_tarian_tradisional') ? ' is-invalid' : '' }}" id="exampleFormControlInput1" value="{{old('video_tarian_tradisional')}}">
@if ($errors->has('video_tarian_tradisional'))                             
    <span class="invalid-feedback">                                            
        <strong>{{ $errors->first('video_tarian_tradisional') }}</strong>  
    </span>                                                                    
@endif                                                                         
  </div> 

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Senjata Tradisional</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Senjata</label>
    <input type="text" name="nama_senjata_tradisional" class="form-control {{ $errors->has('nama_senjata_tradisional') ? ' is-invalid' : ''  }}" id="exampleFormControlInput1" value="{{old('nama_senjata_tradisional')}}">
@if ($errors->has('nama_senjata_tradisional'))    
    <span class="invalid-feedback">                                      
        <strong>{{ $errors->first('nama_senjata_tradisional') }}</strong>
    </span>                                                              
@endif                                                                   
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Senjata</label>
    <textarea id="area4" class="form-control {{ $errors->has('deskripsi_senjata_tradisional') ? ' is-invalid' : ''   }}" name="deskripsi_senjata_tradisional" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_senjata_tradisional')}}</textarea>
@if ($errors->has('deskripsi_senjata_tradisional'))                           
    <span class="invalid-feedback">                                      
        <strong>{{ $errors->first('deskripsi_senjata_tradisional') }}</strong>
    </span>                                                              
@endif                                                                   
  </div>
  <label for="exampleFormControlTextarea1">Foto Senjata</label>  
  <div class="form-group">
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
  </div>
<ul class="list-group">                                                                     
@if ($errors->has('files.*'))                                                               
    @if ($errors->has('files.7'))                                                           
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.7')  }}</li>
    @endif                                                                                  
    @if ($errors->has('files.8'))                                                           
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.8')  }}</li>
    @endif                                                                                  
    @if ($errors->has('files.9'))                                                           
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.9')  }}</li>
    @endif                                                                                  
@endif                                                                                      
</ul>                                                                                       

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Lokasi</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1" class="col-6 text-center">Latitude</label><label for="exampleFormControlInput1" class="col-6 text-center">Longtitude</label>
    <div class="row">
    <input type="text" name="latitude" class="form-control col-6 {{ $errors->has('latitude') ? ' is-invalid' : ''}}" id="exampleFormControlInput1" value="{{old('latitude')}}"><input type="text" name="longitude" class="form-control col-6 {{ $errors->has('longitude') ? ' is-invalid' : '' }}" id="exampleFormControlInput1" value="{{old('longitude')}}">
@if ($errors->has('latitude'))                             
    <span class="invalid-feedback col-6 text-center">                                             
        <strong>{{ $errors->first('latitude') }}</strong>  
    </span>                                                                     
@endif                                                                          
@if ($errors->has('longitude'))                     
    <span class="invalid-feedback col-6 text-center">                       
        <strong>{{ $errors->first('longitude') }}</strong>
    </span>                                               
@endif                                                    
 <a href="https://www.latlong.net/" target="_blank" class="text-center" style="margin:0 auto; margin-top:5px;">Cari lokasi?</a> 
</div>
  </div>

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Alat Musik Tradisional</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Alat Musik</label>
    <input type="text" name="nama_alat_musik_tradisional" class="form-control {{ $errors->has('nama_alat_musik_tradisional') ? ' is-invalid' : ''}}" id="exampleFormControlInput1" value="{{old('nama_alat_musik_tradisional')}}">
@if ($errors->has('nama_alat_musik_tradisional'))                            
    <span class="invalid-feedback">      
        <strong>{{ $errors->first('nama_alat_musik_tradisional') }}</strong> 
    </span>                                                
@endif                                                     
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Alat Musik</label>
    <textarea id="area5" class="form-control {{ $errors->has('deskripsi_alat_musik_tradisional') ? ' is-invalid' : '' }}" name="deskripsi_alat_musik_tradisional" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_alat_musik_tradisional')}}</textarea>
@if ($errors->has('deskripsi_alat_musik_tradisional'))                            
    <span class="invalid-feedback">      
        <strong>{{ $errors->first('deskripsi_alat_musik_tradisional') }}</strong> 
    </span>                                                
@endif                                                     
  </div>
  <label for="exampleFormControlTextarea1">Foto Alat Musik</label>  
  <div class="form-group">
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
  </div>
<ul class="list-group">                                                                      
@if ($errors->has('files.*'))                                                                
    @if ($errors->has('files.10'))                                                            
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.10')  }}</li> 
    @endif                                                                                   
    @if ($errors->has('files.11'))                                                            
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.11')  }}</li> 
    @endif                                                                                   
    @if ($errors->has('files.12'))                                                            
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.12')  }}</li> 
    @endif                                                                                   
@endif                                                                                       
</ul>                                                                                        

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Pakaian Adat</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Pakaian Adat</label>
    <input type="text" name="nama_pakaian_adat" class="form-control {{ $errors->has('nama_pakaian_adat') ? ' is-invalid' : '' }}" id="exampleFormControlInput1" value="{{old('nama_pakaian_adat')}}">
@if ($errors->has('nama_pakaian_adat'))                           
    <span class="invalid-feedback">                                              
        <strong>{{ $errors->first('nama_pakaian_adat') }}</strong>
    </span>                                                                      
@endif                                                                           
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Pakaian Adat</label>
    <textarea id="area6" class="form-control {{ $errors->has('deskripsi_pakaian_adat') ? ' is-invalid' : ''}}" name="deskripsi_pakaian_adat" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_pakaian_adat')}}</textarea>
@if ($errors->has('deskripsi_pakaian_adat'))               
    <span class="invalid-feedback">
        <strong>{{ $errors->first('deskripsi_pakaian_adat') }}</strong>
    </span>                                                       
@endif                                                            
  </div>
  <label for="exampleFormControlTextarea1">Foto Pakaian Adat</label>  
  <div class="form-group">
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required> 
    <input type="file" name="files[]" style="margin-bottom:5px;" required>
  </div>
<ul class="list-group">                                                                      
@if ($errors->has('files.*'))                                                                
    @if ($errors->has('files.13'))                                                            
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.13')  }}</li> 
    @endif                                                                                   
    @if ($errors->has('files.14'))                                                           
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.14')  }}</li>
    @endif                                                                                   
    @if ($errors->has('files.15'))                                                           
    <li class="list-group-item list-group-item-danger">{{ $errors->first('files.15')  }}</li>
    @endif                                                                                   
@endif                                                                                       
</ul>                                                                                        

  <p><h4 style="text-align:center; font-family: system-ui; margin:70px 0 0 0;">Bahasa Daerah</h4></p>  
  <div class="form-group">
    <label for="exampleFormControlInput1">Nama Bahasa Daerah</label>
    <input type="text" name="nama_bahasa_daerah" class="form-control {{ $errors->has('nama_bahasa_daerah') ? ' is-invalid' : ''}}" id="exampleFormControlInput1" value="{{old('nama_bahasa_daerah')}}">
@if ($errors->has('nama_bahasa_daerah'))                           
    <span class="invalid-feedback">                                    
        <strong>{{ $errors->first('nama_bahasa_daerah') }}</strong>
    </span>                                                            
@endif                                                                 
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Deskripsi Bahasa Daerah</label>
    <textarea id="area7" class="form-control {{ $errors->has('deskripsi_bahasa_daerah') ? ' is-invalid' : ''}}" name="deskripsi_bahasa_daerah" id="exampleFormControlTextarea1" rows="20">{{old('deskripsi_bahasa_daerah')}}</textarea>
@if ($errors->has('deskripsi_bahasa_daerah'))                           
    <span class="invalid-feedback">                                    
        <strong>{{ $errors->first('deskripsi_bahasa_daerah') }}</strong>
    </span>                                                            
@endif                                                                 
  </div>
  <br>
  <button class="btn btn-outline-primary btn-block" name="submit">Submit</button>
</form>
 <script type="text/javascript" src="{{asset('js/deskripsi.js')}}"></script>
 <script type="text/javascript" src="{{asset('js/nicEdit-latest.js')}}"></script> 
 <script type="text/javascript" src="{{asset('js/tool-box.js')}}"></script>

@endsection
