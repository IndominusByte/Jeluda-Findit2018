<?php

namespace App\Http\Controllers;

use Auth;
use Alert;
use Charts;
use App\Models\Posting;
use App\Models\Comment;
use App\Models\User;
use App\Jobs\SendNotifJobs;    
use Illuminate\Http\Request;

class adminController extends Controller
{
    public function dashboard(Request $request){
        //$user = User::withCount('comment','posting')->paginate(9);
        $sudah = Posting::all()->where('status','=','1');
        $belum = Posting::all()->where('status','=','0');
        $posting = Posting::with('kabupaten.provinsi','comment')->get(); 
        $userc = User::all();
        $commentc = Comment::all();
        $chart = Charts::database(Posting::all(), 'bar', 'highcharts')
        ->title("Grafik Kiriman Budaya")
    	->elementLabel("Total")
        ->groupByMonth();
        
        return view('admin.grafik',compact('commentc','belum','sudah','userc','chart','posting','postings')); 
    }
    public function user(Request $request){
        $sudah = Posting::all()->where('status','=','1');
        $belum = Posting::all()->where('status','=','0');
        $commentc = Comment::all();
        $userc = User::all();
        $search_q = urldecode($request->search); 
        if(empty($search_q)){
        $user = User::withCount('comment','posting')->orderBy('id','desc')->paginate(9);
        return view('admin.user',compact('posting','commentc','belum','user','userc','sudah')); 
        } else 
        
        $user = User::where('name', 'like' , '%'.$search_q.'%')->withCount('comment','posting')->paginate(9);
        if(count($user) == '0'){                                                                    
            Alert::error('Pencarian tidak ditemukan!');                                                                             
            $user = User::withCount('comment','posting')->paginate(9);
            return view('admin.user',compact('posting','commentc','belum','user','userc','sudah')); 
        }
        $user->appends(['search' => $search_q]);            
        return view('admin.user',compact('posting','commentc','belum','user','userc','sudah')); 
    }
    public function filter($filter){
    $filter = explode('-',$filter);
    $filter = implode(' ',$filter);  

    $sudah = Posting::all()->where('status','=','1');
    $belum = Posting::all()->where('status','=','0');
    $commentc = Comment::all();
    $userc = User::all();

    switch($filter){
    case 'belum dikonfirmasi':
    $user = User::withCount('comment','posting')->where('status','=','0')->paginate(9);
    return view('admin.user',compact('posting','commentc','belum','user','userc','sudah')); 
    break;
    case 'komentar jadul':
    $comment = Comment::with('posting.kabupaten.provinsi','user')->orderBy('id','asc')->paginate(9);
    return view('admin.komen',compact('posting','comment','commentc','belum','userc','sudah')); 
    break;
    case 'kontribusi terbanyak':
    $user = User::withCount('comment','posting')->orderBy('posting_count', 'desc')->paginate(9);
    return view('admin.user',compact('posting','commentc','belum','user','userc','sudah')); 
    break;
    default:
    return abort(404);
    }
}

    public function komentar(Request $request){
        $sudah = Posting::all()->where('status','=','1');
        $belum = Posting::all()->where('status','=','0');
        $userc = User::all();
        $commentc = Comment::all();
        $search_q = urldecode($request->search); 
        if(empty($search_q)){ 
        $comment = Comment::with('posting.kabupaten.provinsi','user')->orderBy('id','desc')->paginate(9);
        return view('admin.komen',compact('posting','comment','commentc','belum','userc','sudah')); 
        } else
        
        $comment = Comment::with('posting.kabupaten.provinsi','user')->where('subject','like','%'.$search_q.'%')->paginate(9); 
        if(count($comment) == '0'){                                                                   
            Alert::error('Pencarian tidak ditemukan!');                                             
            $comment = Comment::with('posting.kabupaten.provinsi','user')->paginate(9);
            return view('admin.komen',compact('posting','comment','commentc','belum','userc','sudah')); 
        }                                                                                          
            $comment->appends(['search' => $search_q]);                                                 
            return view('admin.komen',compact('posting','comment','commentc','belum','userc','sudah')); 
    }
    public function konfirmasi($id){
        $posting = Posting::findOrFail($id);
        $posting->status = 1;
        $posting->save();
        SendNotifJobs::dispatch($posting);
        Alert::success('kiriman budaya berhasil di konfirmasi');
        return redirect('/admin');
    }
    public function ubahadmin($id){
        $user = User::findOrFail($id);
        $user->role = 2;
        $user->save();
        Alert::success('berhasil mengubah role user');
        return redirect('/admin/user');
    }
     public function ubahuser($id){
        $user = User::findOrFail($id);
        $user->role = 1;
        $user->save();
        Alert::success('berhasil merubah admin menjadi user biasa')->persistent("Okay");
        return redirect('/admin/user');
    }
    public function hapususer($id){
        $user = User::findOrFail($id);
        $user->delete();
        Alert::success('user sudah dihapus');
        return redirect('/admin/user');
    }
    public function hapuskomentar($id){
        $user = Comment::findOrFail($id);
        $user->delete();
        Alert::success('komentar berhasil dihapus');
        return redirect('/admin/komentar');
    }

    public function destroy($id){
        $posting = Posting::findOrFail($id);                   
        $posting->delete();                                    
                                                               
        Alert::success('kiriman budaya berhasil di hapus');           
        return redirect('/admin');  
    }

}
