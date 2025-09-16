<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMerchantOrdersTable extends Migration
{
    public function up()
    {




        /*
        Schema::create('merchant_orders', function (Blueprint $table) {
            $table->id('order_id');
            $table->foreignId('supplier_id')->constrained('suppliers')->onDelete('restrict');
            $table->string('supplier_name');
            $table->date('order_date');
            $table->integer('amount');
            $table->enum('status', ['pending', 'delivered', 'canceled'])->default('pending');
            $table->timestamps();
        });*/


      Schema::create('merchant_orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('supplier_id')->constrained('suppliers')->onDelete('restrict');
            $table->string('supplier_name');
            $table->date('order_date');
            $table->integer('amount');
            $table->enum('status', ['pending', 'delivered', 'canceled'])->default('pending');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('merchant_orders');
    }
}
