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
            'ProductName' => $this->faker->sentence(3),
            'SupplierID' => $this->faker->numberBetween(1, 30),
            'CategoryID' => $this->faker->numberBetween(1, 8),
            'Unit' => $this->faker->numerify('bottles-###'),
            'Price' => $this->faker->randomFloat(2, 20, 200)
        ];
    }
}
