<?php
namespace App\Models;
use Illuminate\Support\Facades\DB;
use App\Models\Pengiriman;

class Layanan {
    public $id;
    public $ekspedisi_id;
    public $nama_layanan;
    public $ekspedisi_layanan;
    public $harga_pergram;

    public static function filter()
    {   
    }
    public static function share()
    {
    }

}

