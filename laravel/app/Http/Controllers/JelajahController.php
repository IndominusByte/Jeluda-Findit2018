<?php

namespace App\Http\Controllers;

use Alert;
use Mapper;
use Validator;
use App\Models\User;
use App\Models\Provinsi;
use App\Models\Kabupaten;
use App\Models\Posting;
use App\Models\Makanan;
use App\Models\Rumah;
use App\Models\Tarian;
use App\Models\Senjata;
use App\Models\Lokasi;
use App\Models\Music;
use App\Models\Pakaian;
use App\Models\Bahasa;
use App\Models\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;

class JelajahController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
	
	public function __construct()  
	{
    $this->middleware('auth' ,['except' => ['index','show']]);
    }

    public function index(Request $request)
    {
        $provinsi = Cache::remember('provinsi:jelajah',60,function(){
            return Provinsi::all();
        });
        $search_q = urldecode($request->search);
        $currentPage = $request->get('page') ? $request->get('page') : '1';
        if(empty($search_q)){
            $posting = Cache::remember('jelajah-'.$currentPage,10,function(){
                return Posting::with('kabupaten.provinsi','comment','user','likes')->where('status','=','1')->orderBy('id','desc')->paginate(8);
            });
            return view('jelajah.index',compact('posting','provinsi'));  
        }
        else
            $posting = Posting::where('deskripsi', 'like' , '%'.$search_q.'%')->with('kabupaten.provinsi','comment','user','likes')
            ->orwhereHas('makanan', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
            })
            ->orwhereHas('rumah', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
            })
            ->orwhereHas('tarian', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
            })
            ->orwhereHas('senjata', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
            })
             ->orwhereHas('music', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
             })
             ->orwhereHas('pakaian', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
             })
             ->orwhereHas('bahasa', function ($query) use ($search_q){
                $query->where('nama', 'like', '%'.$search_q.'%')
                    ->orWhere('desc', 'like', '%'.$search_q.'%');
            })->orderBy('status', 'desc')->paginate(8);          
        $posting->appends(['search' => $search_q]);
        foreach($posting as $status)
        if(count($posting) > 0 && $status->status !== 0) return view('jelajah.index',compact('posting','provinsi'));
        if(count($posting) == '0' || $status->status == 0){
            Alert::error('Pencarian tidak ditemukan');
            return redirect('/jelajah');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {    
        $provinsi = Cache::remember('tambahkan_budaya',60,function(){
            return Provinsi::with('kabupaten')->get();
        });
    return view('jelajah.create' ,compact('provinsi','notification'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
        'files.*' => 'required|image|mimes:jpg,png,jpeg|max:2000',
        'deskripsi_singkat' => 'required|max:143',
        'nama_makanan_tradisional' => 'required|max:200',
        'deskripsi_makanan_tradisional' => 'required',
        'nama_rumah_adat_tradisional' => 'required|max:200',
        'deskripsi_rumah_adat_tradisional' => 'required',
        'nama_tarian_tradisional' => 'required|max:200',
        'deskripsi_tarian_tradisional' => 'required',
        'video_tarian_tradisional' => ['required','regex:/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?[\w\?=]*)?/'],
        'nama_senjata_tradisional' => 'required|max:200',
        'deskripsi_senjata_tradisional' => 'required',
        'longitude' => 'required|numeric',
        'latitude' => 'required|numeric',
        'nama_alat_musik_tradisional' => 'required|max:200',
        'deskripsi_alat_musik_tradisional' => 'required',
        'nama_pakaian_adat' => 'required|max:200',
        'deskripsi_pakaian_adat' => 'required',
        'nama_bahasa_daerah' => 'required|max:200',
        'deskripsi_bahasa_daerah' => 'required', 
    ]);
        if ($validator->fails()) {                           
           Alert::warning('Upss ada kesalahan!');           
           return redirect('/jelajah/create')
               ->withErrors($validator)         
               ->withInput();                   
        }

        if ($request->hasFile('files')){
            foreach($request->file('files') as $key => $value){
                switch($key){
                case '0':
                $posting = new Posting;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/posting/', $filename);
                $posting->deskripsi = $request->deskripsi_singkat;
                $posting->foto = $filename;
                $posting->user_id = Auth::user()->id;
                $posting->slug = str_slug(str_limit($request->deskripsi_singkat ,20));
                $posting->kabupaten_id = $request->kabupaten;
                if(Auth::user()->role == 2 ) $posting->status = 1;
                $posting->save();
                break;
                case '1':
                $makanan = new Makanan;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/makanan/', $filename);                          
                $makanan->foto1 = $filename;
                break;
                case '2':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/makanan/', $filename);                          
                $makanan->foto2 = $filename;
                break;
                case '3':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/makanan/', $filename);                          
                $makanan->foto3 = $filename;

                $makanan->nama = $request->nama_makanan_tradisional;
                $makanan->desc = $request->deskripsi_makanan_tradisional;
                $posting->makanan()->save($makanan);
                break;

                case '4':
                $rumah = new Rumah;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/rumah/', $filename);                          
                $rumah->foto1 = $filename;
                break;
                case '5':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/rumah/', $filename);                          
                $rumah->foto2 = $filename;
                break;
                case '6':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/rumah/', $filename);                          
                $rumah->foto3 = $filename;
                $rumah->nama = $request->nama_rumah_adat_tradisional;
                $rumah->desc = $request->deskripsi_rumah_adat_tradisional; 
                $posting->rumah()->save($rumah);
                break;

                case '7':
                $senjata = new Senjata;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/senjata/', $filename);                          
                $senjata->foto1 = $filename;
                break;
                case '8':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/senjata/', $filename);                          
                $senjata->foto2 = $filename;
                break;
                case '9':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/senjata/', $filename);                          
                $senjata->foto3 = $filename;
                $senjata->nama = $request->nama_senjata_tradisional;
                $senjata->desc = $request->deskripsi_senjata_tradisional;
                $posting->senjata()->save($senjata);
                break;

                case '10':
                $music = new Music;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/music/', $filename);                          
                $music->foto1 = $filename;
                break;
                case '11':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/music/', $filename);                          
                $music->foto2 = $filename;
                break;
                case '12':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/music/', $filename);                          
                $music->foto3 = $filename;
                $music->nama = $request->nama_alat_musik_tradisional;
                $music->desc = $request->deskripsi_alat_musik_tradisional;
                $posting->music()->save($music);
                break;

                case '13':
                $pakaian = new Pakaian;
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/pakaian/', $filename);                          
                $pakaian->foto1 = $filename;
                break;
                case '14':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/pakaian/', $filename);                          
                $pakaian->foto2 = $filename;
                break;
                case '15':
                $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
                $value->storeAs('public/pakaian/', $filename);                          
                $pakaian->foto3 = $filename;
                $pakaian->nama = $request->nama_pakaian_adat;
                $pakaian->desc = $request->deskripsi_pakaian_adat;
                $posting->pakaian()->save($pakaian);
                break;
                }
            }
        } 
 
        if ($request->has('nama_tarian_tradisional')){
            $tarian = new Tarian;
            $tarian->nama = $request->nama_tarian_tradisional;
            $tarian->desc = $request->deskripsi_tarian_tradisional;
            $tarian->video = $request->video_tarian_tradisional;                                                      
            $posting->tarian()->save($tarian);
         }
         if($request->has('latitude')){
            $lokasi = new Lokasi;
            $lokasi->longitude = $request->longitude;
            $lokasi->latitude = $request->latitude;
            $posting->lokasi()->save($lokasi);
         }
        if($request->has('nama_bahasa_daerah')){
            $bahasa = new Bahasa;
            $bahasa->nama = $request->nama_bahasa_daerah;
            $bahasa->desc = $request->deskripsi_bahasa_daerah;
            $posting->bahasa()->save($bahasa);
        } 

        if(Auth::user()->role == 1){ 
            Alert::warning('Budaya mu menunggu persetujuan admin')->persistent("Okay");
            return redirect('/jelajah'); 
        }
            Alert::success('Budaya berhasil ditambahkan');
            return redirect('/jelajah'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $posting = Posting::where('slug',$slug)->first();
        if(!Auth::guest()){
            if(!$posting || Auth::user()->role !== 2 && $posting->status == 0) return abort(404);
        } 
        if(Auth::guest()){
            if(!$posting || $posting->status == 0) return abort(404);
        } 
        $comment = $posting->comment()->with('user')->paginate(5);
        foreach($posting->lokasi as $lokasi)
            Mapper::map($lokasi->latitude, $lokasi->longitude ,['zoom' => 9, 'markers' => ['title' => 'My Location', 'animation' => 'DROP']
            , 'clusters' => ['size' => 10, 'center' => true, 'zoom' => 20]]);
        foreach($posting->tarian as $tarian)
        $url = $tarian->video;
        preg_match('/[\\?\\&]v=([^\\?\\&]+)/', $url, $matches);
        $id = $matches[1];
        return view('jelajah.show' ,compact('posting', 'comment','id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $posting = Posting::findOrFail($id);
        if($posting->user->id !== Auth::user()->id && Auth::user()->role !== 2) return abort(404);
        $provinsi = Provinsi::with('kabupaten')->get();
        return view('jelajah.edit',compact('posting','provinsi'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
     'files.*' => 'sometimes|image|mimes:jpg,png,jpeg|max:2000',                           
     'deskripsi_singkat' => 'required|max:143',                 
     'nama_makanan_tradisional' => 'required|max:200',          
     'deskripsi_makanan_tradisional' => 'required',     
     'nama_rumah_adat_tradisional' => 'required|max:200',       
     'deskripsi_rumah_adat_tradisional' => 'required',  
     'nama_tarian_tradisional' => 'required|max:200',           
     'deskripsi_tarian_tradisional' => 'required',      
     'video_tarian_tradisional' => ['required','regex:/http(?:s?):\/\/(?:www\.)?youtu(?:be\.com\/watch\?v=|\.be\/)([\w\-\_]*)(&(amp;)?[\w\?=]*)?/'],          
     'nama_senjata_tradisional' => 'required|max:200',          
     'deskripsi_senjata_tradisional' => 'required',     
     'longitude' => 'required|numeric',                         
     'latitude' => 'required|numeric',                          
     'nama_alat_musik_tradisional' => 'required|max:200',       
     'deskripsi_alat_musik_tradisional' => 'required',  
     'nama_pakaian_adat' => 'required|max:200',                 
     'deskripsi_pakaian_adat' => 'required',            
     'nama_bahasa_daerah' => 'required|max:200',                
     'deskripsi_bahasa_daerah' => 'required',           
 ]);

        $posting = Posting::findOrFail($id); 
        if ($validator->fails()) {
            Alert::warning('Upss ada kesalahan!');
            return redirect('/jelajah/'.$posting->id.'/edit')
                            ->withErrors($validator)
                            ->withInput(); 
        }

    if($request->has('deskripsi_singkat')){
         $posting->update([
        'deskripsi' => $request->deskripsi_singkat,
        'slug' => str_slug(str_limit($request->deskripsi_singkat ,20))
        ]);
        }
      if($request->has('kabupaten') && $request->kabupaten !== '0'){
         $posting->update([
            'kabupaten_id' => $request->kabupaten
        ]);
        }
        if($request->has('nama_makanan_tradisional')){
            foreach($posting->makanan as $makanan){
                $makanan->update([
                    'nama' => $request->nama_makanan_tradisional,
                    'desc' => $request->deskripsi_makanan_tradisional
                ]);
            }        
        }        
        if($request->has('nama_rumah_adat_tradisional')){
            foreach($posting->rumah as $rumah){
                $rumah->update([
                    'nama' => $request->nama_rumah_adat_tradisional,
                    'desc' => $request->deskripsi_rumah_adat_tradisional
                ]);
            }
        }
        if($request->has('nama_tarian_tradisional')){
            foreach($posting->tarian as $tarian){
                $tarian->update([
                    'nama' => $request->nama_tarian_tradisional,
                    'desc' => $request->deskripsi_tarian_tradisional,
                    'video' => $request->video_tarian_tradisional
                ]);
            }
        }
        if($request->has('nama_senjata_tradisional')){
            foreach($posting->senjata as $senjata){
                $senjata->update([
                    'nama' => $request->nama_senjata_tradisional,
                    'desc' => $request->deskripsi_senjata_tradisional
                ]);
            }
        }
        if($request->has('latitude')){
            foreach($posting->lokasi as $lokasi){
                $lokasi->update([
                'longitude' => $request->longitude,
                'latitude' => $request->latitude        
                 ]);   
            }
        }
        if($request->has('nama_alat_musik_tradisional')){
            foreach($posting->music as $musik){
                $musik->update([
                    'nama' => $request->nama_alat_musik_tradisional,
                    'desc' => $request->deskripsi_alat_musik_tradisional
                ]);
            }
        }
        if($request->has('nama_pakaian_adat')){
            foreach($posting->pakaian as $pakaian){
                $pakaian->update([
                    'nama' => $request->nama_pakaian_adat,
                    'desc' => $request->deskripsi_pakaian_adat
                ]);
            }
        }
        if($request->has('nama_bahasa_daerah')){
            foreach($posting->bahasa as $bahasa){
                $bahasa->update([
                    'nama' => $request->nama_bahasa_daerah,
                    'desc' => $request->deskripsi_bahasa_daerah
                ]);
            }
        }
	 if ($request->hasFile('files')){                        
    	 foreach($request->file('files') as $key => $value){ 
         switch($key){                                   
         case '0' : 
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/posting/', $filename);                          
         $posting->update([
            'foto' => $filename
         ]);
         break;
         case '1':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/makanan/', $filename);                          
         $makanan->update([
            'foto1' => $filename
         ]);
         break;
         case '2':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/makanan/', $filename);                          
         $makanan->update([
            'foto2' => $filename
         ]);
         break;
         case '3':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/makanan/', $filename); 
         $makanan->update([
            'foto3' => $filename
         ]);
         break;
         case '4':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/rumah/', $filename);                            
         $rumah->update([
            'foto1' => $filename
         ]);
         break;
         case '5':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/rumah/', $filename);                            
         $rumah->update([
            'foto2' => $filename
         ]);
         break;
         case '6':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/rumah/', $filename);                            
         $rumah->update([
            'foto3' => $filename
         ]);
         break;
         case '7':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/senjata/', $filename);                              
         $senjata->update([
            'foto1' => $filename
         ]);
         break;
         case '8':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/senjata/', $filename);                              
         $senjata->update([
            'foto2' => $filename
         ]);
         break;
         case '9':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();  
         $value->storeAs('public/senjata/', $filename);                              
         $senjata->update([
            'foto3' => $filename
         ]);
         break;
         case '10':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension(); 
         $value->storeAs('public/music/', $filename);                           
         $musik->update([
            'foto1' => $filename
         ]);
         break;
         case '11':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension(); 
         $value->storeAs('public/music/', $filename);                           
         $musik->update([
            'foto2' => $filename
         ]);
         break;
         case '12':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension(); 
         $value->storeAs('public/music/', $filename);                           
         $musik->update([
            'foto3' => $filename
         ]);
         break;
         case '13':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/pakaian/', $filename);                            
         $pakaian->update([
            'foto1' => $filename
         ]);
         break;
         case '14':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/pakaian/', $filename);                            
         $pakaian->update([
            'foto2' => $filename
         ]);
         break;
         case '15':
         $filename = str_random(10) . '.' . $value->getClientOriginalExtension();
         $value->storeAs('public/pakaian/', $filename);                            
         $pakaian->update([
            'foto3' => $filename
         ]);
         break;
            }
          }
     }
     Alert::success('posting berhasil di edit'); 
     return redirect('/jelajah/'.$posting->slug); 

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $posting = Posting::findOrFail($id);                   
        $posting->delete();                                    
                                                               
        Alert::success('kiriman budaya berhasil di hapus');           
        return redirect('/jelajah');  
    }
}
