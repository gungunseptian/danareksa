<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Awards;

class AwardsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {
        $data = Awards::where('status', 'Active')
        ->orderBy('year', 'desc')
        ->get();
        
        $groups = [];
        $i=0;
        foreach($data as $val){
            $groups[$val->year][$i]['title'] = $val->title;
            $groups[$val->year][$i]['description'] = $val->description;
            $i++;
        }

        return view('frontend.awards',[
            "groups"=>$groups
        ]);
    }
}