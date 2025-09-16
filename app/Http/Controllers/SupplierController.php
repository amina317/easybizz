<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    // Liste tous les suppliers
    public function index()
    {
        return response()->json(Supplier::all());
    }

    // Créer un supplier
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name'    => 'required|string|max:255',
            'email'   => 'required|email|unique:suppliers,email',
            'address' => 'nullable|string|max:255',
        ]);

        $supplier = Supplier::create($validated);
        return response()->json($supplier, 201);
    }

    // Afficher un supplier
    public function show($id)
    {
        $supplier = Supplier::findOrFail($id);
        return response()->json($supplier);
    }

    // Mettre à jour un supplier
    public function update(Request $request, $id)
    {
        $supplier = Supplier::findOrFail($id);

        $validated = $request->validate([
            'name'    => 'sometimes|string|max:255',
            'email'   => 'sometimes|email|unique:suppliers,email,' . $supplier->id,
            'address' => 'nullable|string|max:255',
        ]);

        $supplier->update($validated);
        return response()->json($supplier);
    }

    // Supprimer un supplier
    public function destroy($id)
    {
        $supplier = Supplier::findOrFail($id);
        $supplier->delete();

        return response()->json(['message' => 'Supplier deleted']);
    }
}
