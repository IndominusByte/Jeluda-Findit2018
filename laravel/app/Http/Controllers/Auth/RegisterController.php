<?php

namespace App\Http\Controllers\Auth;

use Alert;
use App\Jobs\EmailUserJobs;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered; 

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255|unique:users',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

	 public function register(Request $request)                     
	 {                                                              
 	$this->validator($request->all())->validate();                 
 	event(new Registered($user = $this->create($request->all()))); 
 	return redirect($this->redirectPath());                                                                                    
	 }                                                              


    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'token' => str_random(10)
        ]);
        Alert::warning('konfirmasi email dahulu');
        EmailUserJobs::dispatch($user);
    }

    public function verify($token,$id){
   	$user = User::findOrFail($id);          
                                        
	if ($user->token != $token) {           
    Alert::warning('token harus sama!');
       return redirect('/');            
    }                                   
	$user->status = 1;                      
	$user->save();                          
                                        
	Auth::login($user);                     
	Alert::success('selamat datang'.' '. $user->name);
	return redirect('/');                   
 
    }
}
