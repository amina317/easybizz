<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bizz extends Model
{
         protected $table = 'bizz';

    protected $primaryKey = 'id';
    protected $fillable = ['boutique_id', 'product_name', 'category_id', 'rating', 'reviews', 'price'];

    public function boutique()
    {
        return $this->belongsTo(Boutique::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function merchantInventory()
    {
        return $this->hasMany(MerchantInventory::class, 'product_id');
    }
}
