<?php

namespace App\Http\Controllers;

use App\Models\Kuliah;
use Illuminate\Http\Request;

class KuliahController extends Controller
{
    public function tampil()
    {
        return "hasil perkuliahan";
    }

    public function kuliahSore()
    {
        $model = new Kuliah();
        return $model->sore();
    }

    public function kuliahPagi($id)
    {
        $model = new Kuliah();
        $data = $model->pagi();
        return "{$data} bersama {$id}";
    }

    public function kuliahSiang(Request $request)
    {
        $model = new Kuliah();
        $data = $model->pagi();
        return "{$data} bersama {$request->nama}";
    }
}
