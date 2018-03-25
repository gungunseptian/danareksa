@extends('frontend.layout.master')


@section('content')


 <div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.values.png">
              <div class="desc-top-banner">
                <div class="title-banner">Our Values</div>
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
              <li>Our Values</li>
            </ol>
          </div>
          <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12 text-center pb30">
            <div class="frame-values">
              <img src="/frontend/images/vision.jpg">
              <div class="title-frame">Vision</div>
              <div class="page-intro-frame mb30">{!! strip_tags($vision->description) !!}</div>
            </div>
            <div class="frame-values">
              <img src="/frontend/images/mission.jpg">
              <div class="title-frame">Mission</div>
              <div class="page-intro-frame mb30">{!! strip_tags($mision->description) !!}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid cf-mutu">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 text-center pt50 pb50">
            <div class="title-frame mb40">Kebijakan Mutu</div>
            <div class="list-values">
              <ul>
                <li class="wow fadeInUp sameheight" data-wow-delay=".1s">
                  <span>C</span>
                  <div class="title-list-values">Continuous Improvement</div>
                  <div class="intro-list-values">{!! strip_tags($data['c']->description) !!}</div>
                </li>
                <li class="wow fadeInUp sameheight" data-wow-delay=".2s">
                  <span>A</span>
                  <div class="title-list-values">accountability</div>
                  <div class="intro-list-values">{!! strip_tags($data['a']->description) !!}</div>
                </li>
                <li class="wow fadeInUp sameheight" data-wow-delay=".3s">
                  <span>R</span>
                  <div class="title-list-values">responsiveness</div>
                  <div class="intro-list-values">{!! strip_tags($data['r']->description) !!}</div>
                </li>
                <li class="wow fadeInUp sameheight" data-wow-delay=".4s">
                  <span>E</span>
                  <div class="title-list-values">effectiveness</div>
                  <div class="intro-list-values">{!! strip_tags($data['e']->description) !!}</div>
                </li>
                <li class="wow fadeInUp sameheight" data-wow-delay=".5s">
                  <span>S</span>
                  <div class="title-list-values">satisfaction</div>
                  <div class="intro-list-values">{!! strip_tags($data['s']->description) !!}</div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 text-center pt50 pb50">
            <div class="title-frame mb40">Values</div>
            <div class="list-values">
              <ul>
                <?php 

                    $values = explode(",",strip_tags(trim($data['values']->description)) );

                    $delay = 1; 
                ?>
                @foreach($values as $val)
                <li class="wow fadeInUp" data-wow-delay=".{{ $delay++ }}s">
                    <?php $title = $val; ?>
                  <span>{{ substr(trim($title),0,1) }}</span>
                  <div class="title-list-values">{{ $val }}</div>
                </li>
                @endforeach


              </ul>
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
    