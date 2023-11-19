<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Requests\RentRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\BookRentResource;
use App\Repositories\BookRentRepository;

class BookRentController extends Controller
{
    private $bookRentRepo;

    public function __construct(BookRentRepository $bookRentRepo)
    {
        $this->bookRentRepo=$bookRentRepo;
    }
    public function store(RentRequest $request)
    {
        $rent = $this->bookRentRepo->storeBookRent($request);
        return $this->json('Book Rent SuccessFully', [
            'rent' => new BookRentResource($rent)
        ]);
    }
}
