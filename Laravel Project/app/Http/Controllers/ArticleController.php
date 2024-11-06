<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Writer;

class ArticleController extends Controller
{
    public function index($id){
        $article = Article::all();
        $articles = Article::findOrFail($id);
        $articles->click_count += 1;
        $articles->save();
        $writer = Writer::all();
        return view('page.articledetail',  compact('article', 'writer'))->with('id', $id);
    }
}
