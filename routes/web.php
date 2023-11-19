<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\RentController;
use App\Http\Controllers\ReturnBookController;

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'signin'])->name('login.post');

Route::group(['middleware' => ['auth']], function () {
    Route::post('/logout', [LoginController::class,'logout'])->name('logout');
    Route::get('/', [BookController::class, 'index'])->name('book.index');
    Route::controller(BookController::class)
    ->prefix('/books')
    ->group(function () {
        Route::get('/create/{bookId}','create')->name('book.create');
        Route::get('/search','search')->name('book.search');
        Route::post('/','store')->name('book.store');
        Route::get('/{book}/edit','edit')->name('book.edit');
        Route::put('/{book}/update','update')->name('book.update');
        Route::get('/{book}/view','view')->name('book.view');
        Route::delete('/{book}/delete','destroy')->name('book.destroy');
        Route::post('/search','searchBook')->name('books.search');
    });
    Route::controller(RentController::class)
    ->prefix('/rents')
    ->group(function () {
        Route::get('/','create')->name('rents.create');
        Route::post('/store','store')->name('rents.store');
    });
    Route::controller(ReturnBookController::class)
    ->prefix('/returns')
    ->group(function () {
        Route::get('/','create')->name('returns.create');
        Route::post('/search','search')->name('rents.search');
        Route::get('/process/{id}','returnProcess')->name('rents.returnProcess');
    });
});

