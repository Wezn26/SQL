<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Supplier>
 */
class SupplierFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'SupplierName' => $this->faker->company(),
            'ContactName' => $this->faker->name(),
            'Address' => $this->faker->address(),
            'City' => $this->faker->city(),
            'PostalCode' => $this->faker->postcode(),
            'Country' => $this->faker->country(),
            'Phone' => $this->faker->phoneNumber()
        ];
    }
}
