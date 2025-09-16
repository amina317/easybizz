<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBoutiquesTable extends Migration
{
    public function up()
    {
    Schema::create('boutiques', function (Blueprint $table) {
            $table->id(); // PK standard : "id"
            $table->string('name');
            $table->string('address');
            $table->boolean('status')->default(true);
            $table->timestamps();
        });

        /*
        Schema::create('boutiques', function (Blueprint $table) {
            $table->id('boutique_id');
            $table->string('name');
            $table->string('address');
            $table->boolean('status')->default(true);
            $table->timestamps();
        });*/
    }

    public function down()
    {
        Schema::dropIfExists('boutiques');
    }
}
