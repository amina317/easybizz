<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBizzTable extends Migration
{
    public function up()
    {




 Schema::create('bizz', function (Blueprint $table) {
            $table->id();
            $table->foreignId('boutique_id')->constrained('boutiques')->onDelete('cascade');
            $table->foreignId('category_id')->constrained('categories')->onDelete('restrict');
            $table->string('product_name');
            $table->decimal('rating', 3, 1)->nullable();
            $table->integer('reviews')->default(0);
            $table->decimal('price', 10, 2);
            $table->timestamps();
        });


        /*
        Schema::create('bizz', function (Blueprint $table) {
            $table->id('product_id');
            $table->foreignId('boutique_id')->constrained()->onDelete('cascade');
            $table->string('product_name');
            $table->foreignId('category_id')->constrained()->onDelete('restrict');
            $table->decimal('rating', 3, 1)->nullable();
            $table->integer('reviews')->default(0);
            $table->decimal('price', 10, 2);
            $table->timestamps();
        });*/
    }

    public function down()
    {
        Schema::dropIfExists('bizz');
    }
}
