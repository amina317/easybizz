<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\InventoryController;
use App\Http\Controllers\BoutiqueController;
use App\Http\Controllers\BizzController;
use App\Http\Controllers\MerchantInventoryController;
use App\Http\Controllers\MerchantOrderController;
use App\Http\Controllers\SupplierController;


Route::prefix('supplier')->group(function () {
    Route::apiResource('products', ProductController::class);
    Route::apiResource('orders', OrderController::class);
    Route::apiResource('clients', ClientController::class);
    Route::apiResource('inventory', InventoryController::class);
});

Route::prefix('merchant')->group(function () {
    Route::apiResource('boutiques', BoutiqueController::class);
    Route::apiResource('bizz', BizzController::class);
    Route::apiResource('inventory', MerchantInventoryController::class);
    Route::apiResource('orders', MerchantOrderController::class);
});


Route::apiResource('suppliers', SupplierController::class);
