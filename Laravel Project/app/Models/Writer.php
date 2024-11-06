<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Writer extends Model
{
    use HasFactory;
    protected $table = 'writer';
    protected $guarded = [];

    public function articles(){
        return $this->hasMany(Article::class);
    }
}
