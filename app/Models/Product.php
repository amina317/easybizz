<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'store_id', 'name', 'description', 'category_id', 'barcode',
        'stock_quantity', 'unit_price', 'min_order_volume', 'dimensions',
        'storage_requirements'
    ];

    public function store()
    {
        return $this->belongsTo(Boutique::class, 'store_id', 'boutique_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function orders()
    {
        return $this->hasMany(Order::class);
    }

    public function inventory()
    {
        return $this->hasMany(Inventory::class);
    }
}
