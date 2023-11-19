<?php

namespace App\Repositories;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserRepository extends Repository
{
    public function model()
    {
        return User::class;
    }
}
