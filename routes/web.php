<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/hi', function () {
    $html = '<h1 style="color:blue">HI ME LARAVEL 11111 NEOVIM_01</h1>';
    $html.= '<h1 style="color:red">HI ME LARAVEL 22222</h1>';
    $html.= '<h1 style="color:green">HI ME LARAVEL 33333</h1>';

    return $html;
});

Route::get('/hola', function () {
    $html = '<h1>HOLA ME LARAVEL</h1>';

    return $html;
});
