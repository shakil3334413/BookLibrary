<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Http\Requests\RentRequest;
use App\Repositories\BookRentRepository;

class RentController extends Controller
{
    public function __construct(
        private BookRentRepository $bookRentRepo
    ) {}


    public function create()
    {
        $books = Book::mostRecent()->get();
        return view('rent.create',compact('books'));
    }

    public function store(RentRequest $request)
    {
        $rent = $this->bookRentRepo->storeBookRent($request);
         return redirect()->route('book.index')->with('success', 'Book rented successfully!');
    }
}
