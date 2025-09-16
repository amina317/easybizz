<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OrderResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'           => $this->id,
            'client_id'    => $this->client_id,
            'product_id'   => $this->product_id,
            'product_name' => $this->product_name,
            'price'        => $this->price,
            'quantity'     => $this->quantity,
            'order_date'   => $this->order_date,
            'status'       => $this->status,
            'total_amount' => $this->total_amount,
            'created_at'   => $this->created_at,
            'updated_at'   => $this->updated_at,
        ];
    }
}
