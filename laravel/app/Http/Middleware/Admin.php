<?php

namespace App\Http\Middleware;

use Alert;
use Illuminate\Support\Facades\Auth;
use Closure;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user = Auth::User();
        if ($user && $user->role == 2){
            return $next($request);
        }
        Alert::warning('kamu bukan admin');
        return redirect('/jelajah');

    }
}
