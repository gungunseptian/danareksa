@extends('frontend.layout.master')


@section('content')


<div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.about.png">
              <div class="desc-top-banner">
                <div class="title-banner">About Danareksa Sekuritas</div>
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
              <li>About Us</li>
            </ol>
          </div>
          <div class="col-lg-7 col-sm-7 col-md-7 col-xs-12 pb30">
            <div class="title-frame">{{ $data->title }}</div>
            <div class="intro-frame mb30">{{ $data->subtitle }}</div>
            {!! $data->description !!}
            <a href="/values" class="btn-blue mt30">Our Values</a>
          </div>
          <div class="col-lg-5 col-sm-5 col-md-5 col-xs-12 pb30 text-right">
            <img src="/frontend/images/about-us.jpg" class="img-content">
          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid cf-link-rm">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 text-center">
            <div class="link-our-desc">
              <p><span>Saatnya mengenal lebih jauh Danareksa Sekuritas</span></p>
              <p>
                <a href="awards.html" class="btn-white">Our Achievements</a>
                <a href="milestone.html" class="btn-white">Our Journey</a>
              </p>
            </div>
          </div>        
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 text-center pt50">
            <div class="title-frame text-center">Our People</div>
            <div class="intro-frame text-center">Deain Direksi dan Dewan Komisaris yang berkualifikasi tinggi sebagai steering committee untuk membawa Danareksa Sekuritas ke tingkat yang tertinggi</div>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12 text-center pt50">
            <div class="frame-our-people">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 fup-left">
                  <div class="thumb-slider-news frame-link-people">
                    <img src="/frontend/images/cta.komisaris.png">
                    <span><a href="our-people.html" class="btn-blue">Board of Directors</a></span>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 fup-right">
                  <div class="thumb-slider-news frame-link-people">
                    <img src="/frontend/images/cta.director.png">
                    <span><a href="our-people.html" class="btn-blue">Board of Directors</a></span>
                  </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 fup-btm mb50">
                  <div class="btm-our-people">
                    Want to be part of us? <a href="work-with-us.html">Join Us</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

@endsection
    
    