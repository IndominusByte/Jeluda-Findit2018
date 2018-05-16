<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{

    protected $fillable = [
        'subject' ,'user_id','posting_id'
    ];

    public function user(){
        return $this->belongsTo('App\Models\User');
    }
    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }


}
