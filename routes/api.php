<?php


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







//GET REQUEST

Route::get('/countries', 'QuestionController1@getcountry');
Route::get('/country/{id?}', 'QuestionController1@getallCountrydetails');
Route::get('/state/{id?}', 'QuestionController1@getallstateCountry')->name('state');
Route::get('/state-details/{id?}', 'QuestionController1@getallStatedetails');
Route::get('/city/{id?}', 'QuestionController1@getallstateCity')->name('city');
Route::get('/city-details/{id?}', 'QuestionController1@getallCitydetails');


Route::get('/view-groups', 'QuestionController2@getAllGroups');
Route::get('/all-Assets', 'QuestionController2@getAllAssets');
Route::get('/view-individuals', 'QuestionController2@getAllindividuals');



//POST REQUEST
Route::post('/signUp', 'QuestionController2@createAccount');
Route::post('/group', 'QuestionController2@createGroup');
Route::post('/create-assets', 'QuestionController2@createAssets');
Route::post('/assign-user', 'QuestionController2@assignAssetsToUser');







