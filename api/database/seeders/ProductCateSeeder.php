<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductCateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            ['name' => 'Antique', 'description' => 'Ancient items',],
            ['name' => 'Art', 'description' => 'Lifetime works',],
            ['name' => 'Picture', 'description' => 'Old photos have great value',],
            ['name' => 'Sculpture', 'description' => 'Statues of a lifetime',],
            ['name' => 'Wine', 'description' => 'adfad',],
            ['name' => 'Supercar', 'description' => 'adfad',],
            ['name' => 'Stamp', 'description' => 'adfad',],
            ['name' => 'Coins', 'description' => 'adfad',],
            ['name' => 'Weapon', 'description' => 'adfad',],
            ['name' => 'Wine', 'description' => 'adfad',],
        ];

        // Insert categories into product_categories table
        DB::table('categories')->insert($categories);
    }
}
