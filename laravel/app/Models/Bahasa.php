<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bahasa extends Model
{
    protected $fillable = [   
       'nama','desc'
   ];  

    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }
}
