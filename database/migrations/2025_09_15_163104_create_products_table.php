<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    public function up()
    {





        Schema::create('products', function (Blueprint $table) {
            $table->id(); // clé primaire standard "id"

            // FK vers boutiques.id
            $table->foreignId('store_id')
                  ->constrained('boutiques')
                  ->onDelete('cascade');

            $table->string('name', 150);
            $table->text('description')->nullable();

            // FK vers categories.id
            $table->foreignId('category_id')
                  ->constrained('categories')
                  ->onDelete('restrict');

            $table->string('barcode', 50)->unique()->nullable();
            $table->integer('stock_quantity')->default(0);
            $table->decimal('unit_price', 10, 2);
            $table->decimal('min_order_volume', 10, 2)->nullable();
            $table->text('dimensions')->nullable();
            $table->string('storage_requirements')->nullable();
            $table->timestamps();
        });
        /*
        Schema::create('products', function (Blueprint $table) {
            $table->id('product_id');
            $table->foreignId('store_id')->constrained('boutiques', 'boutique_id')->onDelete('cascade');
            $table->string('name', 150);
            $table->text('description')->nullable();
            $table->foreignId('category_id')->constrained()->onDelete('restrict');
            $table->string('barcode', 50)->unique()->nullable();
            $table->integer('stock_quantity')->default(0);
            $table->decimal('unit_price', 10, 2);
            $table->decimal('min_order_volume', 10, 2)->nullable();
            $table->text('dimensions')->nullable();
            $table->string('storage_requirements')->nullable();
            $table->timestamps();
        });*/
    }

    public function down()
    {
        Schema::dropIfExists('products');
    }
}
