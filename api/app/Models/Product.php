<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $table = 'products';
    protected $fillable = [
        'name',
        'price',
        'quantity',
        'image',
        'status',
        'ownership_status_id',
        'description',
        'user_id',
    ];

    public function ownershipStatus()
    {
        return $this->belongsTo(OwnershipStatus::class, 'ownership_status_id');
    }

    public function userProduct()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
