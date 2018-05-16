<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Auth::routes();

Route::resource('/jelajah', 'JelajahController');
Route::group(['middleware' => ['admin']], function () {
    Route::get('/admin', 'adminController@dashboard');
    Route::get('/admin/user', 'adminController@user');
    Route::get('/admin/user/{id}', 'adminController@ubahadmin');
    Route::get('/admin/user-hapus/{id}', 'adminController@hapususer');
    Route::get('/admin/user-biasa/{id}', 'adminController@ubahuser');
    Route::get('/admin/user/filter/{filter}', 'adminController@filter');
    Route::get('/admin/komentar', 'adminController@komentar');
    Route::get('/admin/komentar-hapus/{id}', 'adminController@hapuskomentar');
    Route::get('/admin/komentar/filter/{filter}', 'adminController@filter');
    Route::put('/admin/{id}', 'adminController@konfirmasi');
    Route::delete('/admin/{id}', 'adminController@destroy');
});

Route::get('/like/{type}/{model}','LikeController@like');
Route::get('/unlike/{type}/{model}','LikeController@unlike');
Route::get('/notification','JelajahCommentController@notif');
Route::get('/ubah','JelajahCommentController@ubah');
Route::post('/notif','JelajahCommentController@notif_destroy');

Route::prefix('jelajah-comment')->group(function () {
Route::post('{id}' , 'JelajahCommentController@store');
Route::get('{id}/edit' , 'JelajahCommentController@edit');
Route::put('{id}' , 'JelajahCommentController@update');
Route::delete('{id}' , 'JelajahCommentController@destroy');
});

Route::get('/profile/{id?}', 'ProfileController@halamanprofile');
Route::prefix('ubah-profile')->group(function () {
Route::get('{id}', 'ProfileController@ubahprofile');
Route::put('{id}', 'ProfileController@update');
});

Route::get('/jelajah/filter/{provinsi}','FilterController@filter');
Route::get('/verify/{token}/{id}', 'Auth\RegisterController@verify');
