<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Danareksa Sekuritas</title>
    <link rel="icon" href="/frontend/images/logo.png">

    <!-- Bootstrap -->
    <link href="/frontend/css/bootstrap.min.css" rel="stylesheet">
    <link href="/frontend/css/style.css" rel="stylesheet">
    <link href="/frontend/css/responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/frontend/js/html5shiv.min.js"></script>
      <script src="/frontend/js/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <header>
      <div class="container cf-header-top show-desktop">
        <div class="row">
          <div class="col-sm-12 col-md-12 col-xs-12 col-header-top">
            <ul class="nav navbar-left">
              <li><i class="fa fa-phone"></i> 1500-688</li>
              <li><i class="fa fa-envelope"></i> callcenter@danareksa.com  </li>
            </ul>
            <div class="logo-done"><a href="/frontend/#"><img src="/frontend/images/logo-done.jpg"></a></div>
            <ul class="nav navbar-right">
              <li class="show-desktop"><a href="/resources/work-with-us">Work With Us</a></li>
              <li class="show-desktop"><a href="#">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="top-hide-mobile"></div>
      <div class="container-fluid cf-header">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-xs-12">
              <div class="header-menu">
                <nav class="nav-menu navbar-danareksa">
                  <ul class="nav navbar-nav navbar-left">
                    <li><a href="/" class="logo"><img src="/frontend/images/logo-danareksa.png"></a></li>
                  </ul>
                  <div class="form-search show-desktop">
                    <label for="input-search-icon"><i class="fa fa-search"></i></label>
                    <input type="checkbox" name="" id="input-search-icon">
                    <div class="form-search-page">
                       <form action="http://www.ksi-indonesia.org/en/search/">
                        <div class="col-sm-5 col-md-5 col-xs-12 col-form-search">
                          <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..." name="q">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="submit">Search</button>
                            </span>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                  <label for="navbar-mobile" class="bars-menu"><span class="fa fa-bars"></span></label>
                
                  
                
                  <input type="checkbox" name="" id="navbar-mobile">
                  <ul class="nav navbar-nav navbar-right navbar-menu">
                    <div class="header-menu-mobile">
                      <a href="/frontend/#"><img src="/frontend/images/logo-done.jpg"></a>
                      <label for="navbar-mobile" class="bars-menu bm-inner"><span class="fa fa-times"></span></label>
                    </div>
                    <li class="{{ Request::segment(1)=="" ? "active" : "" }}"><a href="/">Home</a></li>
                    <li class="{{ Request::segment(1)=="who-we-are" ? "active" : "" }}"><a href="/frontend/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Who We Are <span class="fa fa-angle-down"></span></a>
                      <ul class="dropdown-menu dropdown-menu-danareksa">
                        <li><a href="/who-we-are/about-us">About Us</a></li>
                        <li><a href="/who-we-are/values">Values</a></li>
                        <li><a href="/who-we-are/our-people">Our People</a></li>
                        <li><a href="/who-we-are/awards">Awards</a></li>
                        <li><a href="/who-we-are/milestone">Milestone</a></li>
                      </ul>
                    </li>
                    <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">What We Do <span class="fa fa-angle-down"></span></a>
                      <ul class="dropdown-menu dropdown-menu-danareksa">
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Investment Banking</a></li>
                        <li><a href="#">Brokeraging</a></li>
                        <li><a href="#">Research</a></li>
                      </ul>
                    </li>
                    <li class="{{ Request::segment(1)=="resources" ? "active" : "" }}"><a href="#">Resources</a></li>
                    <li class="show-mobile"><a href="/resources/work-with-us">Work With Us</a></li>
                    <li class="show-mobile"><a href="#">Contact Us</a></li>
                    <div class="form-search-page show-mobile">
                      <div class="col-form-search">
                        <form>
                          <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..." name="q">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                            </span>
                          </div>
                        </form>
                      </div>
                    </div>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- <div class="top-hide container-fluid"></div> -->



   

    @yield('content')
    

    <div class="clearfix"></div>

    <footer>  
      <div class="container-fluid container-fluid-ft-top">
        <div class="container">
          <div class="row">
            <div class="col-sm-12 col-md-10 col-md-offset-1 col-lg-10 col-lg-offset-1 col-xs-12">
              <div class="row">
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-12 heightsame">
                  <div class="frame-footer-desc">
                    <div class="title-footer">Head Office</div>
                    <div class="media media-footer">
                      <div class="media-left"><i class="fa fa-map-marker-alt mt2"></i></div>
                      <div class="media-body">
                        Gedung Danareksa<br>
                        Jl. Medan Merdeka Selatan No. 14,<br>
                        Jakarta 10110, Indonesia
                      </div>
                    </div>
                    <div class="media media-footer">
                      <div class="media-left"><i class="fa fa-envelope"></i></div>
                      <div class="media-body">
                        callcenter@danareksa.com
                      </div>
                    </div>
                    <div class="media media-footer">
                      <div class="media-left"><i class="fa fa-phone"></i></div>
                      <div class="media-body">
                        Telephone <br>(021) 29-555-777 / (021) 29-555-888<br>(021) 1500-688
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-12 heightsame">
                  <div class="frame-footer-desc">
                    <div class="title-footer">Business Hours</div>
                    <div class="desc-footer">Want to know more about us?<br> Give us a call or drop us an email.</div>
                    <div class="date-footer">08.30 - 17.30 WIB (GMT +7.00)</div>
                    <div class="day-footer">
                      <span>Senin - Jumat <i>(kecuali hari libur)</i></span>
                      <span>Monday - Friday <i>(except holidays)</i></span>
                    </div>
                    <div class="socmed">
                      <span>Stay connected</span>
                      <a href="/frontend/#" class="ig"><span></span></a>
                      <a href="/frontend/#" class="fb"><span></span></a>
                      <a href="/frontend/#" class="tw"><span></span></a>                      
                    </div>
                  </div>
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 col-xs-12 heightsame">
                  <div class="frame-footer-desc ffd-logo">
                    <img src="/frontend/images/logo-white.png">
                    <div class="partner-footer">
                      <a href="/frontend/#"><img src="/frontend/images/sgs.jpg"></a>
                      <a href="/frontend/#"><img src="/frontend/images/idx.jpg"></a>
                      <a href="/frontend/#"><img src="/frontend/images/kpei.jpg"></a>
                      <a href="/frontend/#"><img src="/frontend/images/ojk.jpg"></a>
                      <a href="/frontend/#"><img src="/frontend/images/akses.jpg"></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container-fluid container-fluid-ft-btm">
        Copyright &copy; 2018. Danareksa Sekuritas
      </div>
    </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/frontend/js/jquery-1.9.1.min.js"></script>
    <script src="/frontend/js/wow.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/frontend/js/bootstrap.min.js"></script>
    <script src="/frontend/js/owl.carousel.min.js"></script>
    <script src="/frontend/js/numscroller-1.0.js"></script>
    <script src="/frontend/js/custom.js"></script>
    <script>
      wow = new WOW(
        {
          animateClass: 'animated',
          offset:       100,
        }
      );
      wow.init();
    </script>
  </body>
</html>