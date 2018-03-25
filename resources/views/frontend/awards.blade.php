
@extends('frontend.layout.master')


@section('content')


 <div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider banner-page">
              <img src="/frontend/images/header.ourachievement.png">
              <div class="desc-top-banner">
                <div class="title-banner">Our Achievement</div>
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
              <li><a href="index.html">Home</a></li>
              <li>Award</li>
            </ol>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12">
            <div class="banner-right-page">
              <img src="/frontend/images/cta.sideoncontent.png">
              <div class="desc-banner-right">
                <h4>More about lorem ipsum dolor sit amet</h4>
                <a href="milestone" class="btn-white">Our Journey</a>
              </div>
            </div>
            <div class="frame-award">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <?php $i=0?>
                @foreach($groups as $key => $child)
                <li role="presentation" class={{ $i==0 ? "active" : "" }}><a href="#{{ $key }}" aria-controls="{{ $key }}" role="tab" data-toggle="tab">{{ $key }}</a></li>
                <?php $i++?>
                @endforeach
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <?php $i=0?>
                @foreach($groups as $key => $child)
                    <div role="tabpanel" class="tab-pane {{ $i==0 ? "active" : "" }}" id="{{ $key }}">

                        @foreach($child as $v)
                        <div class="list-award">
                            {{ $v['title'] }}
                            <span>{{ strip_tags($v['description']) }}</span>
                        </div>
                        @endforeach

                    </div>
                    <?php $i++?>
                @endforeach


              </div>
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