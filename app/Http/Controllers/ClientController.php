<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Http\Resources\ClientResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ClientController extends Controller
{
    public function index()
    {
        return ClientResource::collection(Client::all());
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string',
            'email' => 'required|email|unique:clients',
            'total_orders' => 'nullable|integer|min:0',
            'last_order_date' => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $client = Client::create($request->all());
        return new ClientResource($client);
    }

    public function show($id)
    {
        $client = Client::findOrFail($id);
        return new ClientResource($client);
    }

    public function update(Request $request, $id)
    {
        $client = Client::findOrFail($id);
        $validator = Validator::make($request->all(), [
            'name' => 'sometimes|string',
            'email' => 'sometimes|email|unique:clients,email,' . $id . ',id',
            'total_orders' => 'nullable|integer|min:0',
            'last_order_date' => 'nullable|date',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $client->update($request->all());
        return new ClientResource($client);
    }

    public function destroy($id)
    {
        $client = Client::findOrFail($id);
        $client->delete();
        return response()->json(['message' => 'Client deleted']);
    }
}
