<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('amanati', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('trackCode')->unique();
            $table->integer('price');
            $table->integer('amount');
            $table->string('address');
            $table->string('comment');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('amanati');
    }
};