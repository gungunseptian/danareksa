<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Pages;

class PagesController extends Controller
{   

    var $about_us_id = 1;
    var $vision_id = 6;
    var $mission_id = 22;
    
    public function about()
    {
      
        $data = Pages::where('status', 'Active')->where('id',$this->about_us_id)->first();
    
        return view('frontend.about',[
            "data"=>$data
        ]);
    }

    public function values()
    {
      
        $vision = Pages::where('status', 'Active')->where('id',$this->vision_id)->first();
        $mision = Pages::where('status', 'Active')->where('id',$this->mission_id)->first();

        $data['c'] = Pages::where('status', 'Active')->where('id',7)->first();
        $data['a'] = Pages::where('status', 'Active')->where('id',23)->first();
        $data['r'] = Pages::where('status', 'Active')->where('id',25)->first();
        $data['e'] = Pages::where('status', 'Active')->where('id',27)->first();
        $data['s'] = Pages::where('status', 'Active')->where('id',28)->first();
        $data['values'] = Pages::where('status', 'Active')->where('id',8)->first();
    
        return view('frontend.values',[
            "vision"=>$vision,
            "mision"=>$mision,
            "data"=>$data
        ]);
    }

}