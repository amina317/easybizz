<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMerchantInventoryTable extends Migration
{
    public function up()
    {
     Schema::create('merchant_inventory', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('bizz')->onDelete('cascade');
            $table->foreignId('category_id')->constrained('categories')->onDelete('restrict');
            $table->foreignId('supplier_id')->constrained('suppliers')->onDelete('restrict');
            $table->string('product_name');
            $table->string('barcode')->unique()->nullable();
            $table->integer('purchased_quantity')->default(0);
            $table->integer('sold_quantity')->default(0);
            $table->integer('returned_quantity')->default(0);
            $table->integer('damaged_quantity')->default(0);
            $table->integer('current_quantity')->default(0);
            $table->decimal('unit_price_ht', 10, 2);
            $table->decimal('total_cost', 12, 2);
            $table->string('supplier_name');
            $table->timestamps();
        });













        /*
        Schema::create('merchant_inventory', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('bizz', 'product_id')->onDelete('cascade');
            $table->string('product_name');
            $table->string('barcode')->unique()->nullable();
            $table->foreignId('category_id')->constrained()->onDelete('restrict');
            $table->integer('purchased_quantity')->default(0);
            $table->integer('sold_quantity')->default(0);
            $table->integer('returned_quantity')->default(0);
            $table->integer('damaged_quantity')->default(0);
            $table->integer('current_quantity')->default(0);
            $table->decimal('unit_price_ht', 10, 2);
            $table->decimal('total_cost', 12, 2);
            $table->foreignId('supplier_id')->constrained('suppliers')->onDelete('restrict');
            $table->string('supplier_name');
            $table->timestamps();
        });*/
    }

    public function down()
    {
        Schema::dropIfExists('merchant_inventory');
    }
}
