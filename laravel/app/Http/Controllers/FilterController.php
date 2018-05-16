<?php

namespace App\Http\Controllers;

use Auth;
use Alert;
use App\Models\Provinsi;
use App\Models\Notification;
use App\Models\Posting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class FilterController extends Controller
{
    public function filter(Request $request,$nama){
        $nama = explode('-',$nama);
        $nama = implode(' ',$nama);
        $currentPage = $request->get('page') ? $request->get('page') : '1';
        $provinsi = Cache::remember('provinsi:filter',60,function(){
            return Provinsi::all();
        }); 
        if($nama == 'kiriman terbaru'){
            $posting = Cache::remember('kiriman-terbaru'.$currentPage,10,function(){
                return Posting::with('kabupaten.provinsi','comment','user','likes')->where('status','=','1')->orderBy('id', 'DESC')->paginate(8);
            });
        return view('jelajah.index',compact('posting','provinsi'));  
        }
        if($nama == 'kiriman jadul'){
            $posting = Cache::remember('kiriman-jadul'.$currentPage,10,function(){
                return Posting::with('kabupaten.provinsi','comment','user','likes')->where('status','=','1')->orderBy('id', 'asc')->paginate(8);
            });
        return view('jelajah.index',compact('posting','provinsi'));  
        }
        if($nama == 'disukai'){
            $posting = Cache::remember('disukai'.$currentPage,10,function(){
                return Posting::with('kabupaten.provinsi','comment','user','likes')->where('status','=','1')
                            ->withCount('likes')->orderBy('likes_count', 'desc')->paginate(8);
            });
        return view('jelajah.index',compact('posting','provinsi'));  
        }

        if($nama == 'terpopuler'){
            $posting = Cache::remember('terpopuler'.$currentPage,10,function(){
                return Posting::with('kabupaten.provinsi','comment','user','likes')->where('status','=','1')
                            ->withCount('comment')->orderBy('comment_count', 'desc')->paginate(8);
            });
        return view('jelajah.index',compact('posting','provinsi'));  
        }

        $posting = Cache::remember('filter-provinsi'.'-'.$nama.$currentPage,10,function() use ($nama){
             return Posting::with('kabupaten.provinsi','comment','user','likes')->whereHas('kabupaten.provinsi', function($q) use ($nama) {
            $q->where('nama', $nama);
        })->paginate(8);

        });
        
        if(count($posting) == 0){
        Alert::info('Belum ada budaya di provinsi ini')->persistent("Okay");
        return redirect('/jelajah');
        }

        return view('jelajah.index',compact('posting','provinsi'));  
             
    }
}
