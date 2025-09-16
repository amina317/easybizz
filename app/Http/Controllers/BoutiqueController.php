<?php

namespace App\Http\Controllers;

use App\Models\Boutique;
use App\Http\Resources\BoutiqueResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BoutiqueController extends Controller
{
    public function index()
    {
        return BoutiqueResource::collection(Boutique::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'address' => 'required|string',
            'status' => 'required|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $boutique = Boutique::create($request->all());
        return new BoutiqueResource($boutique);
    }

    public function show($id)
    {
        $boutique = Boutique::findOrFail($id);
        return new BoutiqueResource($boutique);
    }

    public function update(Request $request, $id)
    {
        $boutique = Boutique::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|string',
            'address' => 'sometimes|string',
            'status' => 'sometimes|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $boutique->update($request->all());
        return new BoutiqueResource($boutique);
    }

    public function destroy($id)
    {
        $boutique = Boutique::findOrFail($id);
        $boutique->delete();
        return response()->json(['message' => 'Boutique deleted']);
    }
}
