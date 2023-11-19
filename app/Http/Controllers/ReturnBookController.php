<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Rent;
use Illuminate\Http\Request;
use App\Repositories\BookRentRepository;

class ReturnBookController extends Controller
{
    public function __construct(
        private BookRentRepository $bookRentRepo
    ) {}

    
    public function create()
    {
        $books = Book::all();
        return view('return.create',compact('books'));
    }

    public function search(Request $request)
    {
        $book_id = $request->book_id;
        $rents = Rent::where('book_id', $book_id)
                        ->Where('status',0)
                        ->with('books')->get();
        $books = Book::all();
        return view('return.create',compact('rents','books'));
    }

    public function returnProcess($id)
    {
        $rent = $this->bookRentRepo->returnBook($id);
        return redirect()->route('book.index')->with('success', 'Book returned successfully!');
    }
}
