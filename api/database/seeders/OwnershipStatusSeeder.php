<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OwnershipStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $status = [
            ['name' => 'Owned'],
            ['name' => 'No owner'],
            ['name' => 'Consigned'],
        ];

        DB::table('ownership_status')->insert($status);
    }
}
