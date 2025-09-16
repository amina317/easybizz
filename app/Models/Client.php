<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $primaryKey = 'id';   // clé primaire personnalisée
    public $incrementing = true;           // auto-incrément activé
    protected $keyType = 'int';            // type de la clé primaire

    protected $fillable = [
        'name',
        'email',
        'total_orders',
        'last_order_date'
    ];

    public function orders()
    {
        // si la table orders a une colonne client_id comme clé étrangère
        return $this->hasMany(Order::class, 'client_id', 'client_id');
    }
}
