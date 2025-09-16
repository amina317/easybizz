<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name'];

    public function products()
    {
        return $this->hasMany(Product::class, 'category_id');
    }

    public function bizz()
    {
        return $this->hasMany(Bizz::class, 'category_id');
    }

    public function inventory()
    {
        return $this->hasMany(Inventory::class, 'category_id');
    }

    public function merchantInventory()
    {
        return $this->hasMany(MerchantInventory::class, 'category_id');
    }
}
