<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Milestone;

class MilestoneController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {
        $data = Milestone::where('status', 'Active')
        ->orderBy('year', 'asc')
        ->get();

        return view('frontend.milestone',[
            "data"=>$data
        ]);
    }
}