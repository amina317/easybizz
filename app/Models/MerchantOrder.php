<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MerchantOrder extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['supplier_id', 'supplier_name', 'order_date', 'amount', 'status'];

    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }
}
