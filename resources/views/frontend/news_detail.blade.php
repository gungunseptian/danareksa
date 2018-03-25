
@extends('frontend.layout.master')


@section('content')

<div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.resources.png">
              <div class="desc-top-banner">
                <div class="title-banner">News</div>
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
              <li>News</li>
            </ol>
          </div>
          <div class="col-sm-9 col-lg-8 col-md-8 col-xs-12 col-dtl-left pr30">
            <div class="frame-detail">
              <div class="title-frame title-dtl">{{ $news->title }}</div>
              <div class="date-detail">{{ date('d M Y',strtotime($news->created_at)) }}</div>
              <div class="img-detail"><img src="/{{ $news->image }}"></div>
              {{ $news->description }}
              <p>
                <div class="addthis_inline_share_toolbox"></div>
              </p>
            </div>
          </div>
          <div class="col-lg-4 col-sm-3 col-md-4 col-xs-12 col-widget pl30">
            <div class="header-widget">
              <div class="title-widget">Other News</div>
              <a href="resources.html">More <i class="glyphicon glyphicon-menu-right"></i></a>
            </div>

            @foreach($other_news as $other)
            <div class="frame-widget">
              <div class="thumb-slider-news"><img src="/{{ $other->image }}"></div>
              <div class="desc-slider-news">
                <h2 class="title-news"><a href="/news/{{ $other->id}}/{{ str_slug($other->title) }}">{{ $other->title}}</a></h2>
              </div>
            </div>
            @endforeach
            
          </div>
        </div>
      </div>
    </div>

    @endsection