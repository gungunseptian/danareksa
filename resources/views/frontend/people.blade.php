@extends('frontend.layout.master')


@section('content')


<div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.ourpeople.png">
              <div class="desc-top-banner">
                <div class="title-banner">Our People</div>
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
              <li>Our People</li>
            </ol>
          </div>
        </div>
        <div class="row row-people">
        
        @foreach($data as $val)
          <div class="col-sm-4 col-lg-4 col-md-4 col-xs-12 col-people">
            <div class="frame-list-people wow fadeInUp">
              <a href="#">
                <div class="thumb-danareksa thumb-people"><img src="/{{ $val->image }}"></div>
                <div class="desc-people">
                  <div class="title-people">{{ $val->title }}</div>
                  <div class="subtitle-people">{{ $val->position }}</div>
                  <div class="socmed-people">
                    <a href="#"><span class="in">IN</span></a>
                    <a href="#"><span class="fb">FB</span></a>
                    <a href="#"><span class="tw">TW</span></a>
                  </div>
                </div>
              </a>
            </div>

          </div>
          @endforeach

        </div>
        <div class="row mt30">
          <div class="col-sm-12 col-md-12 col-xs-12 mb50">
            <div class="footer-banner-link">
              <span><a href="#" class="btn-blue">Board of Commisioners</a></span>
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