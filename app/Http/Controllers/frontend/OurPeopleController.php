<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\People;

class OurPeopleController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {
        $data = People::where('status', 'Active')
        ->orderBy('created_at', 'desc')
        ->get();

        return view('frontend.people',[
            "data"=>$data
        ]);
    }
}