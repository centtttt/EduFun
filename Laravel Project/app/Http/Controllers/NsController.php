<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;
use App\Models\Article;

class NsController extends Controller
{
    public function index(){
        $writer = Writer::all();
        $article = Article::where('category', 'Network Security')->get();
        return view('page.ns', compact('article', 'writer'));
    }
}
