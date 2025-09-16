<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ClientResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'client_id'       => $this->id,
            'name'            => $this->name,
            'email'           => $this->email,
            'total_orders'    => $this->total_orders,
            'last_order_date' => $this->last_order_date,
            'created_at'      => $this->created_at,
            'updated_at'      => $this->updated_at,
        ];
    }
}
