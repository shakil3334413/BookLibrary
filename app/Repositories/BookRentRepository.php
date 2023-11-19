<?php

namespace App\Repositories;

use App\Models\Book;
use App\Models\Rent;
use App\Mail\BookRentMail;
use App\Mail\BookReturnMail;
use App\Http\Requests\RentRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class BookRentRepository extends Repository
{
    public function model()
    {
        return Rent::class;
    }

    public function storeBookRent(RentRequest $request)
    {
        $quantity = $request->quantity;
        $book = Book::where('id',$request->book_id)->first();
        if ($book->quantity <= $quantity) {
            return redirect()->back()->with('error', 'Sorry, this book is not available for rental.');
        }
        $rent = Rent::create([
            'book_id' => $request->book_id,
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'address' => $request->address,
            'copy' => $quantity,
            'user_id' => Auth::user()->id ?? 1,
            'rent_date' => now()
        ]);
        $book->decrement('quantity',$quantity);
        Mail::to($request->email)->send(new BookRentMail($rent,$book));

        return $rent;
    }

    public function returnBook($id)
    {
        $rent = Rent::where('id',$id)->with('books')->first();
        $rent->update([
            'status' => true,
            'return_date' => now()
        ]);
        $book = $rent->books;
        $book->increment('quantity',$rent->copy);
        Mail::to($rent->email)->send(new BookReturnMail($rent));
        return $rent;
    }
}
