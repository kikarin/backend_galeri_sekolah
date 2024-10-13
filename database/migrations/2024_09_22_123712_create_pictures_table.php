<?php


use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePicturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pictures', function (Blueprint $table) {
            $table->id(); // Bigint, auto-increment, unsigned
            $table->foreignId('album_id')->constrained('albums')->onDelete('cascade'); // Foreign key to albums table
            $table->string('image_url', 255); // Varchar with length 255
            $table->timestamps(); // created_at and updated_at, both nullable
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pictures');
    }
}
