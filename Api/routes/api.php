<?php

use Illuminate\Http\Request;
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token,Authorization');
header('Access-Control-Allow-Origin: *');
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


/*--------------LOGIN,REGISTER,LOGOUT,EDIT----------------*/


Route::post('/register',[
  'uses'=>'Auth\AuthenticateController@register',
  'as'=>'register']);
Route::post('/login',[
  'uses'=>'Auth\AuthenticateController@login',
  'as'=>'login']);
Route::post('/logout',[
    'uses'=>'Auth\AuthenticateController@logout',
    'as'=>'logout',
    'middleware'=>['auth:api']]);


/*--------------END LOGIN,REGISTER,LOGOUT----------------*/


/*--------------CREATE,GET,DELETE INVENTORY----------------*/


Route::post('/createInventory',[
  'uses'=>'InventoryController@createInventory',
  'as'=>'createInventory',
'middleware'=>['auth:api']]);
Route::match(array('DELETE', 'GET'),'/getDeleteData/{id}',[
  'uses'=>'InventoryController@getDeleteData',
  'as'=>'deleterecord',
'middleware'=>['auth:api']]);
Route::get('/getInventoryList',[
  'uses'=>'InventoryController@getInventoryList',
  'as'=>'getInventoryList',
'middleware'=>['auth:api']]);

/*--------------END CREATE,GET,DELETE INVENTORY----------------*/
