@extends('frontend.layout.master')


@section('content')

<div class="container-fluid top-banner">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-xs-12 p0">
          <div class="owl-carousel owl-theme" id="slider-main">
            <div class="frame-main-slider">
              <img src="/frontend/images/back-top-banner.jpg">
              <div class="desc-top-banner">
                <div class="title-banner">Plan for tomorrow & live for today</div>
                <hr>
                <div class="intro-banner">With over 40 years of experience helping businesses to find comprehensive solutions</div>
              </div>
            </div>
            <div class="frame-main-slider">
              <img src="/frontend/images/slide2.jpg">
              <div class="desc-top-banner">
                <div class="title-banner">Plan for tomorrow & live</div>
                <hr>
                <div class="intro-banner">With over 40 years of experience helping businesses to find comprehensive solutions</div>
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
            <div class="feature-top">
              <ul>
                <li>
                  <a href="investment-banking.html">
                  <div class="list-feature">
                    <img src="/frontend/images/investment-banking.png">
                    <h2>Investment Banking</h2>
                    <span>Dengan kapasitas dan pengalaman yang tinggi Danareksa Sekuritas berkomitmen dalam memberikan jasa underwriting dan financial advisory</span>
                  </div></a>
                </li>
                <li>
                  <a href="brokeraging.html">
                    <div class="list-feature">
                      <img src="/frontend/images/brokeraging.png">
                      <h2>Brokeraging</h2>
                      <span>Danareksa Sekuritas telah berperan sebagai broker utama dalam transaksi perdagangan efek bagi nasabah institusi maupun ritel</span>
                    </div>
                  </a>
                </li>
                <li>
                  <a href="research.html">
                    <div class="list-feature">
                      <img src="/frontend/images/research.png">
                      <h2>Research</h2>
                      <span>Melaksanakan research korporasi, sektoral dan makro secara mendalam guna membantu nasabah dalam membuat keputusan investasi</span>
                    </div>
                  </a>
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
          <div class="col-sm-12 col-md-12 col-xs-12 text-center pt50">
            <div class="title-frame text-center">About Us</div>
            <div class="intro-frame text-center">Sebagai pionir di bidangnya, Danareksa Sekuritas secara konsisten mengembangkan pasar modal Indonesia ke jenjang yang lebih tinggi</div>
          </div>
          <div class="col-sm-4 col-md-4 col-xs-12 text-center">
            <div class="feature-number">
              <div class="frame-number mt30 mb30">
                <div class="dis-number-top">Awards</div>
                <div class="number-feature">
                  <span class="fa fa-chevron-right"></span>
                  <span class='numscroller' data-min='1' data-max='44' data-delay='5' data-increment='10'>44</span>
                </div>
              </div>
              <p>Telah menerima lebih dari 44 penghargaan dalam 4 tahun terakhir atas kontribusi dan kinerja yang berkualitas</p>
            </div>
          </div>
          <div class="col-sm-4 col-md-4 col-xs-12 text-center">
            <div class="feature-number">
              <div class="frame-number mt30 mb30">
                <div class="polygon">
                  <img src="/frontend/images/polygon.png" class="img-polygon wow fadeIn" data-wow-delay=".6s">
                  <span class="accountability wow fadeInDown" data-wow-delay=".1s">Accountability</span>
                  <span class="fairness wow fadeInLeft" data-wow-delay=".2s">Fairness</span>
                  <span class="integrity wow fadeInLeft" data-wow-delay=".3s">Integrity</span>
                  <span class="skillful wow fadeInRight" data-wow-delay=".4s">Skillful</span>
                  <span class="transparency wow fadeInRight" data-wow-delay=".5s">Transparency</span>
                  <span class="i-fast wow bounceIn" data-wow-delay=".7s">I-FAST</span>
                </div>
              </div>
              <p>Menjaga reputasi untuk selalu membantu nasabah merupakan nilai utama dan prioritas Perusahaan</p>
            </div>
          </div>
          <div class="col-sm-4 col-md-4 col-xs-12 text-center">
            <div class="feature-number">
              <div class="frame-number mt30 mb30">
                <div class="number-feature">
                  <span class='numscroller' data-min='1' data-max='40' data-delay='5' data-increment='10'>40</span>
                  <span class="fa fa-plus"></span>
                </div>
                <div class="dis-number-bottom">years</div>
              </div>
              <p>Lebih dari 40 tahun membina hubungan yang kuat dengan regulator dan SRO</p>
            </div>
          </div>
          <div class="col-sm-12 col-md-12 col-xs-12 text-center mb50 mt30">
            <a href="about-us.html" class="btn-blue">More About Us</a>
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
                <a href="awards" class="btn-white">Our Achievements</a>
                <a href="milestone" class="btn-white">Our Journey</a>
              </p>
            </div>
          </div>        
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 mt50">
            <div class="title-frame mt50 mb15">What's New on Danareksa Sekuritas</div>            
            <div class="feature-news">
              <div class="owl-carousel owl-theme" id="slider-news">


              @foreach($news as $val)
                <div class="item">
                  <div class="thumb-slider-news"><img src="{{ $val->image }}"></div>
                  <div class="desc-slider-news">
                    <div class="date"><span>News</span> {{ date('d M Y',strtotime($val->created_at)) }}</div>
                    <h2 class="title-news">{{ $val->title }}</h2>
                    <p>{{ $val->description }}</p>
                  </div>
                  <div class="footer-slider-news">
                    <a href="/news/{{ $val->id }}/{{ str_slug($val->title) }}">Read More</a>
                  </div>
                </div>
                @endforeach

              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-12 col-xs-12 text-center mb50 mt30">
          <a href="#" class="btn-blue">See All</a>
        </div>
      </div>
    </div>
    <div class="container-fluid cf-work-with-us">
      <div class="container">
        <div class="row">
          <div class="col-sm-5 col-md-4 col-xs-12">
            <span>Tertarik untuk jadi bagian dari kami?</span>
            <a href="/resources/work-with-us" class="btn-white">Work With Us</a>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-6 col-lg-6 col-md-6 col-xs-12 p0 mb-5">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.6211364756996!2d106.82270901439934!3d-6.181435562288656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f432003fec4f%3A0x1bc3c17089419ab9!2sDanareksa+Sekuritas!5e0!3m2!1sen!2sid!4v1519900282374" width="100%" height="505" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="col-sm-6 col-lg-6 col-md-6 col-xs-12">
          <div class="frame-message">
            <div class="title-message">Hubungi Kami</div>  
            <div class="subtitle-message">Kami akan dengan senang hati mendengar langsung dari anda</div>  
            <form class="form-message">
              <div class="row">
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 mb15">
                  <input type="text" name="" placeholder="Your Name" class="form-control">
                </div>
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 mb15">
                  <input type="text" name="" placeholder="I would like to discuss" class="form-control">
                </div>
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 mb15">
                  <input type="email" name="" placeholder="Your Email" class="form-control">
                </div>
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 mb15">
                  <input type="text" name="" placeholder="Your Phone Number" class="form-control">
                </div>
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12">
                  <button class="btn-blue-full">Submit</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    
@endsection