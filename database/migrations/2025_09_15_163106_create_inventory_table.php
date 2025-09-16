<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInventoryTable extends Migration
{
    public function up()
    {

 Schema::create('inventory', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
            $table->foreignId('category_id')->constrained('categories')->onDelete('restrict');
            $table->string('product_name');
            $table->integer('purchased_quantity')->default(0);
            $table->integer('sold_quantity')->default(0);
            $table->integer('returned_quantity')->default(0);
            $table->integer('damaged_quantity')->default(0);
            $table->integer('current_quantity')->default(0);
            $table->decimal('unit_price', 10, 2);
            $table->decimal('total_cost', 12, 2);
            $table->boolean('status')->default(true);
            $table->timestamps();
        });






        /*
        Schema::create('inventory', function (Blueprint $table) {
            $table->id('seller_id');
            $table->foreignId('product_id')->constrained()->onDelete('cascade');
            $table->string('product_name');
            $table->foreignId('category_id')->constrained()->onDelete('restrict');
            $table->integer('purchased_quantity')->default(0);
            $table->integer('sold_quantity')->default(0);
            $table->integer('returned_quantity')->default(0);
            $table->integer('damaged_quantity')->default(0);
            $table->integer('current_quantity')->default(0);
            $table->decimal('unit_price', 10, 2);
            $table->decimal('total_cost', 12, 2);
            $table->boolean('status')->default(true);
            $table->timestamps();
        });*/
    }

    public function down()
    {
        Schema::dropIfExists('inventory');
    }
}
