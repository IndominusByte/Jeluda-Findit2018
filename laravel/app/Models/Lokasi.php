<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
    protected $fillable = [
             'longitude','latitude'
    ];

    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }
}
