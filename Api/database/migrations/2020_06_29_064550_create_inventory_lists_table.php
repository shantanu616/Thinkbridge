<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInventoryListsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inventory_lists', function (Blueprint $table) {
            $table->id();
            $table->string('request_id')->unique();
            $table->integer('user_id');
            $table->string('name');
            $table->text('description');
            $table->integer('price');
            $table->text('image_url');
            $table->integer('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('inventory_lists');
    }
}
