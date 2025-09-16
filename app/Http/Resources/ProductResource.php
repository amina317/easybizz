<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'                => $this->id,
            'store_id'          => $this->store_id,
            'name'              => $this->name,
            'description'       => $this->description,
            'category_id'       => $this->category_id,
            'barcode'           => $this->barcode,
            'stock_quantity'    => $this->stock_quantity,
            'unit_price'        => $this->unit_price,
            'min_order_volume'  => $this->min_order_volume,
            'dimensions'        => $this->dimensions,
            'storage_requirements' => $this->storage_requirements,
            'created_at'        => $this->created_at,
            'updated_at'        => $this->updated_at,
        ];
    }
}

