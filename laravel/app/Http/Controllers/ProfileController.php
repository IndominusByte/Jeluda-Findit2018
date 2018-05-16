<?php

namespace App\Http\Controllers;

use Alert;
use App\Models\User;
use App\Models\Notification;
use App\Jobs\EmailUserJobs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
     public function __construct()
     {
         $this->middleware('auth', ['except' => ['halamanprofile']]);
     }
     
     public function halamanprofile($id= ''){
         ($id == '' ? $user = User::findOrFail(Auth::user()->id) : $user = User::findOrFail($id)); 
         $comments = $user->comment()->with('posting')->get();
         $postings = $user->posting()->with('comment','kabupaten')->get();
         return view('profile.show',compact('user','comments','postings'));
     }
     public function ubahprofile($id){
         $user = User::findOrFail($id);
      if($user->id !== Auth::user()->id) return abort(404);
      return view('profile.ubah',compact('user'));
    }
 	
	public function update(Request $request, $id){                                            
        $user = User::findOrFail($id);

        if($request->email !== $user->email){
        $request->validate([
        'email' => 'sometimes|required|unique:users|string|email|max:255',
        ]);
        }

        $request->validate([
        'name' => 'sometimes|required|string|min:5|max:18',
        'file_avatar' => 'sometimes|image|mimes:jpg,png,jpeg|max:1000',
        'password' => 'sometimes|nullable|min:6|max:255|confirmed',
        ]);

        if ($request->password != '' && $request->hasFile('file_avatar')){
        
            $avatar = $request->file('file_avatar');
    		$filename = time() . '.' . $avatar->getClientOriginalExtension();
            $avatar->storeAs('public/avatar/', $filename); 

            $user->avatar = $filename;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->status = 0;                                   
            $user->password = Hash::make($request->password);
            $user->save();
            EmailUserJobs::dispatch($user);   
            Alert::success('profile berhasil di ubah');
            return redirect('/ubah-profile/'.$user->id);

        }

	    if($request->password == '' && $request->name == $user->name && $request->email == $user->email){
        
            if($request->hasFile('file_avatar')){
    		$avatar = $request->file('file_avatar');
    		$filename = time() . '.' . $avatar->getClientOriginalExtension();
            $avatar->storeAs('public/avatar/', $filename); 

    		$user->avatar = $filename;
            $user->save();
            Alert::success('foto berhasil diubah!');
            return redirect('/ubah-profile/'.$user->id);
         }

        return redirect('/ubah-profile/'.$user->id);
        }

        if($request->name != $user->name){
        $user->update([
            'name' => $request->name,
        ]);
        Alert::success('nama berhasil diubah!');
        return redirect('/ubah-profile/'.$user->id);
        }

        if($request->email != $user->email){
        $user->update([
            'email' => $request->email,
        ]);
        $user->status = 0;
        $user->save();
        EmailUserJobs::dispatch($user); 
        Alert::warning('anda harus verifikasi ulang email anda!')->persistent("Okay");;
        return redirect('/ubah-profile/'.$user->id);
        }
        
        $user->update([
            'password' => Hash::make($request->password)
        ]);
        Alert::success('password berhasil diubah!');
        return redirect('/ubah-profile/'.$user->id);

    }                                            

}
