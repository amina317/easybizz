<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use App\Http\Resources\InventoryResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class InventoryController extends Controller
{
    public function index()
    {
        return InventoryResource::collection(Inventory::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:products,id',
            'product_name' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'purchased_quantity' => 'required|integer|min:0',
            'sold_quantity' => 'required|integer|min:0',
            'returned_quantity' => 'required|integer|min:0',
            'damaged_quantity' => 'required|integer|min:0',
            'current_quantity' => 'required|integer|min:0',
            'unit_price' => 'required|numeric|min:0',
            'total_cost' => 'required|numeric|min:0',
            'status' => 'required|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $inventory = Inventory::create($request->all());
        return new InventoryResource($inventory);
    }

    public function show($id)
    {
        $inventory = Inventory::findOrFail($id);
        return new InventoryResource($inventory);
    }

    public function update(Request $request, $id)
    {
        $inventory = Inventory::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'product_id' => 'sometimes|exists:products,id',
            'product_name' => 'sometimes|string',
            'category_id' => 'sometimes|exists:categories,id',
            'purchased_quantity' => 'sometimes|integer|min:0',
            'sold_quantity' => 'sometimes|integer|min:0',
            'returned_quantity' => 'sometimes|integer|min:0',
            'damaged_quantity' => 'sometimes|integer|min:0',
            'current_quantity' => 'sometimes|integer|min:0',
            'unit_price' => 'sometimes|numeric|min:0',
            'total_cost' => 'sometimes|numeric|min:0',
            'status' => 'sometimes|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $inventory->update($request->all());
        return new InventoryResource($inventory);
    }

    public function destroy($id)
    {
        $inventory = Inventory::findOrFail($id);
        $inventory->delete();
        return response()->json(['message' => 'Inventory deleted']);
    }
}
