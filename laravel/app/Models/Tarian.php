<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tarian extends Model
{
	 protected $fillable = [
         'nama','desc','video'
	 ];  

    public function posting(){
        return $this->belongsTo('App\Models\Posting');
    }
}
