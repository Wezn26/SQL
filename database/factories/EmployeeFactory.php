<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Employee>
 */
class EmployeeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'LastName' => $this->faker->lastName(),
            'FirstName' => $this->faker->firstName(),
            'BirthDate' => $this->faker->date(),
            'Photo' => $this->faker->image(),
            'Notes' => $this->faker->text()
        ];
    }
}
