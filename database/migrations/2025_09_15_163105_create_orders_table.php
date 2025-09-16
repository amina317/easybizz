<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
          Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('client_id')->constrained('clients')->onDelete('cascade');
            $table->foreignId('product_id')->constrained('products')->onDelete('restrict');
            $table->string('product_name');
            $table->decimal('price', 10, 2);
            $table->integer('quantity');
            $table->date('order_date');
            $table->enum('status', ['delivered', 'on_hold', 'canceled'])->default('on_hold');
            $table->decimal('total_amount', 12, 2);
            $table->timestamps();
        });
    }


















        /*
        Schema::create('orders', function (Blueprint $table) {
            $table->id('order_id');
            $table->foreignId('client_id')->constrained()->onDelete('cascade');
            $table->foreignId('product_id')->constrained()->onDelete('restrict');
            $table->string('product_name');
            $table->decimal('price', 10, 2);
            $table->integer('quantity');
            $table->date('order_date');
            $table->enum('status', ['delivered', 'on_hold', 'canceled'])->default('on_hold');
            $table->decimal('total_amount', 12, 2);
            $table->timestamps();
        });*/


    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
