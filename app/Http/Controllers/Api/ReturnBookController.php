<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BookReturnResource;
use App\Repositories\BookRentRepository;

class ReturnBookController extends Controller
{
    private $bookRentRepo;

    public function __construct(BookRentRepository $bookRentRepo)
    {
        $this->bookRentRepo=$bookRentRepo;
    }

    public function returnProcess($id)
    {
        $rent = $this->bookRentRepo->returnBook($id);
        return $this->json('Book Return SuccessFully', [
            'rent' => new BookReturnResource($rent)
        ]);
    }
}
