<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\DsController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\NsController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\WriterDetailController;
use App\Http\Controllers\WritersController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/user')->group(function(){
    Route::get('/home', [HomeController::class, 'index'])->name('user.home');
    Route::get('/datascience', [DsController::class, 'index'])->name('user.datascience');
    Route::get('/networksecurity', [NsController::class, 'index'])->name('user.networksecurity');
    Route::get('/writers', [WritersController::class, 'index'])->name('user.writers');
    Route::get('/aboutus', [AboutUsController::class, 'index'])->name('user.aboutus');
    Route::get('/popular', [PopularController::class, 'index'])->name('user.popular');
    Route::get('article/{id}', [ArticleController::class, 'index'])->name('user.article');
    Route::get('writerdetail/{id}', [WriterDetailController::class, 'index'])->name('user.writerdetail');
});