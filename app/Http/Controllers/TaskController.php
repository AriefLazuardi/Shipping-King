<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function showAllTask()
    {
        $data = Task::getAllTask();
        return $data;
    }

    public function insertTask(Request $request)
    {
        $task = new Task();
        $task->name = $request->name;
        $task->created_at = $request->created_at;
        $task->updated_at = $request->updated_at;
        $task->insert();
        return json_encode($task);
    }
}