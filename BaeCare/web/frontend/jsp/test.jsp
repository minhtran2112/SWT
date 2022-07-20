﻿<!DOCTYPE html>
<html lang="en">

<head>
    <title>Adminty - Premium Admin Template by Colorlib </title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">
    <!-- Favicon icon -->
    <link rel="icon" href="frontend\libAdmin\assets\images\favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\bower_components\bootstrap\css\bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\icon\themify-icons\themify-icons.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\icon\icofont\css\icofont.css">
    <!-- feather Awesome -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\icon\feather\css\feather.css">
    <!-- Data Table Css -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\bower_components\datatables.net-bs4\css\dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\pages\data-table\css\buttons.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\bower_components\datatables.net-responsive-bs4\css\responsive.bootstrap4.min.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\css\style.css">
    <link rel="stylesheet" type="text/css" href="frontend\libAdmin\assets\css\jquery.mCustomScrollbar.css">
</head>

<body>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="ball-scale">
            <div class='contain'>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">

                    <div class="navbar-logo">
                        <a class="mobile-menu" id="mobile-collapse" href="#!">
                            <i class="feather icon-menu"></i>
                        </a>
                        <a href="index-1.htm">
                            <img class="img-fluid" src="frontend\libAdmin\assets\images\logo.png" alt="Theme-Logo">
                        </a>
                        <a class="mobile-options">
                            <i class="feather icon-more-horizontal"></i>
                        </a>
                    </div>

                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-addon search-close"><i class="feather icon-x"></i></span>
                                        <input type="text" class="form-control">
                                        <span class="input-group-addon search-btn"><i class="feather icon-search"></i></span>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()">
                                    <i class="feather icon-maximize full-screen"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-right">
                            <li class="header-notification">
                                <div class="dropdown-primary dropdown">
                                    <div class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="feather icon-bell"></i>
                                        <span class="badge bg-c-pink">5</span>
                                    </div>
                                    <ul class="show-notification notification-view dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                        <li>
                                            <h6>Notifications</h6>
                                            <label class="label label-danger">New</label>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center img-radius" src="frontend\libAdmin\assets\images\avatar-4.jpg" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">John Doe</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center img-radius" src="frontend\libAdmin\assets\images\avatar-3.jpg" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">Joseph William</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <img class="d-flex align-self-center img-radius" src="frontend\libAdmin\assets\images\avatar-4.jpg" alt="Generic placeholder image">
                                                <div class="media-body">
                                                    <h5 class="notification-user">Sara Soudein</h5>
                                                    <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                                    <span class="notification-time">30 minutes ago</span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="header-notification">
                                <div class="dropdown-primary dropdown">
                                    <div class="displayChatbox dropdown-toggle" data-toggle="dropdown">
                                        <i class="feather icon-message-square"></i>
                                        <span class="badge bg-c-green">3</span>
                                    </div>
                                </div>
                            </li>
                            <li class="user-profile header-notification">
                                <div class="dropdown-primary dropdown">
                                    <div class="dropdown-toggle" data-toggle="dropdown">
                                        <img src="frontend\libAdmin\assets\images\avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                        <span>John Doe</span>
                                        <i class="feather icon-chevron-down"></i>
                                    </div>
                                    <ul class="show-notification profile-notification dropdown-menu" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
                                        <li>
                                            <a href="#!">
                                                <i class="feather icon-settings"></i> Settings
                                            </a>
                                        </li>
                                        <li>
                                            <a href="user-profile.htm">
                                                <i class="feather icon-user"></i> Profile
                                            </a>
                                        </li>
                                        <li>
                                            <a href="email-inbox.htm">
                                                <i class="feather icon-mail"></i> My Messages
                                            </a>
                                        </li>
                                        <li>
                                            <a href="auth-lock-screen.htm">
                                                <i class="feather icon-lock"></i> Lock Screen
                                            </a>
                                        </li>
                                        <li>
                                            <a href="auth-normal-sign-in.htm">
                                                <i class="feather icon-log-out"></i> Logout
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Sidebar chat start -->
            <div id="sidebar" class="users p-chat-user showChat">
                <div class="had-container">
                    <div class="card card_main p-fixed users-main">
                        <div class="user-box">
                            <div class="chat-inner-header">
                                <div class="back_chatBox">
                                    <div class="right-icon-control">
                                        <input type="text" class="form-control  search-text" placeholder="Search Friend" id="search-friends">
                                        <div class="form-icon">
                                            <i class="icofont icofont-search"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="main-friend-list">
                                <div class="media userlist-box" data-id="1" data-status="online" data-username="Josephin Doe" data-toggle="tooltip" data-placement="left" title="Josephin Doe">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-radius img-radius" src="frontend\libAdmin\assets\images\avatar-3.jpg" alt="Generic placeholder image ">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Josephin Doe</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="2" data-status="online" data-username="Lary Doe" data-toggle="tooltip" data-placement="left" title="Lary Doe">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-radius" src="frontend\libAdmin\assets\images\avatar-2.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Lary Doe</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="3" data-status="online" data-username="Alice" data-toggle="tooltip" data-placement="left" title="Alice">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-radius" src="frontend\libAdmin\assets\images\avatar-4.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Alice</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="4" data-status="online" data-username="Alia" data-toggle="tooltip" data-placement="left" title="Alia">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-radius" src="frontend\libAdmin\assets\images\avatar-3.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Alia</div>
                                    </div>
                                </div>
                                <div class="media userlist-box" data-id="5" data-status="online" data-username="Suzen" data-toggle="tooltip" data-placement="left" title="Suzen">
                                    <a class="media-left" href="#!">
                                        <img class="media-object img-radius" src="frontend\libAdmin\assets\images\avatar-2.jpg" alt="Generic placeholder image">
                                        <div class="live-status bg-success"></div>
                                    </a>
                                    <div class="media-body">
                                        <div class="f-13 chat-header">Suzen</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sidebar inner chat start-->
            <div class="showChat_inner">
                <div class="media chat-inner-header">
                    <a class="back_chatBox">
                        <i class="feather icon-chevron-left"></i> Josephin Doe
                    </a>
                </div>
                <div class="media chat-messages">
                    <a class="media-left photo-table" href="#!">
                        <img class="media-object img-radius img-radius m-t-5" src="frontend\libAdmin\assets\images\avatar-3.jpg" alt="Generic placeholder image">
                    </a>
                    <div class="media-body chat-menu-content">
                        <div class="">
                            <p class="chat-cont">I'm just looking around. Will you tell me something about yourself?</p>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                </div>
                <div class="media chat-messages">
                    <div class="media-body chat-menu-reply">
                        <div class="">
                            <p class="chat-cont">I'm just looking around. Will you tell me something about yourself?</p>
                            <p class="chat-time">8:20 a.m.</p>
                        </div>
                    </div>
                    <div class="media-right photo-table">
                        <a href="#!">
                            <img class="media-object img-radius img-radius m-t-5" src="frontend\libAdmin\assets\images\avatar-4.jpg" alt="Generic placeholder image">
                        </a>
                    </div>
                </div>
                <div class="chat-reply-box p-b-20">
                    <div class="right-icon-control">
                        <input type="text" class="form-control search-text" placeholder="Share Your Thoughts">
                        <div class="form-icon">
                            <i class="feather icon-navigation"></i>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sidebar inner chat end-->
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="pcoded-navigatio-lavel">Navigation</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-home"></i></span>
                                        <span class="pcoded-mtext">Dashboard</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="index-1.htm">
                                                <span class="pcoded-mtext">Default</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="dashboard-crm.htm">
                                                <span class="pcoded-mtext">CRM</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dashboard-analytics.htm">
                                                <span class="pcoded-mtext">Analytics</span>
                                                <span class="pcoded-badge label label-info ">NEW</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-sidebar"></i></span>
                                        <span class="pcoded-mtext">Page layouts</span>
                                        <span class="pcoded-badge label label-warning">NEW</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" pcoded-hasmenu">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Vertical</span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class=" ">
                                                    <a href="menu-static.htm">
                                                        <span class="pcoded-mtext">Static Layout</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-header-fixed.htm">
                                                        <span class="pcoded-mtext">Header Fixed</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-compact.htm">
                                                        <span class="pcoded-mtext">Compact</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-sidebar.htm">
                                                        <span class="pcoded-mtext">Sidebar Fixed</span>
                                                    </a>
                                                </li>

                                            </ul>
                                        </li>
                                        <li class=" pcoded-hasmenu">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Horizontal</span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class=" ">
                                                    <a href="menu-horizontal-static.htm" target="_blank">
                                                        <span class="pcoded-mtext">Static Layout</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-fixed.htm" target="_blank">
                                                        <span class="pcoded-mtext">Fixed layout</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-icon.htm" target="_blank">
                                                        <span class="pcoded-mtext">Static With Icon</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="menu-horizontal-icon-fixed.htm" target="_blank">
                                                        <span class="pcoded-mtext">Fixed With Icon</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class=" ">
                                            <a href="menu-bottom.htm">
                                                <span class="pcoded-mtext">Bottom Menu</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="box-layout.htm" target="_blank">
                                                <span class="pcoded-mtext">Box Layout</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="menu-rtl.htm" target="_blank">
                                                <span class="pcoded-mtext">RTL</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a href="navbar-light.htm">
                                        <span class="pcoded-micon"><i class="feather icon-menu"></i></span>
                                        <span class="pcoded-mtext">Navigation</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-layers"></i></span>
                                        <span class="pcoded-mtext">Widget</span>
                                        <span class="pcoded-badge label label-danger">100+</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="widget-statistic.htm">
                                                <span class="pcoded-mtext">Statistic</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="widget-data.htm">
                                                <span class="pcoded-mtext">Data</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="widget-chart.htm">
                                                <span class="pcoded-mtext">Chart Widget</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">UI Element</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-box"></i></span>
                                        <span class="pcoded-mtext">Basic Components</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="alert.htm">
                                                <span class="pcoded-mtext">Alert</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="breadcrumb.htm">
                                                <span class="pcoded-mtext">Breadcrumbs</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="button.htm">
                                                <span class="pcoded-mtext">Button</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="box-shadow.htm">
                                                <span class="pcoded-mtext">Box-Shadow</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="accordion.htm">
                                                <span class="pcoded-mtext">Accordion</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="generic-class.htm">
                                                <span class="pcoded-mtext">Generic Class</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="tabs.htm">
                                                <span class="pcoded-mtext">Tabs</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="color.htm">
                                                <span class="pcoded-mtext">Color</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="label-badge.htm">
                                                <span class="pcoded-mtext">Label Badge</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="progress-bar.htm">
                                                <span class="pcoded-mtext">Progress Bar</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="preloader.htm">
                                                <span class="pcoded-mtext">Pre-Loader</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="list.htm">
                                                <span class="pcoded-mtext">List</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="tooltip.htm">
                                                <span class="pcoded-mtext">Tooltip And Popover</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="typography.htm">
                                                <span class="pcoded-mtext">Typography</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="other.htm">
                                                <span class="pcoded-mtext">Other</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-gitlab"></i></span>
                                        <span class="pcoded-mtext">Advance Components</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="draggable.htm">
                                                <span class="pcoded-mtext">Draggable</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="bs-grid.htm">
                                                <span class="pcoded-mtext">Grid Stack</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="light-box.htm">
                                                <span class="pcoded-mtext">Light Box</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="modal.htm">
                                                <span class="pcoded-mtext">Modal</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="notification.htm">
                                                <span class="pcoded-mtext">Notifications</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="notify.htm">
                                                <span class="pcoded-mtext">PNOTIFY</span>
                                                <span class="pcoded-badge label label-info">NEW</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="rating.htm">
                                                <span class="pcoded-mtext">Rating</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="range-slider.htm">
                                                <span class="pcoded-mtext">Range Slider</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="slider.htm">
                                                <span class="pcoded-mtext">Slider</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="syntax-highlighter.htm">
                                                <span class="pcoded-mtext">Syntax Highlighter</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="tour.htm">
                                                <span class="pcoded-mtext">Tour</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="treeview.htm">
                                                <span class="pcoded-mtext">Tree View</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="nestable.htm">
                                                <span class="pcoded-mtext">Nestable</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="toolbar.htm">
                                                <span class="pcoded-mtext">Toolbar</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="x-editable.htm">
                                                <span class="pcoded-mtext">X-Editable</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-package"></i></span>
                                        <span class="pcoded-mtext">Extra Components</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="session-timeout.htm">
                                                <span class="pcoded-mtext">Session Timeout</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="session-idle-timeout.htm">
                                                <span class="pcoded-mtext">Session Idle Timeout</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="offline.htm">
                                                <span class="pcoded-mtext">Offline</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class=" ">
                                    <a href="animation.htm">
                                        <span class="pcoded-micon"><i class="feather icon-aperture rotate-refresh"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Animations</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="sticky.htm">
                                        <span class="pcoded-micon"><i class="feather icon-cpu"></i></span>
                                        <span class="pcoded-mtext">Sticky Notes</span>
                                        <span class="pcoded-badge label label-danger">HOT</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-command"></i></span>
                                        <span class="pcoded-mtext">Icons</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="icon-font-awesome.htm">
                                                <span class="pcoded-mtext">Font Awesome</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-themify.htm">
                                                <span class="pcoded-mtext">Themify</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-simple-line.htm">
                                                <span class="pcoded-mtext">Simple Line Icon</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-ion.htm">
                                                <span class="pcoded-mtext">Ion Icon</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-material-design.htm">
                                                <span class="pcoded-mtext">Material Design</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-icofonts.htm">
                                                <span class="pcoded-mtext">Ico Fonts</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-weather.htm">
                                                <span class="pcoded-mtext">Weather Icon</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-typicons.htm">
                                                <span class="pcoded-mtext">Typicons</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="icon-flags.htm">
                                                <span class="pcoded-mtext">Flags</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Forms</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-clipboard"></i></span>
                                        <span class="pcoded-mtext">Form Components</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="form-elements-component.htm">
                                                <span class="pcoded-mtext">Form Components</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="form-elements-add-on.htm">
                                                <span class="pcoded-mtext">Form-Elements-Add-On</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="form-elements-advance.htm">
                                                <span class="pcoded-mtext">Form-Elements-Advance</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="form-validation.htm">
                                                <span class="pcoded-mtext">Form Validation</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class=" ">
                                    <a href="form-picker.htm">
                                        <span class="pcoded-micon"><i class="feather icon-edit-1"></i></span>
                                        <span class="pcoded-mtext">Form Picker</span>
                                        <span class="pcoded-badge label label-warning">NEW</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="form-select.htm">
                                        <span class="pcoded-micon"><i class="feather icon-feather"></i></span>
                                        <span class="pcoded-mtext">Form Select</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="form-masking.htm">
                                        <span class="pcoded-micon"><i class="feather icon-shield"></i></span>
                                        <span class="pcoded-mtext">Form Masking</span>
                                    </a>
                                </li>
                                <li class=" ">
                                    <a href="form-wizard.htm">
                                        <span class="pcoded-micon"><i class="feather icon-tv"></i></span>
                                        <span class="pcoded-mtext">Form Wizard</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-book"></i></span>
                                        <span class="pcoded-mtext">Ready To Use</span>
                                        <span class="pcoded-badge label label-danger">HOT</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="ready-cloned-elements-form.htm">
                                                <span class="pcoded-mtext">Cloned Elements Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-currency-form.htm">
                                                <span class="pcoded-mtext">Currency Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-form-booking.htm">
                                                <span class="pcoded-mtext">Booking Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-form-booking-multi-steps.htm">
                                                <span class="pcoded-mtext">Booking Multi Steps Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-form-comment.htm">
                                                <span class="pcoded-mtext">Comment Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-form-contact.htm">
                                                <span class="pcoded-mtext">Contact Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-job-application-form.htm">
                                                <span class="pcoded-mtext">Job Application Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-js-addition-form.htm">
                                                <span class="pcoded-mtext">JS Addition Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-login-form.htm">
                                                <span class="pcoded-mtext">Login Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-popup-modal-form.htm" target="_blank">
                                                <span class="pcoded-mtext">Popup Modal Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-registration-form.htm">
                                                <span class="pcoded-mtext">Registration Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-review-form.htm">
                                                <span class="pcoded-mtext">Review Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-subscribe-form.htm">
                                                <span class="pcoded-mtext">Subscribe Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-suggestion-form.htm">
                                                <span class="pcoded-mtext">Suggestion Form</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ready-tabs-form.htm">
                                                <span class="pcoded-mtext">Tabs Form</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Tables</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-credit-card"></i></span>
                                        <span class="pcoded-mtext">Bootstrap Table</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="bs-basic-table.htm">
                                                <span class="pcoded-mtext">Basic Table</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="bs-table-sizing.htm">
                                                <span class="pcoded-mtext">Sizing Table</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="bs-table-border.htm">
                                                <span class="pcoded-mtext">Border Table</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="bs-table-styling.htm">
                                                <span class="pcoded-mtext">Styling Table</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu pcoded-trigger">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-inbox"></i></span>
                                        <span class="pcoded-mtext">Data Table</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="dt-basic.htm">
                                                <span class="pcoded-mtext">Basic Initialization</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-advance.htm">
                                                <span class="pcoded-mtext">Advance Initialization</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-styling.htm">
                                                <span class="pcoded-mtext">Styling</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-api.htm">
                                                <span class="pcoded-mtext">API</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ajax.htm">
                                                <span class="pcoded-mtext">Ajax</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-server-side.htm">
                                                <span class="pcoded-mtext">Server Side</span>
                                            </a>
                                        </li>
                                        <li class="active">
                                            <a href="dt-plugin.htm">
                                                <span class="pcoded-mtext">Plug-In</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-data-sources.htm">
                                                <span class="pcoded-mtext">Data Sources</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-server"></i></span>
                                        <span class="pcoded-mtext">Data Table Extensions</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="dt-ext-autofill.htm">
                                                <span class="pcoded-mtext">AutoFill</span>
                                            </a>
                                        </li>
                                        <li class="pcoded-hasmenu">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Button</span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class=" ">
                                                    <a href="dt-ext-basic-buttons.htm">
                                                        <span class="pcoded-mtext">Basic Button</span>
                                                    </a>
                                                </li>
                                                <li class=" ">
                                                    <a href="dt-ext-buttons-html-5-data-export.htm">
                                                        <span class="pcoded-mtext">Html-5 Data Export</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-col-reorder.htm">
                                                <span class="pcoded-mtext">Col Reorder</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-fixed-columns.htm">
                                                <span class="pcoded-mtext">Fixed Columns</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-fixed-header.htm">
                                                <span class="pcoded-mtext">Fixed Header</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-key-table.htm">
                                                <span class="pcoded-mtext">Key Table</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-responsive.htm">
                                                <span class="pcoded-mtext">Responsive</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-row-reorder.htm">
                                                <span class="pcoded-mtext">Row Reorder</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-scroller.htm">
                                                <span class="pcoded-mtext">Scroller</span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="dt-ext-select.htm">
                                                <span class="pcoded-mtext">Select Table</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class=" ">
                                    <a href="foo-table.htm">
                                        <span class="pcoded-micon"><i class="feather icon-hash"></i></span>
                                        <span class="pcoded-mtext">FooTable</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-airplay"></i></span>
                                        <span class="pcoded-mtext">Handson Table</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="handson-appearance.htm">
                                                <span class="pcoded-mtext">Appearance</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-data-operation.htm">
                                                <span class="pcoded-mtext">Data Operation</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-rows-cols.htm">
                                                <span class="pcoded-mtext">Rows Columns</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-columns-only.htm">
                                                <span class="pcoded-mtext">Columns Only</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-cell-features.htm">
                                                <span class="pcoded-mtext">Cell Features</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-cell-types.htm">
                                                <span class="pcoded-mtext">Cell Types</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-integrations.htm">
                                                <span class="pcoded-mtext">Integrations</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-rows-only.htm">
                                                <span class="pcoded-mtext">Rows Only</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="handson-utilities.htm">
                                                <span class="pcoded-mtext">Utilities</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a href="editable-table.htm">
                                        <span class="pcoded-micon"><i class="feather icon-edit"></i></span>
                                        <span class="pcoded-mtext">Editable Table</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Chart And Maps</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span>
                                        <span class="pcoded-mtext">Charts</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="chart-google.htm">
                                                <span class="pcoded-mtext">Google Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-echart.htm">
                                                <span class="pcoded-mtext">Echarts</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-chartjs.htm">
                                                <span class="pcoded-mtext">ChartJs</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-list.htm">
                                                <span class="pcoded-mtext">List Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-float.htm">
                                                <span class="pcoded-mtext">Float Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-knob.htm">
                                                <span class="pcoded-mtext">Knob chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-morris.htm">
                                                <span class="pcoded-mtext">Morris Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-nvd3.htm">
                                                <span class="pcoded-mtext">Nvd3 Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-peity.htm">
                                                <span class="pcoded-mtext">Peity Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-radial.htm">
                                                <span class="pcoded-mtext">Radial Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-rickshaw.htm">
                                                <span class="pcoded-mtext">Rickshaw Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-sparkline.htm">
                                                <span class="pcoded-mtext">Sparkline Chart</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="chart-c3.htm">
                                                <span class="pcoded-mtext">C3 Chart</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-map"></i></span>
                                        <span class="pcoded-mtext">Maps</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="map-google.htm">
                                                <span class="pcoded-mtext">Google Maps</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="map-vector.htm">
                                                <span class="pcoded-mtext">Vector Maps</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="map-api.htm">
                                                <span class="pcoded-mtext">Google Map Search API</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="location.htm">
                                                <span class="pcoded-mtext">Location</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a href="frontend\libAdmin\extra-pages\landingpage\index.htm" target="_blank">
                                        <span class="pcoded-micon"><i class="feather icon-navigation-2"></i></span>
                                        <span class="pcoded-mtext">Landing Page</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Pages</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-unlock"></i></span>
                                        <span class="pcoded-mtext">Authentication</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="auth-normal-sign-in.htm" target="_blank">
                                                <span class="pcoded-mtext">Login With BG Image</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-in-social.htm" target="_blank">
                                                <span class="pcoded-mtext">Login With Social Icon</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-in-social-header-footer.htm" target="_blank">
                                                <span class="pcoded-mtext">Login Social With Header And Footer</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-normal-sign-in-header-footer.htm" target="_blank">
                                                <span class="pcoded-mtext">Login With Header And Footer</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-up.htm" target="_blank">
                                                <span class="pcoded-mtext">Registration BG Image</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-up-social.htm" target="_blank">
                                                <span class="pcoded-mtext">Registration Social Icon</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-up-social-header-footer.htm" target="_blank">
                                                <span class="pcoded-mtext">Registration Social With Header And Footer</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-sign-up-header-footer.htm" target="_blank">
                                                <span class="pcoded-mtext">Registration With Header And Footer</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-multi-step-sign-up.htm" target="_blank">
                                                <span class="pcoded-mtext">Multi Step Registration</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-reset-password.htm" target="_blank">
                                                <span class="pcoded-mtext">Forgot Password</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-lock-screen.htm" target="_blank">
                                                <span class="pcoded-mtext">Lock Screen</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="auth-modal.htm" target="_blank">
                                                <span class="pcoded-mtext">Modal</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-sliders"></i></span>
                                        <span class="pcoded-mtext">Maintenance</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="error.htm">
                                                <span class="pcoded-mtext">Error</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="comming-soon.htm">
                                                <span class="pcoded-mtext">Comming Soon</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="offline-ui.htm">
                                                <span class="pcoded-mtext">Offline UI</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-users"></i></span>
                                        <span class="pcoded-mtext">User Profile</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="timeline.htm">
                                                <span class="pcoded-mtext">Timeline</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="timeline-social.htm">
                                                <span class="pcoded-mtext">Timeline Social</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="user-profile.htm">
                                                <span class="pcoded-mtext">User Profile</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="user-card.htm">
                                                <span class="pcoded-mtext">User Card</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-shopping-cart"></i></span>
                                        <span class="pcoded-mtext">E-Commerce</span>
                                        <span class="pcoded-badge label label-danger">NEW</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="product.htm">
                                                <span class="pcoded-mtext">Product</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="product-list.htm">
                                                <span class="pcoded-mtext">Product List</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="product-edit.htm">
                                                <span class="pcoded-mtext">Product Edit</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="product-detail.htm">
                                                <span class="pcoded-mtext">Product Detail</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="product-cart.htm">
                                                <span class="pcoded-mtext">Product Card</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="product-payment.htm">
                                                <span class="pcoded-mtext">Credit Card Form</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-mail"></i></span>
                                        <span class="pcoded-mtext">Email</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="email-compose.htm">
                                                <span class="pcoded-mtext">Compose Email</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="email-inbox.htm">
                                                <span class="pcoded-mtext">Inbox</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="email-read.htm">
                                                <span class="pcoded-mtext">Read Mail</span>
                                            </a>
                                        </li>
                                        <li class="pcoded-hasmenu ">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Email Template</span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class="">
                                                    <a href="frontend\libAdmin\extra-pages\email-templates\email-welcome.htm">
                                                        <span class="pcoded-mtext">Welcome Email</span>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="frontend\libAdmin\extra-pages\email-templates\email-password.htm">
                                                        <span class="pcoded-mtext">Reset Password</span>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="frontend\libAdmin\extra-pages\email-templates\email-newsletter.htm">
                                                        <span class="pcoded-mtext">Newsletter Email</span>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="frontend\libAdmin\extra-pages\email-templates\email-launch.htm">
                                                        <span class="pcoded-mtext">App Launch</span>
                                                    </a>
                                                </li>
                                                <li class="">
                                                    <a href="frontend\libAdmin\extra-pages\email-templates\email-activation.htm">
                                                        <span class="pcoded-mtext">Activation Code</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">App</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class=" ">
                                    <a href="chat.htm">
                                        <span class="pcoded-micon"><i class="feather icon-message-square"></i></span>
                                        <span class="pcoded-mtext">Chat</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-globe"></i></span>
                                        <span class="pcoded-mtext">Social</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="fb-wall.htm">
                                                <span class="pcoded-mtext">Wall</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="message.htm">
                                                <span class="pcoded-mtext">Messages</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-check-circle"></i></span>
                                        <span class="pcoded-mtext">Task</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="task-list.htm">
                                                <span class="pcoded-mtext">Task List</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="task-board.htm">
                                                <span class="pcoded-mtext">Task Board</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="task-detail.htm">
                                                <span class="pcoded-mtext">Task Detail</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="issue-list.htm">
                                                <span class="pcoded-mtext">Issue List</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-bookmark"></i></span>
                                        <span class="pcoded-mtext">To-Do</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="todo.htm">
                                                <span class="pcoded-mtext">To-Do</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="notes.htm">
                                                <span class="pcoded-mtext">Notes</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-image"></i></span>
                                        <span class="pcoded-mtext">Gallery</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="gallery-grid.htm">
                                                <span class="pcoded-mtext">Gallery-Grid</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="gallery-masonry.htm">
                                                <span class="pcoded-mtext">Masonry Gallery</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="gallery-advance.htm">
                                                <span class="pcoded-mtext">Advance Gallery</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-search"></i><b>S</b></span>
                                        <span class="pcoded-mtext">Search</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="search-result.htm">
                                                <span class="pcoded-mtext">Simple Search</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="search-result2.htm">
                                                <span class="pcoded-mtext">Grouping Search</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-award"></i></span>
                                        <span class="pcoded-mtext">Job Search</span>
                                        <span class="pcoded-badge label label-danger">NEW</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="job-card-view.htm">
                                                <span class="pcoded-mtext">Card View</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="job-details.htm">
                                                <span class="pcoded-mtext">Job Detailed</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="job-find.htm">
                                                <span class="pcoded-mtext">Job Find</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="job-panel-view.htm">
                                                <span class="pcoded-mtext">Job Panel View</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Extension</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-file-plus"></i></span>
                                        <span class="pcoded-mtext">Editor</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="ck-editor.htm">
                                                <span class="pcoded-mtext">CK-Editor</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="wysiwyg-editor.htm">
                                                <span class="pcoded-mtext">WYSIWYG Editor</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="ace-editor.htm">
                                                <span class="pcoded-mtext">Ace Editor</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="long-press-editor.htm">
                                                <span class="pcoded-mtext">Long Press Editor</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-file-minus"></i></span>
                                        <span class="pcoded-mtext">Invoice</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="invoice.htm">
                                                <span class="pcoded-mtext">Invoice</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="invoice-summary.htm">
                                                <span class="pcoded-mtext">Invoice Summary</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="invoice-list.htm">
                                                <span class="pcoded-mtext">Invoice List</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-calendar"></i></span>
                                        <span class="pcoded-mtext">Event Calendar</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="event-full-calender.htm">
                                                <span class="pcoded-mtext">Full Calendar</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="event-clndr.htm">
                                                <span class="pcoded-mtext">CLNDER</span>
                                                <span class="pcoded-badge label label-info">NEW</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a href="image-crop.htm">
                                        <span class="pcoded-micon"><i class="feather icon-scissors"></i></span>
                                        <span class="pcoded-mtext">Image Cropper</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="file-upload.htm">
                                        <span class="pcoded-micon"><i class="feather icon-upload-cloud"></i></span>
                                        <span class="pcoded-mtext">File Upload</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="change-loges.htm">
                                        <span class="pcoded-micon"><i class="feather icon-briefcase"></i><b>CL</b></span>
                                        <span class="pcoded-mtext">Change Loges</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Other</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="feather icon-list"></i></span>
                                        <span class="pcoded-mtext">Menu Levels</span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Menu Level 2.1</span>
                                            </a>
                                        </li>
                                        <li class="pcoded-hasmenu ">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Menu Level 2.2</span>
                                            </a>
                                            <ul class="pcoded-submenu">
                                                <li class="">
                                                    <a href="javascript:void(0)">
                                                        <span class="pcoded-mtext">Menu Level 3.1</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="">
                                            <a href="javascript:void(0)">
                                                <span class="pcoded-mtext">Menu Level 2.3</span>
                                            </a>
                                        </li>

                                    </ul>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0)" class="disabled">
                                        <span class="pcoded-micon"><i class="feather icon-power"></i></span>
                                        <span class="pcoded-mtext">Disabled Menu</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="sample-page.htm">
                                        <span class="pcoded-micon"><i class="feather icon-watch"></i></span>
                                        <span class="pcoded-mtext">Sample Page</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigatio-lavel">Support</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="http://html.codedthemes.com/Adminty/doc" target="_blank">
                                        <span class="pcoded-micon"><i class="feather icon-monitor"></i></span>
                                        <span class="pcoded-mtext">Documentation</span>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#" target="_blank">
                                        <span class="pcoded-micon"><i class="feather icon-help-circle"></i></span>
                                        <span class="pcoded-mtext">Submit Issue</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-header start -->
                                    <div class="page-header">
                                        <div class="row align-items-end">
                                            <div class="col-lg-8">
                                                <div class="page-header-title">
                                                    <div class="d-inline">
                                                        <h4>Plugin DataTable</h4>
                                                        <span>Real power of DataTables</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="page-header-breadcrumb">
                                                    <ul class="breadcrumb-title">
                                                        <li class="breadcrumb-item">
                                                            <a href="index-1.htm"> <i class="feather icon-home"></i> </a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Data Table</a>
                                                        </li>
                                                        <li class="breadcrumb-item"><a href="#!">Plug-in</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page-header end -->

                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <!-- API plug-in methods table start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>API Plug-in Methods</h5>
                                                <span>The example below shows DataTables loading data for a table from arrays as the data source, where the structure of the row's data source in this example is:</span>

                                            </div>
                                            <div class="card-block">
                                                <div class="dt-plugin-buttons"></div>
                                                <div class="dt-responsive table-responsive">
                                                    <table id="dt-plugin-method" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Garrett Winters</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>63</td>
                                                                <td>2011/07/25</td>
                                                                <td>$170,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ashton Cox</td>
                                                                <td>Junior Technical Author</td>
                                                                <td>San Francisco</td>
                                                                <td>66</td>
                                                                <td>2009/01/12</td>
                                                                <td>$86,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cedric Kelly</td>
                                                                <td>Senior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2012/03/29</td>
                                                                <td>$433,060</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Airi Satou</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>33</td>
                                                                <td>2008/11/28</td>
                                                                <td>$162,700</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brielle Williamson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2012/12/02</td>
                                                                <td>$372,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Herrod Chandler</td>
                                                                <td>Sales Assistant</td>
                                                                <td>San Francisco</td>
                                                                <td>59</td>
                                                                <td>2012/08/06</td>
                                                                <td>$137,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Rhona Davidson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Tokyo</td>
                                                                <td>55</td>
                                                                <td>2010/10/14</td>
                                                                <td>$327,900</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colleen Hurst</td>
                                                                <td>Javascript Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>39</td>
                                                                <td>2009/09/15</td>
                                                                <td>$205,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sonya Frost</td>
                                                                <td>Software Engineer</td>
                                                                <td>Edinburgh</td>
                                                                <td>23</td>
                                                                <td>2008/12/13</td>
                                                                <td>$103,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jena Gaines</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>30</td>
                                                                <td>2008/12/19</td>
                                                                <td>$90,560</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quinn Flynn</td>
                                                                <td>Support Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2013/03/03</td>
                                                                <td>$342,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Charde Marshall</td>
                                                                <td>Regional Director</td>
                                                                <td>San Francisco</td>
                                                                <td>36</td>
                                                                <td>2008/10/16</td>
                                                                <td>$470,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Haley Kennedy</td>
                                                                <td>Senior Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>43</td>
                                                                <td>2012/12/18</td>
                                                                <td>$313,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tatyana Fitzpatrick</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>19</td>
                                                                <td>2010/03/17</td>
                                                                <td>$385,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Silva</td>
                                                                <td>Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>66</td>
                                                                <td>2012/11/27</td>
                                                                <td>$198,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Paul Byrd</td>
                                                                <td>Chief Financial Officer (CFO)</td>
                                                                <td>New York</td>
                                                                <td>64</td>
                                                                <td>2010/06/09</td>
                                                                <td>$725,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gloria Little</td>
                                                                <td>Systems Administrator</td>
                                                                <td>New York</td>
                                                                <td>59</td>
                                                                <td>2009/04/10</td>
                                                                <td>$237,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bradley Greer</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>41</td>
                                                                <td>2012/10/13</td>
                                                                <td>$132,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dai Rios</td>
                                                                <td>Personnel Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>35</td>
                                                                <td>2012/09/26</td>
                                                                <td>$217,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jenette Caldwell</td>
                                                                <td>Development Lead</td>
                                                                <td>New York</td>
                                                                <td>30</td>
                                                                <td>2011/09/03</td>
                                                                <td>$345,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Yuri Berry</td>
                                                                <td>Chief Marketing Officer (CMO)</td>
                                                                <td>New York</td>
                                                                <td>40</td>
                                                                <td>2009/06/25</td>
                                                                <td>$675,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Caesar Vance</td>
                                                                <td>Pre-Sales Support</td>
                                                                <td>New York</td>
                                                                <td>21</td>
                                                                <td>2011/12/12</td>
                                                                <td>$106,450</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Doris Wilder</td>
                                                                <td>Sales Assistant</td>
                                                                <td>Sidney</td>
                                                                <td>23</td>
                                                                <td>2010/09/20</td>
                                                                <td>$85,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Angelica Ramos</td>
                                                                <td>Chief Executive Officer (CEO)</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2009/10/09</td>
                                                                <td>$1,200,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Joyce</td>
                                                                <td>Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>42</td>
                                                                <td>2010/12/22</td>
                                                                <td>$92,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Chang</td>
                                                                <td>Regional Director</td>
                                                                <td>Singapore</td>
                                                                <td>28</td>
                                                                <td>2010/11/14</td>
                                                                <td>$357,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brenden Wagner</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>28</td>
                                                                <td>2011/06/07</td>
                                                                <td>$206,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fiona Green</td>
                                                                <td>Chief Operating Officer (COO)</td>
                                                                <td>San Francisco</td>
                                                                <td>48</td>
                                                                <td>2010/03/11</td>
                                                                <td>$850,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shou Itou</td>
                                                                <td>Regional Marketing</td>
                                                                <td>Tokyo</td>
                                                                <td>20</td>
                                                                <td>2011/08/14</td>
                                                                <td>$163,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michelle House</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Sidney</td>
                                                                <td>37</td>
                                                                <td>2011/06/02</td>
                                                                <td>$95,400</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Suki Burks</td>
                                                                <td>Developer</td>
                                                                <td>London</td>
                                                                <td>53</td>
                                                                <td>2009/10/22</td>
                                                                <td>$114,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Prescott Bartlett</td>
                                                                <td>Technical Author</td>
                                                                <td>London</td>
                                                                <td>27</td>
                                                                <td>2011/05/07</td>
                                                                <td>$145,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Cortez</td>
                                                                <td>Team Leader</td>
                                                                <td>San Francisco</td>
                                                                <td>22</td>
                                                                <td>2008/10/26</td>
                                                                <td>$235,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Martena Mccray</td>
                                                                <td>Post-Sales support</td>
                                                                <td>Edinburgh</td>
                                                                <td>46</td>
                                                                <td>2011/03/09</td>
                                                                <td>$324,050</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unity Butler</td>
                                                                <td>Marketing Designer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/12/09</td>
                                                                <td>$85,675</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Howard Hatfield</td>
                                                                <td>Office Manager</td>
                                                                <td>San Francisco</td>
                                                                <td>51</td>
                                                                <td>2008/12/16</td>
                                                                <td>$164,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hope Fuentes</td>
                                                                <td>Secretary</td>
                                                                <td>San Francisco</td>
                                                                <td>41</td>
                                                                <td>2010/02/12</td>
                                                                <td>$109,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vivian Harrell</td>
                                                                <td>Financial Controller</td>
                                                                <td>San Francisco</td>
                                                                <td>62</td>
                                                                <td>2009/02/14</td>
                                                                <td>$452,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Timothy Mooney</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>37</td>
                                                                <td>2008/12/11</td>
                                                                <td>$136,200</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jackson Bradshaw</td>
                                                                <td>Director</td>
                                                                <td>New York</td>
                                                                <td>65</td>
                                                                <td>2008/09/26</td>
                                                                <td>$645,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Olivia Liang</td>
                                                                <td>Support Engineer</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2011/02/03</td>
                                                                <td>$234,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bruno Nash</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>38</td>
                                                                <td>2011/05/03</td>
                                                                <td>$163,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sakura Yamamoto</td>
                                                                <td>Support Engineer</td>
                                                                <td>Tokyo</td>
                                                                <td>37</td>
                                                                <td>2009/08/19</td>
                                                                <td>$139,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thor Walton</td>
                                                                <td>Developer</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2013/08/11</td>
                                                                <td>$98,540</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Finn Camacho</td>
                                                                <td>Support Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/07/07</td>
                                                                <td>$87,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serge Baldwin</td>
                                                                <td>Data Coordinator</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2012/04/09</td>
                                                                <td>$138,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zenaida Frank</td>
                                                                <td>Software Engineer</td>
                                                                <td>New York</td>
                                                                <td>63</td>
                                                                <td>2010/01/04</td>
                                                                <td>$125,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zorita Serrano</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>56</td>
                                                                <td>2012/06/01</td>
                                                                <td>$115,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Acosta</td>
                                                                <td>Junior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>43</td>
                                                                <td>2013/02/01</td>
                                                                <td>$75,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cara Stevens</td>
                                                                <td>Sales Assistant</td>
                                                                <td>New York</td>
                                                                <td>46</td>
                                                                <td>2011/12/06</td>
                                                                <td>$145,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hermione Butler</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2011/03/21</td>
                                                                <td>$356,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lael Greer</td>
                                                                <td>Systems Administrator</td>
                                                                <td>London</td>
                                                                <td>21</td>
                                                                <td>2009/02/27</td>
                                                                <td>$103,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jonas Alexander</td>
                                                                <td>Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>30</td>
                                                                <td>2010/07/14</td>
                                                                <td>$86,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shad Decker</td>
                                                                <td>Regional Director</td>
                                                                <td>Edinburgh</td>
                                                                <td>51</td>
                                                                <td>2008/11/13</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Bruce</td>
                                                                <td>Javascript Developer</td>
                                                                <td>Singapore</td>
                                                                <td>29</td>
                                                                <td>2011/06/27</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Donna Snider</td>
                                                                <td>Customer Support</td>
                                                                <td>New York</td>
                                                                <td>27</td>
                                                                <td>2011/01/25</td>
                                                                <td>$112,000</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- API plug-in methods table end -->
                                        <!-- Ordering plug-ins (with type detection) table start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Ordering Plug-Ins (With Type Detection)</h5>
                                                <span>This example shows ordering with using an enumerated type.</span>

                                            </div>
                                            <div class="card-block">
                                                <div class="dt-responsive table-responsive">
                                                    <table id="dt-ordering" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Garrett Winters</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>63</td>
                                                                <td>2011/07/25</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ashton Cox</td>
                                                                <td>Junior Technical Author</td>
                                                                <td>San Francisco</td>
                                                                <td>66</td>
                                                                <td>2009/01/12</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cedric Kelly</td>
                                                                <td>Senior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2012/03/29</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Airi Satou</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>33</td>
                                                                <td>2008/11/28</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brielle Williamson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2012/12/02</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Herrod Chandler</td>
                                                                <td>Sales Assistant</td>
                                                                <td>San Francisco</td>
                                                                <td>59</td>
                                                                <td>2012/08/06</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Rhona Davidson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Tokyo</td>
                                                                <td>55</td>
                                                                <td>2010/10/14</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colleen Hurst</td>
                                                                <td>Javascript Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>39</td>
                                                                <td>2009/09/15</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sonya Frost</td>
                                                                <td>Software Engineer</td>
                                                                <td>Edinburgh</td>
                                                                <td>23</td>
                                                                <td>2008/12/13</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jena Gaines</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>30</td>
                                                                <td>2008/12/19</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quinn Flynn</td>
                                                                <td>Support Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2013/03/03</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Charde Marshall</td>
                                                                <td>Regional Director</td>
                                                                <td>San Francisco</td>
                                                                <td>36</td>
                                                                <td>2008/10/16</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Haley Kennedy</td>
                                                                <td>Senior Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>43</td>
                                                                <td>2012/12/18</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tatyana Fitzpatrick</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>19</td>
                                                                <td>2010/03/17</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Silva</td>
                                                                <td>Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>66</td>
                                                                <td>2012/11/27</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Paul Byrd</td>
                                                                <td>Chief Financial Officer (CFO)</td>
                                                                <td>New York</td>
                                                                <td>64</td>
                                                                <td>2010/06/09</td>
                                                                <td>High</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gloria Little</td>
                                                                <td>Systems Administrator</td>
                                                                <td>New York</td>
                                                                <td>59</td>
                                                                <td>2009/04/10</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bradley Greer</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>41</td>
                                                                <td>2012/10/13</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dai Rios</td>
                                                                <td>Personnel Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>35</td>
                                                                <td>2012/09/26</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jenette Caldwell</td>
                                                                <td>Development Lead</td>
                                                                <td>New York</td>
                                                                <td>30</td>
                                                                <td>2011/09/03</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Yuri Berry</td>
                                                                <td>Chief Marketing Officer (CMO)</td>
                                                                <td>New York</td>
                                                                <td>40</td>
                                                                <td>2009/06/25</td>
                                                                <td>High</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Caesar Vance</td>
                                                                <td>Pre-Sales Support</td>
                                                                <td>New York</td>
                                                                <td>21</td>
                                                                <td>2011/12/12</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Doris Wilder</td>
                                                                <td>Sales Assistant</td>
                                                                <td>Sidney</td>
                                                                <td>23</td>
                                                                <td>2010/09/20</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Angelica Ramos</td>
                                                                <td>Chief Executive Officer (CEO)</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2009/10/09</td>
                                                                <td>High</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Joyce</td>
                                                                <td>Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>42</td>
                                                                <td>2010/12/22</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Chang</td>
                                                                <td>Regional Director</td>
                                                                <td>Singapore</td>
                                                                <td>28</td>
                                                                <td>2010/11/14</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brenden Wagner</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>28</td>
                                                                <td>2011/06/07</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fiona Green</td>
                                                                <td>Chief Operating Officer (COO)</td>
                                                                <td>San Francisco</td>
                                                                <td>48</td>
                                                                <td>2010/03/11</td>
                                                                <td>High</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shou Itou</td>
                                                                <td>Regional Marketing</td>
                                                                <td>Tokyo</td>
                                                                <td>20</td>
                                                                <td>2011/08/14</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michelle House</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Sidney</td>
                                                                <td>37</td>
                                                                <td>2011/06/02</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Suki Burks</td>
                                                                <td>Developer</td>
                                                                <td>London</td>
                                                                <td>53</td>
                                                                <td>2009/10/22</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Prescott Bartlett</td>
                                                                <td>Technical Author</td>
                                                                <td>London</td>
                                                                <td>27</td>
                                                                <td>2011/05/07</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Cortez</td>
                                                                <td>Team Leader</td>
                                                                <td>San Francisco</td>
                                                                <td>22</td>
                                                                <td>2008/10/26</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Martena Mccray</td>
                                                                <td>Post-Sales support</td>
                                                                <td>Edinburgh</td>
                                                                <td>46</td>
                                                                <td>2011/03/09</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unity Butler</td>
                                                                <td>Marketing Designer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/12/09</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Howard Hatfield</td>
                                                                <td>Office Manager</td>
                                                                <td>San Francisco</td>
                                                                <td>51</td>
                                                                <td>2008/12/16</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hope Fuentes</td>
                                                                <td>Secretary</td>
                                                                <td>San Francisco</td>
                                                                <td>41</td>
                                                                <td>2010/02/12</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vivian Harrell</td>
                                                                <td>Financial Controller</td>
                                                                <td>San Francisco</td>
                                                                <td>62</td>
                                                                <td>2009/02/14</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Timothy Mooney</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>37</td>
                                                                <td>2008/12/11</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jackson Bradshaw</td>
                                                                <td>Director</td>
                                                                <td>New York</td>
                                                                <td>65</td>
                                                                <td>2008/09/26</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Olivia Liang</td>
                                                                <td>Support Engineer</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2011/02/03</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bruno Nash</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>38</td>
                                                                <td>2011/05/03</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sakura Yamamoto</td>
                                                                <td>Support Engineer</td>
                                                                <td>Tokyo</td>
                                                                <td>37</td>
                                                                <td>2009/08/19</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thor Walton</td>
                                                                <td>Developer</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2013/08/11</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Finn Camacho</td>
                                                                <td>Support Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/07/07</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serge Baldwin</td>
                                                                <td>Data Coordinator</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2012/04/09</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zenaida Frank</td>
                                                                <td>Software Engineer</td>
                                                                <td>New York</td>
                                                                <td>63</td>
                                                                <td>2010/01/04</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zorita Serrano</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>56</td>
                                                                <td>2012/06/01</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Acosta</td>
                                                                <td>Junior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>43</td>
                                                                <td>2013/02/01</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cara Stevens</td>
                                                                <td>Sales Assistant</td>
                                                                <td>New York</td>
                                                                <td>46</td>
                                                                <td>2011/12/06</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hermione Butler</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2011/03/21</td>
                                                                <td>Medium</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lael Greer</td>
                                                                <td>Systems Administrator</td>
                                                                <td>London</td>
                                                                <td>21</td>
                                                                <td>2009/02/27</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jonas Alexander</td>
                                                                <td>Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>30</td>
                                                                <td>2010/07/14</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shad Decker</td>
                                                                <td>Regional Director</td>
                                                                <td>Edinburgh</td>
                                                                <td>51</td>
                                                                <td>2008/11/13</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Bruce</td>
                                                                <td>Javascript Developer</td>
                                                                <td>Singapore</td>
                                                                <td>29</td>
                                                                <td>2011/06/27</td>
                                                                <td>Low</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Donna Snider</td>
                                                                <td>Customer Support</td>
                                                                <td>New York</td>
                                                                <td>27</td>
                                                                <td>2011/01/25</td>
                                                                <td>Low</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Ordering plug-ins (with type detection) table end -->
                                        <!-- Custom filtering - range search table start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Custom Filtering - Range Search</h5>
                                                <span>This example shows a search being performed on the age column in the data, based upon two inputs.</span>

                                            </div>
                                            <div class="card-block">
                                                <div class="dt-responsive table-responsive">
                                                    <table class="m-b-20">
                                                        <tbody>
                                                            <tr>
                                                                <td>Minimum age:</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="min" name="min">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Maximum age:</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="max" name="max">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="dt-responsive table-responsive">
                                                    <table id="dt-range" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Tiger Nixon</td>
                                                                <td>System Architect</td>
                                                                <td>Edinburgh</td>
                                                                <td>61</td>
                                                                <td>2011/04/25</td>
                                                                <td>$320,800</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Garrett Winters</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>63</td>
                                                                <td>2011/07/25</td>
                                                                <td>$170,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ashton Cox</td>
                                                                <td>Junior Technical Author</td>
                                                                <td>San Francisco</td>
                                                                <td>66</td>
                                                                <td>2009/01/12</td>
                                                                <td>$86,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cedric Kelly</td>
                                                                <td>Senior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2012/03/29</td>
                                                                <td>$433,060</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Airi Satou</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>33</td>
                                                                <td>2008/11/28</td>
                                                                <td>$162,700</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brielle Williamson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2012/12/02</td>
                                                                <td>$372,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Herrod Chandler</td>
                                                                <td>Sales Assistant</td>
                                                                <td>San Francisco</td>
                                                                <td>59</td>
                                                                <td>2012/08/06</td>
                                                                <td>$137,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Rhona Davidson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Tokyo</td>
                                                                <td>55</td>
                                                                <td>2010/10/14</td>
                                                                <td>$327,900</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colleen Hurst</td>
                                                                <td>Javascript Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>39</td>
                                                                <td>2009/09/15</td>
                                                                <td>$205,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sonya Frost</td>
                                                                <td>Software Engineer</td>
                                                                <td>Edinburgh</td>
                                                                <td>23</td>
                                                                <td>2008/12/13</td>
                                                                <td>$103,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jena Gaines</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>30</td>
                                                                <td>2008/12/19</td>
                                                                <td>$90,560</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quinn Flynn</td>
                                                                <td>Support Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2013/03/03</td>
                                                                <td>$342,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Charde Marshall</td>
                                                                <td>Regional Director</td>
                                                                <td>San Francisco</td>
                                                                <td>36</td>
                                                                <td>2008/10/16</td>
                                                                <td>$470,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Haley Kennedy</td>
                                                                <td>Senior Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>43</td>
                                                                <td>2012/12/18</td>
                                                                <td>$313,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tatyana Fitzpatrick</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>19</td>
                                                                <td>2010/03/17</td>
                                                                <td>$385,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Silva</td>
                                                                <td>Marketing Designer</td>
                                                                <td>London</td>
                                                                <td>66</td>
                                                                <td>2012/11/27</td>
                                                                <td>$198,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Paul Byrd</td>
                                                                <td>Chief Financial Officer (CFO)</td>
                                                                <td>New York</td>
                                                                <td>64</td>
                                                                <td>2010/06/09</td>
                                                                <td>$725,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gloria Little</td>
                                                                <td>Systems Administrator</td>
                                                                <td>New York</td>
                                                                <td>59</td>
                                                                <td>2009/04/10</td>
                                                                <td>$237,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bradley Greer</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>41</td>
                                                                <td>2012/10/13</td>
                                                                <td>$132,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dai Rios</td>
                                                                <td>Personnel Lead</td>
                                                                <td>Edinburgh</td>
                                                                <td>35</td>
                                                                <td>2012/09/26</td>
                                                                <td>$217,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jenette Caldwell</td>
                                                                <td>Development Lead</td>
                                                                <td>New York</td>
                                                                <td>30</td>
                                                                <td>2011/09/03</td>
                                                                <td>$345,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Yuri Berry</td>
                                                                <td>Chief Marketing Officer (CMO)</td>
                                                                <td>New York</td>
                                                                <td>40</td>
                                                                <td>2009/06/25</td>
                                                                <td>$675,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Caesar Vance</td>
                                                                <td>Pre-Sales Support</td>
                                                                <td>New York</td>
                                                                <td>21</td>
                                                                <td>2011/12/12</td>
                                                                <td>$106,450</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Doris Wilder</td>
                                                                <td>Sales Assistant</td>
                                                                <td>Sidney</td>
                                                                <td>23</td>
                                                                <td>2010/09/20</td>
                                                                <td>$85,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Angelica Ramos</td>
                                                                <td>Chief Executive Officer (CEO)</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2009/10/09</td>
                                                                <td>$1,200,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Joyce</td>
                                                                <td>Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>42</td>
                                                                <td>2010/12/22</td>
                                                                <td>$92,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Chang</td>
                                                                <td>Regional Director</td>
                                                                <td>Singapore</td>
                                                                <td>28</td>
                                                                <td>2010/11/14</td>
                                                                <td>$357,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brenden Wagner</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>28</td>
                                                                <td>2011/06/07</td>
                                                                <td>$206,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fiona Green</td>
                                                                <td>Chief Operating Officer (COO)</td>
                                                                <td>San Francisco</td>
                                                                <td>48</td>
                                                                <td>2010/03/11</td>
                                                                <td>$850,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shou Itou</td>
                                                                <td>Regional Marketing</td>
                                                                <td>Tokyo</td>
                                                                <td>20</td>
                                                                <td>2011/08/14</td>
                                                                <td>$163,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michelle House</td>
                                                                <td>Integration Specialist</td>
                                                                <td>Sidney</td>
                                                                <td>37</td>
                                                                <td>2011/06/02</td>
                                                                <td>$95,400</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Suki Burks</td>
                                                                <td>Developer</td>
                                                                <td>London</td>
                                                                <td>53</td>
                                                                <td>2009/10/22</td>
                                                                <td>$114,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Prescott Bartlett</td>
                                                                <td>Technical Author</td>
                                                                <td>London</td>
                                                                <td>27</td>
                                                                <td>2011/05/07</td>
                                                                <td>$145,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Cortez</td>
                                                                <td>Team Leader</td>
                                                                <td>San Francisco</td>
                                                                <td>22</td>
                                                                <td>2008/10/26</td>
                                                                <td>$235,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Martena Mccray</td>
                                                                <td>Post-Sales support</td>
                                                                <td>Edinburgh</td>
                                                                <td>46</td>
                                                                <td>2011/03/09</td>
                                                                <td>$324,050</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unity Butler</td>
                                                                <td>Marketing Designer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/12/09</td>
                                                                <td>$85,675</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Howard Hatfield</td>
                                                                <td>Office Manager</td>
                                                                <td>San Francisco</td>
                                                                <td>51</td>
                                                                <td>2008/12/16</td>
                                                                <td>$164,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hope Fuentes</td>
                                                                <td>Secretary</td>
                                                                <td>San Francisco</td>
                                                                <td>41</td>
                                                                <td>2010/02/12</td>
                                                                <td>$109,850</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vivian Harrell</td>
                                                                <td>Financial Controller</td>
                                                                <td>San Francisco</td>
                                                                <td>62</td>
                                                                <td>2009/02/14</td>
                                                                <td>$452,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Timothy Mooney</td>
                                                                <td>Office Manager</td>
                                                                <td>London</td>
                                                                <td>37</td>
                                                                <td>2008/12/11</td>
                                                                <td>$136,200</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jackson Bradshaw</td>
                                                                <td>Director</td>
                                                                <td>New York</td>
                                                                <td>65</td>
                                                                <td>2008/09/26</td>
                                                                <td>$645,750</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Olivia Liang</td>
                                                                <td>Support Engineer</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2011/02/03</td>
                                                                <td>$234,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bruno Nash</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>38</td>
                                                                <td>2011/05/03</td>
                                                                <td>$163,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sakura Yamamoto</td>
                                                                <td>Support Engineer</td>
                                                                <td>Tokyo</td>
                                                                <td>37</td>
                                                                <td>2009/08/19</td>
                                                                <td>$139,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thor Walton</td>
                                                                <td>Developer</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2013/08/11</td>
                                                                <td>$98,540</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Finn Camacho</td>
                                                                <td>Support Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>47</td>
                                                                <td>2009/07/07</td>
                                                                <td>$87,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serge Baldwin</td>
                                                                <td>Data Coordinator</td>
                                                                <td>Singapore</td>
                                                                <td>64</td>
                                                                <td>2012/04/09</td>
                                                                <td>$138,575</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zenaida Frank</td>
                                                                <td>Software Engineer</td>
                                                                <td>New York</td>
                                                                <td>63</td>
                                                                <td>2010/01/04</td>
                                                                <td>$125,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zorita Serrano</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>56</td>
                                                                <td>2012/06/01</td>
                                                                <td>$115,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Acosta</td>
                                                                <td>Junior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>43</td>
                                                                <td>2013/02/01</td>
                                                                <td>$75,650</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cara Stevens</td>
                                                                <td>Sales Assistant</td>
                                                                <td>New York</td>
                                                                <td>46</td>
                                                                <td>2011/12/06</td>
                                                                <td>$145,600</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hermione Butler</td>
                                                                <td>Regional Director</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2011/03/21</td>
                                                                <td>$356,250</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lael Greer</td>
                                                                <td>Systems Administrator</td>
                                                                <td>London</td>
                                                                <td>21</td>
                                                                <td>2009/02/27</td>
                                                                <td>$103,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jonas Alexander</td>
                                                                <td>Developer</td>
                                                                <td>San Francisco</td>
                                                                <td>30</td>
                                                                <td>2010/07/14</td>
                                                                <td>$86,500</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shad Decker</td>
                                                                <td>Regional Director</td>
                                                                <td>Edinburgh</td>
                                                                <td>51</td>
                                                                <td>2008/11/13</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Bruce</td>
                                                                <td>Javascript Developer</td>
                                                                <td>Singapore</td>
                                                                <td>29</td>
                                                                <td>2011/06/27</td>
                                                                <td>$183,000</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Donna Snider</td>
                                                                <td>Customer Support</td>
                                                                <td>New York</td>
                                                                <td>27</td>
                                                                <td>2011/01/25</td>
                                                                <td>$112,000</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                                <th>Age</th>
                                                                <th>Start date</th>
                                                                <th>Salary</th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Custom filtering - range search table end -->
                                        <!-- Live DOM ordering table start -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h5>Live DOM Ordering</h5>
                                                <span>This example shows how you can use information available in the DOM to order columns. Typically DataTables will read information to be ordered during it's initialisation phase, and this will not be updated based on user interaction, so ordering on columns which have, for example, form elements in them, may not reflect the current value of the input. To overcome this problem, you must update the data that DataTables will order on, just prior to the order. This method is much more efficient than actually ordering using the DOM, since only one DOM query is needed for each cell to be ordered.</span>

                                            </div>
                                            <div class="card-block">
                                                <div class="dt-responsive table-responsive">
                                                    <table id="dt-live-dom" class="table table-striped table-bordered nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Age</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Tiger Nixon</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-1-age" name="row-1-age" value="61">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-1-position" name="row-1-position" value="System Architect">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-1-office" name="row-1-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Garrett Winters</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-2-age" name="row-2-age" value="63">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-2-position" name="row-2-position" value="Accountant">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-2-office" name="row-2-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo" selected="selected">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Ashton Cox</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-3-age" name="row-3-age" value="66">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-3-position" name="row-3-position" value="Junior Technical Author">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-3-office" name="row-3-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cedric Kelly</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-4-age" name="row-4-age" value="22 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-4-position" name="row-4-position" value="Senior Javascript Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-4-office" name="row-4-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Airi Satou</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-5-age" name="row-5-age" value="33 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-5-position" name="row-5-position" value="Accountant">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-5-office" name="row-5-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo" selected="selected">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brielle Williamson</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-6-age" name="row-6-age" value="61">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-6-position" name="row-6-position" value="Integration Specialist">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-6-office" name="row-6-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Herrod Chandler</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-7-age" name="row-7-age" value="59 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-7-position" name="row-7-position" value="Sales Assistant">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-7-office" name="row-7-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Rhona Davidson</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-8-age" name="row-8-age" value="55 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-8-position" name="row-8-position" value="Integration Specialist">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-8-office" name="row-8-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo" selected="selected">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Colleen Hurst</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-9-age" name="row-9-age" value="39 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-9-position" name="row-9-position" value="Javascript Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-9-office" name="row-9-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sonya Frost</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-10-age" name="row-10-age" value="23 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-10-position" name="row-10-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-10-office" name="row-10-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jena Gaines</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-11-age" name="row-11-age" value="30 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-11-position" name="row-11-position" value="Office Manager">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-11-office" name="row-11-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Quinn Flynn</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-12-age" name="row-12-age" value="22 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-12-position" name="row-12-position" value="Support Lead">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-12-office" name="row-12-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Charde Marshall</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-13-age" name="row-13-age" value="36 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-13-position" name="row-13-position" value="Regional Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-13-office" name="row-13-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Haley Kennedy</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-14-age" name="row-14-age" value="43 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-14-position" name="row-14-position" value="Senior Marketing Designer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-14-office" name="row-14-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tatyana Fitzpatrick</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-15-age" name="row-15-age" value="19 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-15-position" name="row-15-position" value="Regional Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-15-office" name="row-15-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Silva</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-16-age" name="row-16-age" value="66 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-16-position" name="row-16-position" value="Marketing Designer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-16-office" name="row-16-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Paul Byrd</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-17-age" name="row-17-age" value="64 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-17-position" name="row-17-position" value="Chief Financial Officer (CFO)">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-17-office" name="row-17-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gloria Little</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-18-age" name="row-18-age" value="59 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-18-position" name="row-18-position" value="Systems Administrator">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-18-office" name="row-18-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bradley Greer</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-19-age" name="row-19-age" value="41 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-19-position" name="row-19-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-19-office" name="row-19-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Dai Rios</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-20-age" name="row-20-age" value="35 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-20-position" name="row-20-position" value="Personnel Lead">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-20-office" name="row-20-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jenette Caldwell</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-21-age" name="row-21-age" value="30 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-21-position" name="row-21-position" value="Development Lead">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-21-office" name="row-21-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Yuri Berry</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-22-age" name="row-22-age" value="40 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-22-position" name="row-22-position" value="Chief Marketing Officer (CMO)">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-22-office" name="row-22-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Caesar Vance</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-23-age" name="row-23-age" value="21 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-23-position" name="row-23-position" value="Pre-Sales Support">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-23-office" name="row-23-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Doris Wilder</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-24-age" name="row-24-age" value="23 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-24-position" name="row-24-position" value="Sales Assistant">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-24-office" name="row-24-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Angelica Ramos</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-25-age" name="row-25-age" value="47 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-25-position" name="row-25-position" value="Chief Executive Officer (CEO)">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-25-office" name="row-25-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Joyce</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-26-age" name="row-26-age" value="42 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-26-position" name="row-26-position" value="Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-26-office" name="row-26-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Chang</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-27-age" name="row-27-age" value="28 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-27-position" name="row-27-position" value="Regional Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-27-office" name="row-27-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Brenden Wagner</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-28-age" name="row-28-age" value="28 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-28-position" name="row-28-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-28-office" name="row-28-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Fiona Green</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-29-age" name="row-29-age" value="48 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-29-position" name="row-29-position" value="Chief Operating Officer (COO)">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-29-office" name="row-29-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shou Itou</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-30-age" name="row-30-age" value="20 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-30-position" name="row-30-position" value="Regional Marketing">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-30-office" name="row-30-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo" selected="selected">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michelle House</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-31-age" name="row-31-age" value="37 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-31-position" name="row-31-position" value="Integration Specialist">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-31-office" name="row-31-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Suki Burks</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-32-age" name="row-32-age" value="53 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-32-position" name="row-32-position" value="Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-32-office" name="row-32-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Prescott Bartlett</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-33-age" name="row-33-age" value="27 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-33-position" name="row-33-position" value="Technical Author">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-33-office" name="row-33-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Gavin Cortez</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-34-age" name="row-34-age" value="22 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-34-position" name="row-34-position" value="Team Leader">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-34-office" name="row-34-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Martena Mccray</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-35-age" name="row-35-age" value="46 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-35-position" name="row-35-position" value="Post-Sales support">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-35-office" name="row-35-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Unity Butler</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-36-age" name="row-36-age" value="47 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-36-position" name="row-36-position" value="Marketing Designer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-36-office" name="row-36-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Howard Hatfield</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-37-age" name="row-37-age" value="51 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-37-position" name="row-37-position" value="Office Manager">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-37-office" name="row-37-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hope Fuentes</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-38-age" name="row-38-age" value="41 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-38-position" name="row-38-position" value="Secretary">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-38-office" name="row-38-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Vivian Harrell</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-39-age" name="row-39-age" value="62 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-39-position" name="row-39-position" value="Financial Controller">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-39-office" name="row-39-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Timothy Mooney</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-40-age" name="row-40-age" value="37 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-40-position" name="row-40-position" value="Office Manager">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-40-office" name="row-40-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jackson Bradshaw</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-41-age" name="row-41-age" value="65 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-41-position" name="row-41-position" value="Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-41-office" name="row-41-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Olivia Liang</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-42-age" name="row-42-age" value="64 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-42-position" name="row-42-position" value="Support Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-42-office" name="row-42-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Bruno Nash</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-43-age" name="row-43-age" value="38 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-43-position" name="row-43-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-43-office" name="row-43-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Sakura Yamamoto</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-44-age" name="row-44-age" value="37 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-44-position" name="row-44-position" value="Support Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-44-office" name="row-44-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo" selected="selected">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Thor Walton</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-45-age" name="row-45-age" value="61 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-45-position" name="row-45-position" value="Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-45-office" name="row-45-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Finn Camacho</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-46-age" name="row-46-age" value="47 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-46-position" name="row-46-position" value="Support Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-46-office" name="row-46-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Serge Baldwin</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-47-age" name="row-47-age" value="64 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-47-position" name="row-47-position" value="Data Coordinator">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-47-office" name="row-47-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zenaida Frank</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-48-age" name="row-48-age" value="63 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-48-position" name="row-48-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-48-office" name="row-48-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Zorita Serrano</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-49-age" name="row-49-age" value="56 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-49-position" name="row-49-position" value="Software Engineer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-49-office" name="row-49-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jennifer Acosta</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-50-age" name="row-50-age" value="43 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-50-position" name="row-50-position" value="Junior Javascript Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-50-office" name="row-50-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Cara Stevens</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-51-age" name="row-51-age" value="46 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-51-position" name="row-51-position" value="Sales Assistant">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-51-office" name="row-51-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Hermione Butler</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-52-age" name="row-52-age" value="47 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-52-position" name="row-52-position" value="Regional Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-52-office" name="row-52-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Lael Greer</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-53-age" name="row-53-age" value="21 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-53-position" name="row-53-position" value="Systems Administrator">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-53-office" name="row-53-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London" selected="selected">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Jonas Alexander</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-54-age" name="row-54-age" value="30 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-54-position" name="row-54-position" value="Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-54-office" name="row-54-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco" selected="selected">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Shad Decker</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-55-age" name="row-55-age" value="51 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-55-position" name="row-55-position" value="Regional Director">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-55-office" name="row-55-office">
                                                                        <option value="Edinburgh" selected="selected">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Michael Bruce</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-56-age" name="row-56-age" value="29 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-56-position" name="row-56-position" value="Javascript Developer">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-56-office" name="row-56-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Donna Snider</td>
                                                                <td>
                                                                    <input class="form-control" type="text" id="row-57-age" name="row-57-age" value="27 ">
                                                                </td>
                                                                <td>
                                                                    <input class="form-control " type="text" id="row-57-position" name="row-57-position" value="Customer Support">
                                                                </td>
                                                                <td>
                                                                    <select class="form-control" size="1" id="row-57-office" name="row-57-office">
                                                                        <option value="Edinburgh">
                                                                            Edinburgh
                                                                        </option>
                                                                        <option value="London">
                                                                            London
                                                                        </option>
                                                                        <option value="New York" selected="selected">
                                                                            New York
                                                                        </option>
                                                                        <option value="San Francisco">
                                                                            San Francisco
                                                                        </option>
                                                                        <option value="Tokyo">
                                                                            Tokyo
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Age</th>
                                                                <th>Position</th>
                                                                <th>Office</th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Live DOM ordering table end -->
                                    </div>
                                    <!-- Page-body start -->
                                </div>
                            </div>
                            <!-- Main-body end -->

                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="../files/assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="../files/assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="../files/assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="../files/assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="../files/assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->
    <!-- Required Jquery -->
    <script type="text/javascript" src="frontend\libAdmin\bower_components\jquery\js\jquery.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\jquery-ui\js\jquery-ui.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\popper.js\js\popper.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\bootstrap\js\bootstrap.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="frontend\libAdmin\bower_components\jquery-slimscroll\js\jquery.slimscroll.js"></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="frontend\libAdmin\bower_components\modernizr\js\modernizr.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\modernizr\js\css-scrollbars.js"></script>

    <!-- data-table js -->
    <script src="frontend\libAdmin\bower_components\datatables.net\js\jquery.dataTables.min.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-buttons\js\dataTables.buttons.min.js"></script>
    <script src="frontend\libAdmin\assets\pages\data-table\js\jszip.min.js"></script>
    <script src="frontend\libAdmin\assets\pages\data-table\js\pdfmake.min.js"></script>
    <script src="frontend\libAdmin\assets\pages\data-table\js\vfs_fonts.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-buttons\js\buttons.print.min.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-buttons\js\buttons.html5.min.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-bs4\js\dataTables.bootstrap4.min.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-responsive\js\dataTables.responsive.min.js"></script>
    <script src="frontend\libAdmin\bower_components\datatables.net-responsive-bs4\js\responsive.bootstrap4.min.js"></script>
    <!-- i18next.min.js -->
    <script type="text/javascript" src="frontend\libAdmin\bower_components\i18next\js\i18next.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\i18next-xhr-backend\js\i18nextXHRBackend.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\i18next-browser-languagedetector\js\i18nextBrowserLanguageDetector.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\bower_components\jquery-i18next\js\jquery-i18next.min.js"></script>
    <!-- Custom js -->
    <script src="frontend\libAdmin\assets\pages\data-table\js\data-table-custom.js"></script>

    <script src="frontend\libAdmin\assets\js\pcoded.min.js"></script>
    <script src="frontend\libAdmin\assets\js\vartical-layout.min.js"></script>
    <script src="frontend\libAdmin\assets\js\jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="frontend\libAdmin\assets\js\script.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
</body>

</html>