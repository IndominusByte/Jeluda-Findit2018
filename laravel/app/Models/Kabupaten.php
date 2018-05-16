<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kabupaten extends Model
{
    public function provinsi(){
        return $this->belongsTo('App\Models\Provinsi');
    }

    public function posting(){
        return $this->hasMany('App\Models\Posting');
    }
}
