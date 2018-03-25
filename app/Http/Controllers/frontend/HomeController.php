<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\News;

class HomeController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {
        $news = News::where('status', 'Active')
        ->orderBy('created_at', 'desc')
        ->take(10)
        ->get();

        return view('frontend.home',[
            "news"=>$news
        ]);
    }
}