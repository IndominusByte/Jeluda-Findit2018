<?php

namespace App\Models;

use Auth;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','token'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function posting(){
        return $this->hasMany('App\Models\Posting');
    }
    public function comment(){
        return $this->hasMany('App\Models\Comment');
    }
    public function notif(){
        return $this->hasMany('App\Models\Notification');
    }
    public function notifa(){
        return $this->notif->where('user_id',Auth::user()->id);
    }
}
