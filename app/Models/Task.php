<?php

namespace App\Models;
use Illuminate\Support\Facades\DB;

class Task
{

    public $name;
    public $created_at;
    public $updated_at;

    public static function getAllTask()
    {
        $results = DB::select('select * from tasks');
        return $results;
    }

    public function insert()
    {
        DB::insert('insert into tasks (name,created_at,updated_at) values (:name, :create, :update)', 
        [
            'name' => $this->name,
            'create'=>$this->created_at,
            'update'=>$this->updated_at
        ]); 
    }
}