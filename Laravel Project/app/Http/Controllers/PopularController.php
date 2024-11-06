<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Writer;

class PopularController extends Controller
{
    public function index(){
        $article = Article::with('writer')->orderBy('click_count', 'desc')->paginate(3);
        $writer = Writer::all();
        return view('page.popular', compact('article', 'writer'));
    }
}
