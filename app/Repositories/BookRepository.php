<?php

namespace App\Repositories;

use Exception;
use App\Models\Book;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use App\Http\Requests\BookStoreRequest;
use App\Http\Requests\BookUpdateRequest;

class BookRepository extends Repository
{
    public function model()
    {
        return Book::class;
    }

    public function storeBook(BookStoreRequest $request)
    {
        DB::beginTransaction();
        try {
            $response = Http::get("https://www.googleapis.com/books/v1/volumes/{$request->book_id}");
            $data = $response->json();
            $book = Book::create([
                'title' => $data['volumeInfo']['title'] ?? null,
                'author' => implode(', ', $data['volumeInfo']['authors']) ?? null,
                'quantity' => $request->quantity,
                'thumbnail' => $data['volumeInfo']['imageLinks']['thumbnail'] ?? null,
                'page_count' => $data['volumeInfo']['pageCount'] ?? null,
                'description' => $data['volumeInfo']['description'] ?? null,
                'revision_number' => $data['volumeInfo']['contentVersion'] ?? null,
                'latest_release_date' => $data['volumeInfo']['publishedDate'] ?? null,
                'first_release_date' => $data['volumeInfo']['publishedDate'] ?? null,
            ]);
            DB::commit();
            return $book;

        } catch (Exception $e) {
            DB::rollback();
            return response()->json(['message' => 'Error Create book', 'error' => $e->getMessage()], 500);
        }
    }
    public function updateBook(Book $book, BookUpdateRequest $request)
    {
        DB::beginTransaction();
            try {
            $updateBook=$this->update($book, [
                'title' => $request->title,
                'author' => $request->author,
                'quantity' => $request->quantity,
                'page_count' => $request->page_count,
                'description' => $request->description,
            ]);
            DB::commit();
            return $updateBook;
        } catch (Exception $e) {
            DB::rollback();
            return response()->json(['message' => 'Error Update book', 'error' => $e->getMessage()], 500);
        }
    }
}
