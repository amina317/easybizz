<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Http\Resources\OrderResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    public function index()
    {
        return OrderResource::collection(Order::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'client_id' => 'required|exists:clients,id',
            'product_id' => 'required|exists:products,id',
            'product_name' => 'required|string',
            'price' => 'required|numeric|min:0',
            'quantity' => 'required|integer|min:1',
            'order_date' => 'required|date',
            'status' => 'required|in:delivered,on_hold,canceled',
            'total_amount' => 'required|numeric|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $order = Order::create($request->all());
        return new OrderResource($order);
    }

    public function show($id)
    {
        $order = Order::findOrFail($id);
        return new OrderResource($order);
    }

    public function update(Request $request, $id)
    {
        $order = Order::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'client_id' => 'sometimes|exists:clients,id',
            'product_id' => 'sometimes|exists:products,id',
            'product_name' => 'sometimes|string',
            'price' => 'sometimes|numeric|min:0',
            'quantity' => 'sometimes|integer|min:1',
            'order_date' => 'sometimes|date',
            'status' => 'sometimes|in:delivered,on_hold,canceled',
            'total_amount' => 'sometimes|numeric|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $order->update($request->all());
        return new OrderResource($order);
    }

    public function destroy($id)
    {
        $order = Order::findOrFail($id);
        $order->delete();
        return response()->json(['message' => 'Order deleted']);
    }
}
