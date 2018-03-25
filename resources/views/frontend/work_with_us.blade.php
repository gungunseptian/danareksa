
@extends('frontend.layout.master')


@section('content')
 
 <div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.workwithus.png">
              <div class="desc-top-banner">
                <div class="title-banner">Be Part of Our Family</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12">
            <ol class="breadcrumb">
              <li><a href="/">Home</a></li>
              <li>Work With Us</li>
            </ol>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12 mt10 mb30">
            <div class="title-frame text-center">Our Culture</div>
            <div class="intro-frame text-center">{{ $data->subtitle }}</div>
          </div>
          <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 mb30 ">
            <div class="frame-services fs-ib pr50">
              <img src="/frontend/images/solid-team-work.jpg">
              <h2>Solid Team Work</h2>
              <div class="desc-services text-center mt15">
                With the whole team working hard in their different roles, we are efficiently helping this company grow successfully.
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 mb30">
            <div class="frame-services fs-ib pl50">
              <img src="/frontend/images/development-program.jpg">
              <h2>Development Program</h2>
              <div class="desc-services text-center mt15">
                We have program that helps employees learn specific knowledge or skills to improve perfomance in their current roles.
              </div>
            </div>
          </div>
          <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12 text-center mb30">
            <div class="intro-wwu">{{ strip_tags(trim($data->description)) }}</div>
          </div>

        </div>
      </div>
    </div>

    <div class="container-fluid bg-grey pt50 pb50">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12 text-center mb30">
            <div class="subtitle-frame">At Danareksa Sekuritas the career opportunities are many and varied.</div>
            <div class="title-frame mb30">Discover the possibilities of joining us!</div>
            <div class="panel-group accordion-wwus" id="accordion" role="tablist" aria-multiselectable="true">
              <?php $i=0;?>
              @foreach($jobs as $job)
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="{{ $i }}">
                  <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse{{ $i }}" aria-expanded="true" aria-controls="collapse{{ $i }}">
                      {{ $job->title }}
                    </a>
                  </h4>
                </div>
                <div id="collapse{{ $i }}" class="panel-collapse collapse {{ $i==0 ? "in" : "" }}" role="tabpanel" aria-labelledby="{{ $i }}">
                  <div class="panel-body">
                     <p>{!! strip_tags($job->description,"<li><ul><b>") !!}</p>
                      
                    <div class="clear"></div>
                    <a href="#" class="btn-blue-full">Submit Resume Now</a>
                  </div>
                </div>
              </div>
              <?php $i++;?>
              @endforeach
              
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="container-fluid cf-link-white">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 text-center">
            <div class="link-our-desc">
              <span>Have question/feedback or want to know more about us?</span>
              <a href="#" class="btn-blue">COntact US</a>
            </div>
          </div>        
        </div>
      </div>
    </div>

@endsection