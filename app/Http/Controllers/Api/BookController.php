<?php

namespace App\Http\Controllers\Api;

use App\Models\Book;
use App\Http\Controllers\Controller;
use App\Http\Resources\BookResource;
use App\Repositories\BookRepository;
use App\Http\Requests\BookStoreRequest;
use App\Http\Requests\BookUpdateRequest;

class BookController extends Controller
{
    private $bookRepo;

    public function __construct(BookRepository $bookRepo)
    {
        $this->bookRepo=$bookRepo;
    }
    public function index()
    {
        $books=$this->bookRepo->getAll();
        return $this->json('Book List', [
            'books' => BookResource::collection($books)
        ]);
    }

    public function store(BookStoreRequest $request)
    {
        $book = $this->bookRepo->storeBook($request);
        return $this->json('Book Create SuccessFully', [
            'book' => new BookResource($book)
        ]);
    }

    public function show(Book $book)
    {
        $book = $this->bookRepo->find($book->id);
        return $this->json('Single Book List', [
            'book' =>(new BookResource($book))
        ]);
    }
    public function update(Book $book,BookUpdateRequest $request)
    {
        $bookUpdate = $this->bookRepo->updateBook($book,$request);
        $book = Book::where('id',$book->id)->first();
        return $this->json('Book Update SuccessFully', [
            'book' => (new BookResource($book))
        ]);
    }

    public function destroy(Book $book)
    {
        $book->delete();
        return $this->json('Book Delete SuccessFully',[
            'book' => (new BookResource($book))
        ]);
    }
}
