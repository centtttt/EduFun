<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WritersController extends Controller
{
    public function index(){
        $writer = Writer::all();
        return view('page.writers', compact('writer'));
    }
}
