<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RentRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'book_id' => 'required|exists:books,id',
            'name' => 'required|string',
            'phone' => 'required|string',
            'email' => 'required|email',
            'address' => 'required|string',
            'quantity' => 'required|integer'
        ];
    }
}
