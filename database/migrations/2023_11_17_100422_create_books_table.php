<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('author')->nullable();
            $table->integer('page_count')->nullable();
            $table->integer('quantity')->nullable();
            $table->longText('thumbnail')->nullable();
            $table->string('revision_number')->nullable();
            $table->longText('description')->nullable();
            $table->string('latest_release_date')->nullable();
            $table->string('first_release_date')->nullable();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
