<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    public function kabupaten(){
        return $this->hasMany('App\Models\Kabupaten');
    }
}
