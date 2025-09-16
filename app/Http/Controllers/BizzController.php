<?php

namespace App\Http\Controllers;

use App\Models\Bizz;
use App\Http\Resources\BizzResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BizzController extends Controller
{
    public function index()
    {
        return BizzResource::collection(Bizz::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'boutique_id' => 'required|exists:boutiques,id',
            'product_name' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'rating' => 'nullable|numeric|min:0|max:5',
            'reviews' => 'nullable|integer|min:0',
            'price' => 'required|numeric|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $bizz = Bizz::create($request->all());
        return new BizzResource($bizz);
    }

    public function show($id)
    {
        $bizz = Bizz::findOrFail($id);
        return new BizzResource($bizz);
    }

    public function update(Request $request, $id)
    {
        $bizz = Bizz::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'boutique_id' => 'sometimes|exists:boutiques,id',
            'product_name' => 'sometimes|string',
            'category_id' => 'sometimes|exists:categories,id',
            'rating' => 'nullable|numeric|min:0|max:5',
            'reviews' => 'nullable|integer|min:0',
            'price' => 'sometimes|numeric|min:0',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $bizz->update($request->all());
        return new BizzResource($bizz);
    }

    public function destroy($id)
    {
        $bizz = Bizz::findOrFail($id);
        $bizz->delete();
        return response()->json(['message' => 'Bizz deleted']);
    }
}
