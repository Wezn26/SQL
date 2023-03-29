<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Customer>
 */
class CustomerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'CustomerName' => $this->faker->name(),
            'ContactName' => $this->faker->userName(),
            'Address' => $this->faker->address(),
            'City' =>$this->faker->city(),
            'PostalCode' => $this->faker->postcode(),
            'Country' =>$this->faker->country()

        ];
    }
}
