<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Writer;

class DsController extends Controller
{
    public function index(){
        $writer = Writer::all();
        $article = Article::where('category', 'Data Science')->get();
        return view('page.ds', compact('article', 'writer'));
    }
}
