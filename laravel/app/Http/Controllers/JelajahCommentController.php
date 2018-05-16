<?php

namespace App\Http\Controllers;

use Alert;
use Validator;
use App\Models\Comment;
use App\Models\Posting;
use App\Models\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class JelajahCommentController extends Controller
{
    public function store(Request $request,$id)
    {
        $posting = Posting::findOrFail($id);

		$validator = Validator::make($request->all(), [  
        'comment' => 'required|min:3'
        ]);
        
        if ($validator->fails()) {                 
   		 Alert::warning('Upss ada kesalahan di comment');  
   		 return redirect('/jelajah/'.$posting->slug)      
  	        ->withErrors($validator)            
            ->withInput();                      
		 }                                          

        $comment = Comment::create([
        'subject' =>  $request->comment,
        'posting_id' => $id,
        'user_id' => Auth::user()->id,
        ]);

        if($posting->user->id !== Auth::user()->id){
        Notification::create([
            'subject' => '<b>'.Auth::user()->name.'</b>'.' berkomentar di',
            'posting_id' => $id,
            'user_id' => $posting->user->id
        ]);
        }

        Alert::success('yeay comment berhasil');
        return redirect('/jelajah/'.$posting->slug);
    }

    public function notif(){
        $user = Auth::user();
        $notification = Notification::with('posting.kabupaten')->where('user_id',$user->id)->orderBy('id','desc')->get();
        $notif_model = new Notification;
        return view('profile.notif',compact('notification','notif_model','user'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $comment = Comment::findOrFail($id);
        if ($comment->user->id == Auth::user()->id){ 
        return view('jelajah-comment.edit',compact('comment'));
        } 
        return abort(404);
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
        $request->validate([
        'edit_comment' => 'required|min:5'
    ]);
        $comment = Comment::findOrFail($id);
        $comment->update([
            'subject' => $request->edit_comment
        ]);
        Alert::success('comment berhasil di edit');
        return redirect('/jelajah/'.$comment->posting->slug);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $comment = Comment::findOrFail($id);
        $comment->delete();

        Alert::success('comment berhasil di hapus');
        return redirect('/jelajah/'.$comment->posting->slug);
    }

    public function notif_destroy(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'checked' => 'required'
        ]);
        
        if ($validator->fails()) {
        Alert::warning('Checkbox harus di isi');
        return redirect('/notification')
        ->withErrors($validator)
        ->withInput();
         }

        $ea = $request->checked;
        foreach($ea as $id){
            $notif = Notification::findOrFail($id);
            $notif->delete();
        }

        Alert::success('Notif berhasil di hapus');
        return redirect('/notification');
    }

    public function ubah(){
    $notif_model = new Notification;
    $notif_model::where('user_id',Auth::user()->id)->where('seen',0)->update(['seen' => 1]);
    }

}
