<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Rent;
use Illuminate\Http\Request;
use App\Repositories\BookRepository;
use Illuminate\Support\Facades\Http;
use App\Http\Requests\BookStoreRequest;
use App\Http\Requests\BookUpdateRequest;

class BookController extends Controller
{
    public function __construct(
        private BookRepository $bookRepo
    ) {}

    public function index()
    {
        $books = Book::mostRecent()
                ->paginate(20)
                ->withQueryString();
        return view('books.index',compact('books'));
    }

    public function search()
    {
        return view('books.search');
    }
    public function searchBook(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string',
        ]);

        $title = $request->title;

        $response = Http::get('https://www.googleapis.com/books/v1/volumes/', [
            'q' => $title,
        ]);

        $books = $response->json()['items'] ?? [];

        return view('books.search', compact('books'));
    }

    public function create($bookId)
    {
        $response = Http::get("https://www.googleapis.com/books/v1/volumes/{$bookId}");
        $bookDetails = $response->json();

        return view('books.create', compact('bookDetails'));
    }

    public function store(BookStoreRequest $request)
    {
        $book = $this->bookRepo->storeBook($request);
        return redirect()->route('book.index')->with('success', 'Book added successfully');
    }
    public function view(Book $book)
    {
        $latestRents = Rent::where('book_id',$book->id)
                    ->Where('status',0)->get();
        $allRents = Rent::where('book_id',$book->id)->get();
        return view('books.view',compact('book','latestRents','allRents'));
    }

    public function edit(Book $book)
    {
        return view('books.edit',compact('book'));
    }
    public function update(Book $book,BookUpdateRequest $request)
    {
        $book = $this->bookRepo->updateBook($book,$request);
        return redirect()->route('book.index')->with('success', 'Book updated successfully');
    }


    public function destroy(Book $book)
    {
        $book->delete();
        return redirect()->back()->with('success', 'Book deleted successfully');
    }
}
