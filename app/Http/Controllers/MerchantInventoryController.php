<?php

namespace App\Http\Controllers;

use App\Models\MerchantInventory;
use App\Http\Resources\MerchantInventoryResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MerchantInventoryController extends Controller
{
    public function index()
    {
        return MerchantInventoryResource::collection(MerchantInventory::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|exists:bizz,id',
            'product_name' => 'required|string',
            'barcode' => 'nullable|string|max:50|unique:merchant_inventory',
            'category_id' => 'required|exists:categories,id',
            'purchased_quantity' => 'required|integer|min:0',
            'sold_quantity' => 'required|integer|min:0',
            'returned_quantity' => 'required|integer|min:0',
            'damaged_quantity' => 'required|integer|min:0',
            'current_quantity' => 'required|integer|min:0',
            'unit_price_ht' => 'required|numeric|min:0',
            'total_cost' => 'required|numeric|min:0',
            'supplier_id' => 'required|exists:suppliers,id',
            'supplier_name' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $inventory = MerchantInventory::create($request->all());
        return new MerchantInventoryResource($inventory);
    }

    public function show($id)
    {
        $inventory = MerchantInventory::findOrFail($id);
        return new MerchantInventoryResource($inventory);
    }

    public function update(Request $request, $id)
    {
        $inventory = MerchantInventory::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'product_id' => 'sometimes|exists:bizz,id',
            'product_name' => 'sometimes|string',
            'barcode' => 'nullable|string|max:50|unique:merchant_inventory,barcode,' . $id,
            'category_id' => 'sometimes|exists:categories,id',
            'purchased_quantity' => 'sometimes|integer|min:0',
            'sold_quantity' => 'sometimes|integer|min:0',
            'returned_quantity' => 'sometimes|integer|min:0',
            'damaged_quantity' => 'sometimes|integer|min:0',
            'current_quantity' => 'sometimes|integer|min:0',
            'unit_price_ht' => 'sometimes|numeric|min:0',
            'total_cost' => 'sometimes|numeric|min:0',
            'supplier_id' => 'sometimes|exists:suppliers,id',
            'supplier_name' => 'sometimes|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $inventory->update($request->all());
        return new MerchantInventoryResource($inventory);
    }

    public function destroy($id)
    {
        $inventory = MerchantInventory::findOrFail($id);
        $inventory->delete();
        return response()->json(['message' => 'Merchant Inventory deleted']);
    }
}
