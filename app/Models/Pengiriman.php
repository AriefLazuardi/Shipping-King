<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class Pengiriman
{
    public $asal;
    public $tujuan;
    private $berat_gram;

    public function setBerat($berat_gram)
    {
        $interest = $berat_gram;
        if (isset($interest)) {
            if (is_numeric($interest) && !is_float($interest + 0)) {
                $this->berat_gram = $interest;
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function getBerat()
    {
        return $this->berat_gram;
    }

    public function showAllPengiriman($asal, $tujuan)
    {
        $results = DB::select("SELECT 
                    nama_ekspedisi,
                    nama_layanan,
                    deskripsi_layanan,
                    harga_pergram,
                    estimasi 
                    from pengiriman LEFT JOIN layanan ON layanan.id=pengiriman.layanan_id
                                    LEFT JOIN ekspedisi ON ekspedisi.id=layanan.ekspedisi_id 
                    WHERE 
                    `asal`='{$asal}' and 
                    `tujuan`='{$tujuan}' and 
                    `berat_gram`='{$this->berat_gram}'");
        return $results;
    }
    public function input()
    {
    }
}
