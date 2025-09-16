<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BizzResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'           => $this->id,
            'boutique_id'  => $this->boutique_id,
            'product_name' => $this->product_name,
            'category_id'  => $this->category_id,
            'rating'       => $this->rating,
            'reviews'      => $this->reviews,
            'price'        => $this->price,
            'created_at'   => $this->created_at,
            'updated_at'   => $this->updated_at,
        ];
    }
}
