<?php

namespace App\Http\Requests;

use App\Rules\ReCaptcha;
use Illuminate\Foundation\Http\FormRequest;

class SigninRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
    public function rules(): array
    {
        return [
            'email' => ['required'],
            'password' => ['required'],
            'g-recaptcha-response' => ['required', new ReCaptcha]
        ];
    }
}
