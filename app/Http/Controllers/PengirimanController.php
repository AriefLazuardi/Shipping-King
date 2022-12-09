<?php

namespace App\Http\Controllers;

use App\Models\Pengiriman;
use Illuminate\Http\Request;

class PengirimanController extends Controller
{

  public function periksa(Request $request)
  {

    $cek = new Pengiriman();
    $isValid = $cek->setBerat($request->berat_gram);
    if ($isValid) {
      $periksa = $cek->showAllPengiriman($request->asal, $request->tujuan);
      return $periksa;
    } else {
      return "Gagal Periksa. Data yang diinputkan tidak sesuai";
    }
  }
}
