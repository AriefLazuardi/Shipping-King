<?php

use App\Http\Controllers\KuliahController;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\PengirimanController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TaskOriginController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('kuliah',[KuliahController::class,'tampil']);
Route::get('kuliah-sore',[KuliahController::class,'kuliahSore']);
Route::get('kuliah-pagi/{id}',[KuliahController::class,'kuliahPagi']);
Route::post('kuliah-siang',[KuliahController::class,'kuliahSiang']);

Route::get('tasks',[TaskController::class,'showAllTask']);
Route::post('inserttask',[TaskController::class,'insertTask']);



Route::post('periksa',[PengirimanController::class,'periksa']);
Route::post('pengiriman-test',[PengirimanController::class,'periksa']);