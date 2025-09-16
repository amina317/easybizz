<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Resources\ProductResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index()
    {
        return ProductResource::collection(Product::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'store_id' => 'required|exists:boutiques,id',
            'name' => 'required|string|max:150',
            'description' => 'nullable|string',
            'category_id' => 'required|exists:categories,id',
            'barcode' => 'nullable|string|max:50|unique:products',
            'stock_quantity' => 'required|integer|min:0',
            'unit_price' => 'required|numeric|min:0',
            'min_order_volume' => 'nullable|numeric|min:0',
            'dimensions' => 'nullable|string',
            'storage_requirements' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $product = Product::create($request->all());
        return new ProductResource($product);
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);
        return new ProductResource($product);
    }

    public function update(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'store_id' => 'sometimes|exists:boutiques,id',
            'name' => 'sometimes|string|max:150',
            'description' => 'nullable|string',
            'category_id' => 'sometimes|exists:categories,id',
            'barcode' => 'nullable|string|max:50|unique:products,barcode,' . $id . ',id',
            'stock_quantity' => 'sometimes|integer|min:0',
            'unit_price' => 'sometimes|numeric|min:0',
            'min_order_volume' => 'nullable|numeric|min:0',
            'dimensions' => 'nullable|string',
            'storage_requirements' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $product->update($request->all());
        return new ProductResource($product);
    }

    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();
        return response()->json(['message' => 'Product deleted']);
    }
}
