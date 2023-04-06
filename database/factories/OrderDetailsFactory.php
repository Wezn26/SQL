<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OrderDetails>
 */
class OrderDetailsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'OrderID' => $this->faker->numberBetween(10248, 11077),
            'ProductID' => $this->faker->numberBetween(1, 100),
            'Quantity' => $this->faker->numberBetween(1, 101)
        ];
    }
}
