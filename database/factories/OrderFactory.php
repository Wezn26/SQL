<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [            
            'CustomerID' => $this->faker->numberBetween(1, 99),
            'EmployeeID' => $this->faker->numberBetween(1, 9),
            'OrderDate'  => $this->faker->date('d.m.Y'),
            'ShipperID'  => $this->faker->numberBetween(1, 3)
        ];
    }
}
