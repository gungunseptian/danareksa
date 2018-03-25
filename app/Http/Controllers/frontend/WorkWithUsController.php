<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Pages;
use App\Models\Jobs;

class WorkWithUsController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function index()
    {
        $data = Pages::where('status', 'Active')->where('id',2)->first();
        $jobs = Jobs::where('status', 'Active')
                ->orderBy('created_at', 'desc')
                ->get();


        return view('frontend.work_with_us',[
            "data"=>$data,
            "jobs"=>$jobs
        ]);
    }
}