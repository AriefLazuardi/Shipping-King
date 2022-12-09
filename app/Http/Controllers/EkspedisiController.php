<?php
namespace App\Http\Controllers;

use App\Models\Ekspedisi;
use Illuminate\Http\Request;

Class EkespedisiController extends Controller{

    public function showAllId()
    {
        $data = Ekspedisi::getId();
        return $data;
    }

}