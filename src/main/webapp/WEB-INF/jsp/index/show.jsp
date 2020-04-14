<%--
  Created by IntelliJ IDEA.
  User: wuweijie
  Date: 2020-04-13
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./include/header.jsp"%>

<section class="about-banner">
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Show
                </h1>
                <p class="text-white link-nav"><a href="/">Home </a> <span
                        class="lnr lnr-arrow-right"></span> <a href="/show"> Show</a></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->
<!-- Start portfolio-area Area -->
<section class="portfolio-area section-gap" id="portfolio">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-70 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10">Latest Featured Projects</h1>
                    <p>Just to show.</p>
                </div>
            </div>
        </div>

        <div class="filters">
            <ul>
                <li class="active" data-filter="*">All</li>
                <li data-filter=".tourism">tourism</li>
                <li data-filter=".photography">photography</li>
                <li data-filter=".Plans">Plans</li>
                <li data-filter=".shopping">shopping</li>
            </ul>
        </div>

        <div class="filters-content">
            <div class="row grid">
                <div class="single-portfolio col-sm-4 all vector">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p1.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all raster">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p2.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all ui">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p3.jpg"
                                 alt="">
                        </div>

                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all printing">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p4.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all vector">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p5.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all raster">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="index/img/p6.jpg"
                                 alt="">
                        </div>
                    </div>
                    <div class="p-inner">
                        <h4>2D Design</h4>
                        <div class="cat">photography</div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<%@include file="./include/footer.jsp"%>
