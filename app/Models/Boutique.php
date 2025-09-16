<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Boutique extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = ['name', 'address', 'status'];

    public function products()
    {
        return $this->hasMany(Product::class, 'store_id', 'boutique_id');
    }

    public function bizz()
    {
        return $this->hasMany(Bizz::class);
    }
}
