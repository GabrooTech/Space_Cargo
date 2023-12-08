<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers;
use App\Http\Controllers\AmanatiController;
use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function (){
    Route::get('/dashboard', function() {
        return redirect()->to('/amanati');
        ;
    });
});
Route::controller(AmanatiController::class)->group(function(){

    Route::get('amanati', 'index')->name('amanati.index');

    Route::post('amanati', 'store')->name('amanati.store');

    Route::get('amanati/create', 'create')->name('amanati.create');

    Route::get('amanati/{item}', 'show')->name('amanati.show');

    Route::put('amanati/{item}', 'update')->name('amanati.update');

    Route::delete('amanati/{item}', 'destroy')->name('amanati.destroy');

    Route::get('amanati/{item}/edit', 'edit')->name('amanati.edit');

});
