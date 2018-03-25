<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\News;

class NewsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function detail($id)
    {
        $news = News::where('status', 'Active')->where('id',$id)->first();

        $other = News::where('status', 'Active')->where('id','!=',$id)
        ->orderBy('created_at', 'desc')
        ->take(10)
        ->get();

    
        return view('frontend.news_detail',[
            "news"=>$news,
            "other_news"=>$other
        ]);
    }

}