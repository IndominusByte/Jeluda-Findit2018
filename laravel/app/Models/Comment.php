<?php

namespace App\Models;

use Auth;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = [
        'subject','posting_id', 'user_id'
    ];

    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }
    
    public function user(){
        return $this->belongsTo('App\Models\User');
    }
	public function cekowner(){                    
    if (Auth::guest()) return false;                          
    	return Auth::user()->id == $this->user->id;
    }                                              
    
    public function hitung(){
        return $this->user->posting->where('status','=',1)->count();

    }
}
