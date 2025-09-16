<?php

namespace App\Http\Controllers;

use App\Models\MerchantOrder;
use App\Http\Resources\MerchantOrderResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MerchantOrderController extends Controller
{
    public function index()
    {
        return MerchantOrderResource::collection(MerchantOrder::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'supplier_id' => 'required|exists:suppliers,id',
            'supplier_name' => 'required|string',
            'order_date' => 'required|date',
            'amount' => 'required|integer|min:0',
            'status' => 'required|in:pending,delivered,canceled',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $order = MerchantOrder::create($request->all());
        return new MerchantOrderResource($order);
    }

    public function show($id)
    {
        $order = MerchantOrder::findOrFail($id);
        return new MerchantOrderResource($order);
    }

    public function update(Request $request, $id)
    {
        $order = MerchantOrder::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'supplier_id' => 'sometimes|exists:suppliers,id',
            'supplier_name' => 'sometimes|string',
            'order_date' => 'sometimes|date',
            'amount' => 'sometimes|integer|min:0',
            'status' => 'sometimes|in:pending,delivered,canceled',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $order->update($request->all());
        return new MerchantOrderResource($order);
    }

    public function destroy($id)
    {
        $order = MerchantOrder::findOrFail($id);
        $order->delete();
        return response()->json(['message' => 'Merchant Order deleted']);
    }
}
