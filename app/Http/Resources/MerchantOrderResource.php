<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MerchantOrderResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id'            => $this->id,
            'supplier_id'   => $this->supplier_id,
            'supplier_name' => $this->supplier_name,
            'order_date'    => $this->order_date,
            'amount'        => $this->amount,
            'status'        => $this->status,
            'created_at'    => $this->created_at,
            'updated_at'    => $this->updated_at,
        ];
    }
}
