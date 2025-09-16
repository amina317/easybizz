<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MerchantInventory extends Model
{
    protected $table = 'merchant_inventory';
    protected $fillable = [
        'product_id', 'product_name', 'barcode', 'category_id',
        'purchased_quantity', 'sold_quantity', 'returned_quantity',
        'damaged_quantity', 'current_quantity', 'unit_price_ht',
        'total_cost', 'supplier_id', 'supplier_name'
    ];

    public function product()
    {
        return $this->belongsTo(Bizz::class, 'product_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }
}
