<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Inventory extends Model
{
     protected $table = 'inventory'; // ⚡ nom exact de la table

    public $incrementing = true;
    protected $keyType = 'int';






    protected $primaryKey = 'id';
    protected $fillable = [
        'product_id', 'product_name', 'category_id', 'purchased_quantity',
        'sold_quantity', 'returned_quantity', 'damaged_quantity',
        'current_quantity', 'unit_price', 'total_cost', 'status'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
