<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;
use App\Models\Article;

class HomeController extends Controller
{
    public function index(){
        $writer = Writer::all();
        $article = Article::latest()->limit(3)->get();
        return view('page.home', compact('article', 'writer'));
    }
}
