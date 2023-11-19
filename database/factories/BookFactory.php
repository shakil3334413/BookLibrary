<?php

namespace Database\Factories;

use App\Repositories\UserRepository;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    public function definition(): array
    {
        return [
           'title' => $this->faker->name,
           'author' => $this->faker->name,
           'page_count' => rand(100,400),
           'quantity' => rand(20,40),
           'revision_number' => rand(100,300),
           'description' => $this->faker->text,
           'latest_release_date' =>  $this->faker->date(),
           'first_release_date' =>  $this->faker->date(),
        ];
    }
}
