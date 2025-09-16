<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $primaryKey = 'supplier_id';
    protected $fillable = ['name', 'email', 'address'];

    public function merchantInventory()
    {
        return $this->hasMany(MerchantInventory::class, 'supplier_id');
    }

    public function merchantOrders()
    {
        return $this->hasMany(MerchantOrder::class, 'supplier_id');
    }
}
