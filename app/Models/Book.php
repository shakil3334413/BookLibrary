<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Book extends Model
{
    use HasFactory,SoftDeletes;

    protected $fillable = [
        'title',
        'author',
        'page_count',
        'quantity',
        'revision_number',
        'description',
        'latest_release_date',
        'first_release_date',
        'thumbnail'

    ];
    public function scopeMostRecent(Builder $query):Builder
    {
        return $this->orderByDesc('created_at');
    }
    public function rents(): HasMany
    {
        return $this->hasMany(
            Rent::class,
            'book_id'
        );
    }
}
