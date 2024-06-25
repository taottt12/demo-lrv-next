<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->word,
            'price' => fake()->randomFloat(2, 1, 100), // Generates a float between 1 and 100 with 2 decimal places
            'quantity' => fake()->numberBetween(1, 100), // Generates an integer between 1 and 100
            'image' => fake()->imageUrl, // Generates a URL for an image
            'status' => fake()->randomElement(['new', 'old']), // Example statuses
            'ownership_status_id' => 2, // Sets ownership_status_id to 2
            'description' => fake()->sentence,
        ];
    }
}
