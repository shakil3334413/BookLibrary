<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SigninRequest;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function signin(SigninRequest $request)
    {

        $credentails = $request->only(['email','password']);
        if (!Auth::attempt($credentails)) {
            return back()
            ->withErrors([
                'error' => 'Your email  or password was wrong.'
            ])
            ->withInput();
        }

        $request->session()->regenerate();

        return redirect()->intended()->with('success', 'You login successfully');
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login')->with('success', 'You logout successfully');
    }
}
