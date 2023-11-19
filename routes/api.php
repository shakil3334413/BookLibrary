<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\BookController;
use App\Http\Controllers\Api\BookRentController;
use App\Http\Controllers\Api\ReturnBookController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    Route::controller(BookController::class)
    ->prefix('/books')
    ->group(function () {
        Route::get('/','index');
        Route::post('/','store');
        Route::get('/{book}/show','show');
        Route::put('/{book}/update','update');
        Route::delete('/{book}/delete','destroy');
    });

    Route::post('/rents/store',[BookRentController::class,'store']);
    Route::get('/returns/{id}/books',[ReturnBookController::class,'returnProcess']);

});

