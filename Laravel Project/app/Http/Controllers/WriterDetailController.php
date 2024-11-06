<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Writer;
use Illuminate\Http\Request;

class WriterDetailController extends Controller
{
    public function index($id){
        $article = Article::all();
        $writer = Writer::all();
        return view('page.writerdetail', compact('article', 'writer'))->with('id', $id);
    }
}
