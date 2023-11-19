<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Rent extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'book_id',
        'name',
        'email',
        'phone',
        'address',
        'rent_date',
        'return_date',
        'status',
        'copy'
    ];

    public function users(): BelongsTo
    {
        return $this->belongsTo(User::class,'user_id');
    }
    public function books(): BelongsTo
    {
        return $this->belongsTo(Book::class,'book_id');
    }


}
