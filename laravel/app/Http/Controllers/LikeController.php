<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\User;
use App\Models\Like;
use App\Models\Posting;
use App\Models\Notification;
use Illuminate\Http\Request;

class LikeController extends Controller
{
     public function __construct(){
        $this->middleware('auth');
    }
    
     public function like($type,$model_id)
     {
         if($type == 1){
            $model_type = "App\Models\Posting";
            $model = Posting::findOrFail($model_id);
         } 

         if(Auth::user()->id == $model->user->id) return die('0');
            
         if($model->is_liked() == null){
         Like::create([
             'user_id' => Auth::user()->id,
             'likeable_id' => $model_id,
             'likeable_type' => $model_type,
         ]);
        } 
         
        if($model->notif()->where('user_id',$model->user->id)
                           ->where('subject', 'like', '%'.'menyukai kiriman'.'%')->count() == null){
        Notification::create([
        'subject' => '<b>'.Auth::user()->name.'</b>'.' menyukai kiriman anda di',
        'posting_id' => $model_id,
        'user_id' => $model->user->id
         ]);
         }

     }
    
     public function unlike($type,$model_id)
     {
         if($type == 1){
            $model_type = "App\Models\Posting";
            $model = Posting::findOrFail($model_id);
         } 

            
         if($model->is_liked()){
             Like::where('user_id',Auth::user()->id)
                 ->where('likeable_id',$model_id)
                 ->where('likeable_type',$model_type)
                 ->delete();
        }

    }

}
