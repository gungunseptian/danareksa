

@extends('frontend.layout.master')


@section('content')



    <div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.ourjourney.png">
              <div class="desc-top-banner">
                <div class="title-banner">Our Journey</div>
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
              <li>Milestone</li>
            </ol>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12">
            <div class="tree-milestone">
              <div class="line-center"><span></span></div>
              <div class="row row-list-milestone mb50">
                <?php $i= 0; ?>
                @foreach($data as $val)

                @if($i % 2 != 0)
                <div class="col-sm-6 col-lg-6 col-md-6 col-xs-12 col-list-milestone text-right">
                  <div class="frame-list-milestone wow fadeInLeft">
                    <div class="year">{{ $val->year }}</div>
                    @if(!empty($val->image))
                    <img src="/{{ $val->image }}">
                    @endif
                    <span>{{ $val->title }}</span>
                  </div>
                </div>
                
                @else
                <div class="col-sm-6 col-sm-offset-6 col-lg-6 col-lg-offset-6 col-md-6 col-md-offset-6 col-xs-12 col-list-milestone text-left">
                  <div class="frame-list-milestone wow fadeInRight">
                    <div class="year">{{ $val->year }}</div>
                    @if(!empty($val->image))
                    <img src="/{{ $val->image }}">
                    @endif
                    <span>{{ $val->title }}</span>
                  </div>
                </div>
                @endif

                

                <?php $i++?>
                @endforeach

              </div>
            </div>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12 pt30 mb50 text-center">
            <a href="#" class="btn-present wow fadeInUp">Present</a>
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