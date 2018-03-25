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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', 'frontend\HomeController@index');
Route::get('/news/{id}/{slug}', 'frontend\NewsController@detail');
Route::get('/about-us', 'frontend\PagesController@about');
Route::get('/values', 'frontend\PagesController@values');
Route::get('/our-people', 'frontend\OurPeopleController@index');

