<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');
        Writer::create([
            'name' => $faker->name,
            'category' => 'Data Science',
            'imageURL' => '/Images/writer.jpg'
        ]);
        Writer::create([
            'name' => $faker->name,
            'category' => 'Data Science',
            'imageURL' => '/Images/writer.jpg'
        ]);
        Writer::create([
            'name' => $faker->name,
            'category' => 'Network Security',
            'imageURL' => '/Images/writer.jpg'
        ]);
    }
}
