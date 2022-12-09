<?php
namespace App\Models;
use Illuminate\Support\Facades\DB;

class Ekspedisi{

    public $id;
    public $nama_ekspedisi;
    public $url;

    public static function navigasi()
    {
    }

    public static function getId()
    {
        $results = DB::select('select * from ekspedisi');
        return $results;
    }

    public static function getUrl()
    {
    }
    
    
}