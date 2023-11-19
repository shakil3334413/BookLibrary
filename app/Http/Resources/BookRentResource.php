<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class BookRentResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        return[
            'id'=>$this->id ?? null,
            'name' => $this->name ?? null,
            'phone'=> $this->phone ?? null,
            'email' => $this->email ?? null,
            'address' => $this->address ?? null,
            'rent_date' =>  Carbon::parse($this->rent_date)->format('m/d/Y') ?? null,
            'book_details' => new BookResource($this->books) ?? null
            
        ];
    }
}
