<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kuliah extends Model
{
    use HasFactory;

    public function sore()
    {
        $mata_kuliah = "Pemrograman Berorientasi Objek";
        return $mata_kuliah;
    }

    public function pagi()
    {
        return "Kita kuliah pagi";
    }
}
