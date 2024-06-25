<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OwnershipStatus extends Model
{
    use HasFactory;

    protected $table = 'ownership_status';
    protected $fillable = [
        'name',
    ];
}
