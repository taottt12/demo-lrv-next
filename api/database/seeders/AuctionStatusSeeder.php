<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AuctionStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $statuses = [
            [
                'name' => 'active',
                'description' => 'Product is currently undergoing auction',
            ],
            [
                'name' => 'pending',
                'description' => 'Product is waiting for approval to be auctioned',
            ],
            [
                'name' => 'closed',
                'description' => 'Auction for the product has ended',
            ],
            [
                'name' => 'sold',
                'description' => 'Product has been sold through auction',
            ],
            [
                'name' => 'unsold',
                'description' => 'Product did not receive any bids or did not meet reserve price',
            ],
            [
                'name' => 'withdrawn',
                'description' => 'Product was withdrawn from auction before completion',
            ],
        ];

        // Insert statuses into the auction_status table
        DB::table('auction_status')->insert($statuses);
    }
}
