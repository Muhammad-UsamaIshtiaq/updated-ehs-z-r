

<!-- THEME DEBUG -->
<!-- THEME HOOK: 'html' -->
<!-- FILE NAME SUGGESTIONS:
   * html--front.html.twig
   * html--node.html.twig
   x html.html.twig
-->
<!-- BEGIN OUTPUT from 'themes/inflow_main/templates/html.html.twig' -->
<!DOCTYPE html>
<html lang="en" dir="ltr" prefix="content: http://purl.org/rss/1.0/modules/content/  dc: http://purl.org/dc/terms/  foaf: http://xmlns.com/foaf/0.1/  og: http://ogp.me/ns#  rdfs: http://www.w3.org/2000/01/rdf-schema#  schema: http://schema.org/  sioc: http://rdfs.org/sioc/ns#  sioct: http://rdfs.org/sioc/types#  skos: http://www.w3.org/2004/02/skos/core#  xsd: http://www.w3.org/2001/XMLSchema# ">
  <head>
    <meta charset="utf-8" />
<meta name="Generator" content="Drupal 9 (https://www.drupal.org)" />
<meta name="MobileOptimized" content="width" />
<meta name="HandheldFriendly" content="true" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="/sites/default/files/logo.jpg" type="image/jpeg" />

    <title>Home | DFWCZ</title>
    <link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/ajax-progress.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/align.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/autocomplete-loading.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/fieldgroup.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/container-inline.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/clearfix.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/details.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/hidden.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/item-list.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/js.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/nowrap.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/position-container.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/progress.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/reset-appearance.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/resize.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/sticky-header.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/system-status-counter.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/system-status-report-counters.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/system-status-report-general-info.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/tabledrag.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/tablesort.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/system/components/tree-child.module.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/modules/back_to_top/css/back_to_top.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/core/assets/vendor/normalize-css/normalize.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/stable/css/core/normalize-fixes.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/action-links.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/breadcrumb.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/button.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/collapse-processed.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/container-inline.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/details.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/exposed-filters.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/field.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/form.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/icons.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/inline-form.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/item-list.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/link.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/links.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/menu.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/more-link.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/pager.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/tabledrag.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/tableselect.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/tablesort.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/tabs.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/textarea.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/ui-dialog.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/core/themes/classy/css/components/messages.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/jquery.tosrus.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/animate.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/owl.carousel.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/settings.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/ionicons.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/bootstrap.min.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/style.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/custom.css?qpnfqu" />
<link rel="stylesheet" media="all" href="/themes/inflow_main/css/responsive.css?qpnfqu" />

    
  </head>
  <body class="path-frontpage">
        <a href="#main-content" class="visually-hidden focusable">
      Skip to main content
    </a>
    
    

<!-- THEME DEBUG -->
<!-- THEME HOOK: 'off_canvas_page_wrapper' -->
<!-- BEGIN OUTPUT from 'core/themes/stable/templates/content/off-canvas-page-wrapper.html.twig' -->
  <div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>
    

<!-- THEME DEBUG -->
<!-- THEME HOOK: 'page' -->
<!-- FILE NAME SUGGESTIONS:
   x page--front.html.twig
   * page--node.html.twig
   * page.html.twig
-->
<!-- BEGIN OUTPUT from 'themes/inflow_main/templates/page/page--front.html.twig' -->
<div class="loading" style="display:none;">
  <div class="table">
    <div class="inner">
      <h5>LOADING</h5>
      <svg class="spinner" width="26px" height="26px" viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
      <circle class="path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
      </svg> </div>
   </div>
 </div> 
<!-- end loading -->
<div class="transition-overlay"></div>
<!-- end transition-overlay -->
<div class="map-container">
  <div id="map-placeholder"></div>
  <span class="close-btn"><i class="ion-close"></i></span> </div>
<!-- end map -->
<header>
  <nav class="navbar navbar-default" role="navigation">
    <div class="top-bar">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <h5>Building spectacular structures</h5>
            <span class="phone"><i class="ion-android-call"></i> 1-800-555-1234</span> <a href="#" class="map"><i class="ion-ios-location"></i> SEE ON MAPS</a> <a href="#" class="language"><img src="/themes/inflow_main/images/flag-en.jpg" alt="Image"> ENGLISH</a> </div>
          <!-- end col-12 --> 
        </div>
        <!-- end row --> 
      </div>
      <!-- end container --> 
    </div>
    <!-- end top-bar -->
    <div class="container">
      <div class="inner-header gradient">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle toggle-menu menu-left push-body" data-toggle="collapse" data-target="#nav"> <i class="ion ion-navicon"></i> </button> 
		  <a  class="navbar-brand transition" href="/"><img src="/themes/inflow_main/logo.jpg" alt=""></a>
		  </div>
        <!-- end navbar-header -->
        <div class="collapse navbar-collapse cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="nav">
          <ul class="nav navbar-nav">
            <li><a href="/" class="transition">HOME</a><span></span></li>
            <li><a href="/partners" class="transition">PARTNERS</a><span></span></li>
             <li class="dropdown"> <a href="#">PRODUCTS </a><span></span>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/coming-soon" class="transition">ONLINE TRAINING</a></li>
                <li><a href="/coming-soon" class="transition">TESTING</a></li>
                <li><a href="/coming-soon" class="transition">CUSTOM VIDEOS</a></li>  
                <li><a href="/coming-soon" class="transition">SAFETY START UP</a></li>
                <li><a href="/coming-soon" class="transition">AUDIT SOFTWARE</a></li>
                <li><a href="/coming-soon" class="transition">SAFETY FORMS</a></li>
                <li><a href="/coming-soon" class="transition">RISK MANAGEMENT</a></li>
                <li><a href="/coming-soon" class="transition">INVENTORY CONTROL</a></li>
                <li><a href="/coming-soon" class="transition">SDS</a></li>
                <li><a href="/coming-soon" class="transition">SAFETY MANUAL</a></li>
                <li><a href="/coming-soon" class="transition">COMPANY HANDBOOK</a></li>
                <li><a href="/coming-soon" class="transition">HUMAN RESOURCE</a></li>
              </ul>
            </li>
             <li class="dropdown"> <a href="/services">SERVICES </a><span></span>
              <ul class="dropdown-menu" role="menu">
                <li><a href="/equipment-certification" class="transition">EQUIPMENT CERTIFICATION</a></li> 
                <li><a href="/osha-10-hr-eng-spn" class="transition">OSHA 10 HR ENG-SPN</a></li>
                <li><a href="/osha-30-hr-eng-spn" class="transition">OSHA 30 HR ENG-SPN</a></li>  
                <li><a href="/first-aid-cpr-aed" class="transition">FIRST AID / CPR / AED</a></li>
                <li><a href="/esl" class="transition">ESL</a></li>
              </ul>
            </li> 
            <li><a href="/coming-soon" class="transition">NEWSLETTER</a><span></span></li>
            <li><a href="/contact" class="transition">CONTACT US</a><span></span></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
            <li><a href="#"><i class="ion-social-google plus"></i></a></li>
          </ul>
        </div>
        <!-- end navbar-collapse --> 
      </div>
      <!-- end inner-header --> 
    </div>
    <!-- end container --> 
  </nav>
  <!-- end nav --> 
</header>
<!-- end heade --><section class="slider">
  <div class="banner">
    <div id="rev_slider_35_1" class="rev_slider fullwidthabanner">
      <ul>
        <li data-transition="scaledownfromtop" data-masterspeed="700"> <img src="/themes/inflow_main/images/banner1.jpg" alt="Image">
          <div class="tp-caption lfb ltt tp-resizeme start" 
        data-x="left" 
        data-hoffset="0" 
        data-y="center" 
        data-voffset="0" 
        data-speed="600" 
        data-start="400" 
        data-easing="Power4.easeOut" 
        data-splitin="none" 
        data-splitout="none" 
        data-elementdelay="0.1" 
        data-endelementdelay="0.1" 
        data-endspeed="500" 
        data-endeasing="Power4.easeIn">
            <div class="text-container">
              <h6>Building spectacular structures and buildings</h6>
              <h2>Don’t be an architecture of<br>
                building, be the architecture</h2>
            </div>
          </div>
        </li>
        <!-- end banner 1 -->
        <li data-transition="scaledownfromtop" data-masterspeed="700"> <img src="/themes/inflow_main/images/banner2.jpg" alt="Image">
          <div class="tp-caption lfb ltt tp-resizeme start" 
        data-x="left" 
        data-hoffset="0" 
        data-y="center" 
        data-voffset="0" 
        data-speed="600" 
        data-start="400" 
        data-easing="Power4.easeOut" 
        data-splitin="none" 
        data-splitout="none" 
        data-elementdelay="0.1" 
        data-endelementdelay="0.1" 
        data-endspeed="500" 
        data-endeasing="Power4.easeIn">
            <div class="text-container">
              <h6>Building spectacular structures and buildings</h6>
              <h2>Don’t be an architecture of<br>
                building, be the architecture</h2>
            </div>
          </div>
        </li>
        <!-- end banner 2 -->
        <li data-transition="scaledownfromtop" data-masterspeed="700"> <img src="/themes/inflow_main/images/banner3.jpg" alt="Image">
          <div class="tp-caption lfb ltt tp-resizeme start" 
        data-x="left" 
        data-hoffset="0" 
        data-y="center" 
        data-voffset="0" 
        data-speed="600" 
        data-start="400" 
        data-easing="Power4.easeOut" 
        data-splitin="none" 
        data-splitout="none" 
        data-elementdelay="0.1" 
        data-endelementdelay="0.1" 
        data-endspeed="500" 
        data-endeasing="Power4.easeIn">
            <div class="text-container">
              <h6>Building spectacular structures and buildings</h6>
              <h2>Don’t be an architecture of<br>
                building, be the architecture</h2>
            </div>
          </div>
        </li>
        <!-- end banner 3 -->
        <li data-transition="scaledownfromtop" data-masterspeed="700"> <img src="/themes/inflow_main/images/banner4.jpg" alt="Image">
          <div class="tp-caption lfb ltt tp-resizeme start" 
        data-x="left" 
        data-hoffset="0" 
        data-y="center" 
        data-voffset="0" 
        data-speed="600" 
        data-start="400" 
        data-easing="Power4.easeOut" 
        data-splitin="none" 
        data-splitout="none" 
        data-elementdelay="0.1" 
        data-endelementdelay="0.1" 
        data-endspeed="500" 
        data-endeasing="Power4.easeIn">
            <div class="text-container">
              <h6>Building spectacular structures and buildings</h6>
              <h2>Don’t be an architecture of<br>
                building, be the architecture</h2>
            </div>
          </div>
        </li>
        <!-- end banner 4 -->
        <li data-transition="scaledownfromtop" data-masterspeed="700"> <img src="/themes/inflow_main/images/banner5.jpg" alt="Image">
          <div class="tp-caption lfb ltt tp-resizeme start" 
        data-x="left" 
        data-hoffset="0" 
        data-y="center" 
        data-voffset="0" 
        data-speed="600" 
        data-start="400" 
        data-easing="Power4.easeOut" 
        data-splitin="none" 
        data-splitout="none" 
        data-elementdelay="0.1" 
        data-endelementdelay="0.1" 
        data-endspeed="500" 
        data-endeasing="Power4.easeIn">
            <div class="text-container">
              <h6>Building spectacular structures and buildings</h6>
              <h2>Don’t be an architecture of<br>
                building, be the architecture</h2>
            </div>
          </div>
        </li>
        <!-- end banner 5 -->
      </ul>
      <!-- end ul --> 
    </div>
    <!-- end rev_slider --> 
  </div>
  <!-- end banner --> 
</section>
<!-- end slider -->
<section class="intro">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-xs-12 wow fadeInUp"> <img src="/themes/inflow_main/images/workers.png" alt="Image" class="left-image"> </div>
      <!-- end col-6 -->
      <div class="col-md-6 col-xs-12 wow fadeInRight">
        <div class="title-box">
          <h5>Develops quality projects to cater for workplace and office</h5>
          <h2>GET OFFER</h2>
          <span></span> </div>
        <!-- end title-box -->
        <p>Our customers, employees and subcontractors are the reasons for our existence. We will take all necessary precautions in order to render our work environments more secure and healthy and we will prioritize maintenance of such precautions. We will abide by the legal legislations and work safety regulations in effect at our country and in other countries where we are active.</p>
        <div class="file-box"> <img src="/themes/inflow_main/images/icon-file.png" alt="Image"> <a href="#">DOWNLOAD PDF CATALOG</a> <a href="#">SEE COLOR SCHEME</a> </div>
        <!-- end file-box --> 
      </div>
      <!-- end col-6 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end intro -->
<section class="quote-bar wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <h4>We contribute to the society with the ones we protect</h4>
        <h3>Develop and recreate as well as the ones we provide for our customers</h3>
        <a href="#" class="site-btn">GET A QUOTE <i class="ion-chevron-right"></i></a> </div>
      <!-- end col-12 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end quote-bar -->
<section class="home-services wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-center">
        <div class="title-box">
          <h5>Don’t be an architecture of building, be the architecture of life.</h5>
          <h2>WHAT WE DO</h2>
          <span></span> </div>
        <!-- end title-box --> 
      </div>
      <!-- end col-12 -->
      <div class="col-xs-12">
        <div class="carousel">
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image1.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">INTERIOR DESIGN</a> <span class="border"></span> </div>
          <!-- end item-->
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image2.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">RENOVATION</a> <span class="border"></span> </div>
          <!-- end item -->
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image3.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">CONTRACTING</a> <span class="border"></span> </div>
          <!-- end item -->
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image4.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">ARCHITECTURE</a> <span class="border"></span> </div>
          <!-- end item -->
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image5.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">LAMINATING</a> <span class="border"></span> </div>
          <!-- end item -->
          <div class="item">
            <figure><img src="/themes/inflow_main/images/image6.jpg" alt="Image"> </figure>
            <span class="description">Develop and recreate as well as the ones we provide</span> <a href="#">RESTRUCTRE</a> <span class="border"></span> </div>
          <!-- end item --> 
        </div>
        <!-- end carousel --> 
      </div>
      <!-- end col-12 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end home-services -->
<section class="video-bg wow fadeInUp">
  <video src="/themes/inflow_main/videos/video.mp4" class="hidden-sm hidden-xs" loop muted autoplay data-stellar-ratio="0.5"></video>
  <div class="video-overlay"></div>
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <h5>35% OF MORTGAGE INTEREST SUPPORT FROM CONSTRUCTION</h5>
        <h2>URBAN DESIGN AWARD</h2>
        <i class="ion-trophy icon"></i><br>
        <a href="#" class="site-btn">SEE ALL AWARDS <i class="ion-chevron-right"></i></a> </div>
      <!-- end col-12 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end video-bg -->
<section class="home-features wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-md-2 col-xs-6 col-md-offset-1 col-xs-offset-0"> <i class="icon"> <img src="/themes/inflow_main/images/icon-1.jpg" alt="Image"> </i>
        <h4>Cemento</h4>
        <p>Generate fast and high quality, add value to life.</p>
      </div>
      <!-- end col-2 -->
      <div class="col-md-2  col-xs-6"> <i class="icon"> <img src="/themes/inflow_main/images/icon-2.jpg" alt="Image"> </i>
        <h4>Painting</h4>
        <p>Protect the natural environment, respect life.</p>
      </div>
      <!-- end col-2 -->
      <div class="col-md-2 col-xs-6"> <i class="icon"> <img src="/themes/inflow_main/images/icon-3.jpg" alt="Image"> </i>
        <h4>Cutting</h4>
        <p>The dream of a life away from the chaos </p>
      </div>
      <!-- end col-2 -->
      <div class="col-md-2 col-xs-6"> <i class="icon"> <img src="/themes/inflow_main/images/icon-4.jpg" alt="Image"> </i>
        <h4>Digging</h4>
        <p>But at the heart of the city becomes true</p>
      </div>
      <!-- end col-2 -->
      <div class="col-md-2 col-xs-6"> <i class="icon"> <img src="/themes/inflow_main/images/icon-5.jpg" alt="Image"> </i>
        <h4>Removing</h4>
        <p>Garden pleasure in air with special design</p>
      </div>
      <!-- end col-2 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end home-features -->
<section class="home-gallery text-center wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <div class="title-box">
          <h5>Construction premium lifespace & workspaces</h5>
          <h2>OUR PROJECTS</h2>
          <span></span> </div>
        <!-- end title-box -->
        <ul class="filter">
          <li><a href="#" data-filter="*" class="current">ALL</a></li>
          <li><a href="#" data-filter=".recidences">RECIDENCES</a></li>
          <li><a href="#" data-filter=".offices">OFFICES</a></li>
          <li><a href="#" data-filter=".plazas">PLAZAS</a></li>
        </ul>
        <!-- end filter --> 
      </div>
      <!-- end col-12 --> 
    </div>
  </div>
  <ul class="gallery thumbs">
    <li class="recidences">
      <figure><a href="images/project1.jpg" class="litebox"><img src="/themes/inflow_main/images/project1.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="offices">
      <figure><a href="images/project2.jpg" class="litebox"><img src="/themes/inflow_main/images/project2.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="plazas">
      <figure><a href="images/project3.jpg" class="litebox"><img src="/themes/inflow_main/images/project3.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="recidences">
      <figure><a href="images/project4.jpg" class="litebox"><img src="/themes/inflow_main/images/project4.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="plazas">
      <figure><a href="images/project5.jpg" class="litebox"><img src="/themes/inflow_main/images/project5.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="offices">
      <figure><a href="images/project6.jpg" class="litebox"><img src="/themes/inflow_main/images/project6.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="offices plazas recidences">
      <figure><a href="images/project7.jpg" class="litebox"><img src="/themes/inflow_main/images/project7.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
    <li class="recidences">
      <figure><a href="images/project8.jpg" class="litebox"><img src="/themes/inflow_main/images/project8.jpg" alt="Image"></a></figure>
    </li>
    <!-- end project -->
  </ul>
</section>
<!-- end home-gallery -->
<section class="news wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="news-box">
          <figure><img src="/themes/inflow_main/images/news1.jpg" alt="Image"> <span class="icon"><i class="ion-flash"></i></span> </figure>
          <h3>Construction "HOUSE" is almost finished… There is huge demand and rush on city</h3>
          <small>14TH OF DECEMBER</small> <span class="border"></span>
          <p>The first contracts have been signed in HOUSE, which will host many exclusive brands from Brazil and all over the World. Envato Corp, which has purchased 2 towers from the project...</p>
        </div>
        <!-- end news-box --> 
      </div>
      <!-- end col-6 -->
      <div class="col-md-6">
        <div class="news-box">
          <figure><img src="/themes/inflow_main/images/news2.jpg" alt="Image"> <span class="icon"><i class="ion-images"></i></span> </figure>
          <h3>Construction company says “Real Estate will grow 10% during 2015”</h3>
          <small>27TH OF JANUARY</small> <span class="border"></span>
          <p>The first contracts have been signed in HOUSE, which will host many exclusive brands from Brazil and all over the World. Envato Corp, which has purchased 2 towers from the project...</p>
        </div>
        <!-- end news-box --> 
      </div>
      <!-- end col-6 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end news -->
<section class="logos wow fadeInUp">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 text-center">
        <div class="title-box">
          <h5>Happy to introduce our amazing project partners</h5>
          <h2>PARTNERSHIP</h2>
          <span></span> </div>
        <!-- end title-box -->
        <ul>
          <li>
            <figure><img src="/themes/inflow_main/images/logo1.jpg" alt="Image"></figure>
          </li>
          <!-- end logo -->
          <li>
            <figure><img src="/themes/inflow_main/images/logo2.jpg" alt="Image"></figure>
          </li>
          <!-- end logo -->
          <li>
            <figure><img src="/themes/inflow_main/images/logo3.jpg" alt="Image"></figure>
          </li>
          <!-- end logo -->
          <li>
            <figure><img src="/themes/inflow_main/images/logo4.jpg" alt="Image"></figure>
          </li>
          <!-- end logo -->
          <li>
            <figure><img src="/themes/inflow_main/images/logo5.jpg" alt="Image"></figure>
          </li>
          <!-- end logo -->
        </ul>
        <!-- end ul --> 
      </div>
      <!-- end col-12 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end logos -->

<section class="footer-bar wow fadeIn">
  <div class="container">
    <div class="row">
      <div class="col-md-8 col-xs-12"> <i class="ion-clock icon"></i>
        <h4>Monday to Saturday: 9:00 - 18:00 // Sunday: Closed</h4>
      </div>
      <!-- end col-8 -->
      <div class="col-md-4 col-xs-12">
        <h4>Follow us on social media</h4>
        <ul class="social-media">
          <li><a href="#"><i class="ion-social-facebook"></i></a></li>
          <li><a href="#"><i class="ion-social-twitter"></i></a></li>
          <li><a href="#"><i class="ion-social-google plus"></i></a></li>
        </ul>
        <!-- end social-media --> 
      </div>
      <!-- end col-4 --> 
    </div>
    <!-- end row --> 
  </div>
  <!-- end container --> 
</section>
<!-- end footer-bar -->
<footer class="wow fadeIn">
  <div class="container">
    <div class="row">
      <div class="col-md-4">
        <h3>ABOUT BUILDER</h3>
        <span class="border"></span> 
		<img src="/themes/inflow_main/logo.jpg"  alt="Image" class="logo">
        <p>Our construction management professio nals organize, lead and manage the people, materials and processes of truction utilizing construction management professionals </p>
      </div>
      <!-- end col-4 -->
      <div class="col-md-4">
        <h3>OUR SERVICES</h3>
        <span class="border"></span>
        <div class="clearfix"></div>
        <ul>
          <li><a href="/equipment-certification">EQUIPMENT CERTIFICATION</a></li> 
                <li><a href="/osha-10-hr-eng-spn">OSHA 10 HR ENG-SPN</a></li>
                <li><a href="/osha-30-hr-eng-spn">OSHA 30 HR ENG-SPN</a></li>  
                <li><a href="/first-aid-cpr-aed">FIRST AID / CPR / AED</a></li>
                <li><a href="/esl">ESL</a></li>
        </ul>
        <!-- end ul --> 
      </div>
      <!-- end col-4 -->
      <div class="col-md-4">
        <h3>JOIN NEWSLETTER</h3>
        <span class="border"></span>
        <p>Our construction management professio nals organize, lead and manage</p>
        <form>
          <input type="text" placeholder="Type your e-mail">
          <button type="button">JOIN</button>
        </form>
      </div>
      <!-- end col-4 -->
      <div class="col-xs-12">
        <div class="sub-footer"> <span class="copyright">Copyright © <script>document.write(new Date().getFullYear());</script>, Builder | Construction</span></div>
        <!-- end sub-footer --> 
      </div>
      <!-- end col-12 --> 
    </div>
    <!-- row --> 
  </div>
  <!-- end container --> 
</footer>
<!-- end footer --> 
<!-- END OUTPUT from 'themes/inflow_main/templates/page/page--front.html.twig' -->


  </div>

<!-- END OUTPUT from 'core/themes/stable/templates/content/off-canvas-page-wrapper.html.twig' -->


    
    <script type="application/json" data-drupal-selector="drupal-settings-json">{"path":{"baseUrl":"\/","scriptPath":null,"pathPrefix":"","currentPath":"node","currentPathIsAdmin":false,"isFront":true,"currentLanguage":"en"},"pluralDelimiter":"\u0003","suppressDeprecationErrors":true,"back_to_top":{"back_to_top_button_trigger":100,"back_to_top_prevent_on_mobile":true,"back_to_top_prevent_in_admin":false,"back_to_top_button_type":"image","back_to_top_button_text":"Back to top"},"user":{"uid":0,"permissionsHash":"372d29407e6210c7e32305729ac36574c56c1257985dc9deefe709113cc92f7a"}}</script>
<script src="/core/assets/vendor/jquery/jquery.min.js?v=3.5.1"></script>
<script src="/core/assets/vendor/jquery-once/jquery.once.min.js?v=2.2.3"></script>
<script src="/core/misc/drupalSettingsLoader.js?v=9.1.0"></script>
<script src="/core/misc/drupal.js?v=9.1.0"></script>
<script src="/core/misc/drupal.init.js?v=9.1.0"></script>
<script src="/modules/back_to_top/js/back_to_top.js?v=9.1.0"></script>
<script src="/themes/inflow_main/js/bootstrap.min.js?qpnfqu"></script>
<script src="https://code.jquery.com/jquery-migrate-3.0.0.min.js"></script>
<script src="/themes/inflow_main/js/jquery.stellar.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/jquery.tosrus.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/isotope.min.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/masonry.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/owl.carousel.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/wow.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/jquery.themepunch.tools.min.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/jquery.themepunch.revolution.min.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/settings.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/scripts.js?qpnfqu"></script>
<script src="/themes/inflow_main/js/custom.js?qpnfqu"></script>

  </body>
</html>

<!-- END OUTPUT from 'themes/inflow_main/templates/html.html.twig' -->

