<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'client_id', 'product_id', 'product_name', 'price', 'quantity',
        'order_date', 'status', 'total_amount'
    ];

    public function client()
    {
        return $this->belongsTo(Client::class);
    }

    public function product()
    {
        return $this->belongsTo(Product::class);
    }
}
