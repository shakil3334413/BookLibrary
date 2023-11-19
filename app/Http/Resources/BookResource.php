<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BookResource extends JsonResource
{
   
    public function toArray(Request $request): array
    {
        return[
            'id'=>$this->id ?? null,
            'title' => $this->title ?? null,
            'author'=> $this->author ?? null,
            'page_count' => $this->page_count ?? null,
            'quantity' => $this->quantity ?? null,
            'thumbnail' => $this->thumbnail ?? null,
            'revision_number' => $this->revision_number ?? null,
            'description' => $this->description ?? null,
            'latest_release_date' => $this->latest_release_date ?? null,
            'first_release_date' => $this->first_release_date ?? null
        ];
    }
}
