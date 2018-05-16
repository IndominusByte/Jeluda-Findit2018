<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rumah extends Model
{
    protected $fillable = [
            'nama','desc','foto1','foto2','foto3'
    ];

    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }
}
