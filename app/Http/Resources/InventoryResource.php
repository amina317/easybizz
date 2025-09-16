<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class InventoryResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'                => $this->id,
            'product_id'        => $this->product_id,
            'product_name'      => $this->product_name,
            'category_id'       => $this->category_id,
            'purchased_quantity'=> $this->purchased_quantity,
            'sold_quantity'     => $this->sold_quantity,
            'returned_quantity' => $this->returned_quantity,
            'damaged_quantity'  => $this->damaged_quantity,
            'current_quantity'  => $this->current_quantity,
            'unit_price'        => $this->unit_price,
            'total_cost'        => $this->total_cost,
            'status'            => $this->status,
            'created_at'        => $this->created_at,
            'updated_at'        => $this->updated_at,
        ];
    }
}
