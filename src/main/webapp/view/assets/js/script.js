(function ($) {

    'use strict';

    /*------------------------------------
        Preloader
    --------------------------------------*/
    $(window).on('load', function () {
        $('#preloader').delay(350).fadeOut('slow');
        $('body').delay(350).css({'overflow': 'visible'});
    });

    /*------------------------------------
        Mobile Menu
    --------------------------------------*/
    $('.main-menu > ul>li').slice(-1).addClass('last-elements');

    $('#mobile-menu-active').metisMenu();

    $('#mobile-menu-active li.has-dropdown > a').on('click', function (e) {
        e.preventDefault();
    });

    $(".open-mobile-menu > a").on("click", function (e) {
        e.preventDefault();
        $(".slide-bar").toggleClass("show");
        $("body").addClass("on-side");
        $('.body-overlay').addClass('active');
        $(this).addClass('active');
    });

    $(".close-mobile-menu > a").on("click", function (e) {
        e.preventDefault();
        $(".slide-bar").removeClass("show");
        $("body").removeClass("on-side");
        $('.body-overlay').removeClass('active');
        $('.open-mobile-menu > a').removeClass('active');
    });

    $('.body-overlay').on('click', function () {
        $(this).removeClass('active');
        $(".slide-bar").removeClass("show");
        $("body").removeClass("on-side");
        $('.open-mobile-menu > a').removeClass('active');
    });

    $(".sidebar-open > a").on("click", function (e) {
        e.preventDefault();
        $(".slide-bar").toggleClass("show");
        $("body").addClass("on-side");
        $('.body-overlay').addClass('active');
    });

    /*------------------------------------
        Search bar
    --------------------------------------*/
    $('.header-search').on('click', function (event) {
        event.preventDefault();
        $('.search-area').addClass('active');
    });

    $('.search-close').on('click', function (event) {
        event.preventDefault();
        $('.search-area').removeClass('active');
    });

    /*------------------------------------
        popup img
    --------------------------------------*/
    $('.popup-image').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    /*------------------------------------
        popup video
    --------------------------------------*/
    $('.popup-video').magnificPopup({
        type: 'iframe'
    });


    /*------------------------------------
        Overlay Close
    --------------------------------------*/
    $('#scrollUp').on('click', function () {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });

    /*------------------------------------
        Home Slider
    --------------------------------------*/
    if (jQuery(".home-slider").length > 0) {

        var HomeSlider = $('.home-slider');
        HomeSlider.on('init', function (e, slick) {
            var $firstAnimatingElements = $('.home-slide:first-child').find('[data-animation]');
            doAnimations($firstAnimatingElements);
        });

        HomeSlider.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
            var $animatingElements = $('.home-slide[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
            doAnimations($animatingElements);
        });

        HomeSlider.slick({
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            fade: true,
            arrows: false,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="fal fa-arrow-right"></i></button>',
            responsive: [
                {breakpoint: 992, settings: {dots: false, arrows: false}}
            ]
        });
    }
    if (jQuery(".home-slider-2").length > 0) {

        var HomeSlider2 = $('.home-slider-2');
        HomeSlider2.on('init', function (e, slick) {
            var $firstAnimatingElements = $('.home-slide-2:first-child').find('[data-animation]');
            doAnimations($firstAnimatingElements);
        });

        HomeSlider2.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
            var $animatingElements = $('.home-slide-2[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
            doAnimations($animatingElements);
        });

        HomeSlider2.slick({
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            fade: true,
            arrows: true,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="fal fa-arrow-right"></i></button>',
            responsive: [
                {breakpoint: 992, settings: {dots: false, arrows: false}}
            ]
        });
    }

    function doAnimations(elements) {
        var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        elements.each(function () {
            var $this = $(this);
            var $animationDelay = $this.data('delay');
            var $animationType = 'animated ' + $this.data('animation');
            $this.css({
                'animation-delay': $animationDelay,
                '-webkit-animation-delay': $animationDelay
            });
            $this.addClass($animationType).one(animationEndEvents, function () {
                $this.removeClass($animationType);
            });
        });
    }

    /*------------------------------------
        Product Filter
    --------------------------------------*/
    if (jQuery(".product-filter-wrapper").length > 0) {
        $('.product-filter-wrapper .product-filter-grid').imagesLoaded(function () {
            let $grid = $('.product-filter-wrapper .product-filter-grid').isotope({
                itemSelector: '.grid-item',
                percentPosition: true,
                layoutMode: 'fitRows',
                masonry: {
                    columnWidth: '.grid-item'
                }
            });

            // filter items on button click
            $('.product-filter-wrapper .product-filter-nav').on('click', 'button', function () {
                let filterValue = $(this).attr('data-filter');
                $grid.isotope({filter: filterValue});
            });

            //for menu active class
            $('.product-filter-wrapper .product-filter-nav button').on('click', function (event) {
                $(this).siblings('.active').removeClass('active');
                $(this).addClass('active');
                event.preventDefault();
            });

        });
    }

    /*------------------------------------
        Product Filter
    --------------------------------------*/
    if (jQuery(".gallery-filter-wrapper").length > 0) {
        $('.gallery-filter-wrapper .gallery-filter-grid').imagesLoaded(function () {
            let $grid = $('.gallery-filter-wrapper .gallery-filter-grid').isotope({
                itemSelector: '.grid-item',
                percentPosition: true,
                layoutMode: 'fitRows',
                masonry: {
                    columnWidth: '.grid-item'
                }
            });

            // filter items on button click
            $('.gallery-filter-wrapper .gallery-filter-nav').on('click', 'button', function () {
                let filterValue = $(this).attr('data-filter');
                $grid.isotope({filter: filterValue});
            });

            //for menu active class
            $('.gallery-filter-wrapper .gallery-filter-nav button').on('click', function (event) {
                $(this).siblings('.active').removeClass('active');
                $(this).addClass('active');
                event.preventDefault();
            });

        });
    }

    /*------------------------------------
        Team Slider
    --------------------------------------*/
    if (jQuery(".team-slider").length > 0) {
        $('.team-slider').slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            arrows: true,
            centerMode: true,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="far fa-arrow-right"></i></i></button>',
            responsive: [
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 3,
                        arrows: false,
                    }
                },
                {
                    breakpoint: 991,
                    settings: {
                        slidesToShow: 2,
                        arrows: false,
                        centerMode: false,
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        slidesToShow: 1,
                        arrows: false,
                        centerMode: false,
                    }
                }
            ]
        });
    }

    /*------------------------------------
        Testimonial Slider
    --------------------------------------*/
    if (jQuery(".testimonial-slider").length > 0) {
        $('.testimonial-slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 10000,
            dots: true,
            arrows: true,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="far fa-arrow-right"></i></i></button>',
        });
    }

    if (jQuery(".testimonial-slider-2").length > 0) {
        $('.testimonial-slider-2').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            arrows: true,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="far fa-arrow-right"></i></i></button>',
        });
    }

    /*------------------------------------
        Team Slider
    --------------------------------------*/
    if (jQuery(".brand-slider").length > 0) {
        $('.brand-slider').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 10000,
            dots: false,
            arrows: true,
            prevArrow: '<button type="button" class="slick-prev"><i class="far fa-arrow-left"></i></button>',
            nextArrow: '<button type="button" class="slick-next"><i class="far fa-arrow-right"></i></i></button>',
            responsive: [
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 4,
                        arrows: false,
                    }
                },
                {
                    breakpoint: 991,
                    settings: {
                        slidesToShow: 3,
                        arrows: false,
                        centerMode: false,
                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        slidesToShow: 2,
                        arrows: false,
                        centerMode: false,
                    }
                }
            ]
        });
    }

    /*------------------------------------
        Circular Bars - Knob
    --------------------------------------*/
    if (typeof ($.fn.knob) != 'undefined') {
        $('.knob').each(function () {
            let $this = $(this),
                knobVal = $this.attr('data-rel');

            $this.knob({
                'draw': function () {
                    $(this.i).val(this.cv + '%')
                }
            });

            $this.appear(function () {
                $({
                    value: 0
                }).animate({
                    value: knobVal
                }, {
                    duration: 2000,
                    easing: 'swing',
                    step: function () {
                        $this.val(Math.ceil(this.value)).trigger('change');
                    }
                });
            }, {
                accX: 0,
                accY: -150
            });
        });
    }

    /*------------------------------------
        countdown
    --------------------------------------*/
    $('[data-countdown]').each(function () {
        var $this = $(this), finalDate = $(this).data('countdown');
        $this.countdown(finalDate, function (event) {
            $this.html(event.strftime('<span class="cdown days"><p>Days</p> <span class="time-count">%-D</span></span> <span class="cdown hour"><p>Hour</p> <span class="time-count">%-H</span></span> <span class="cdown minutes"><p>Min</p> <span class="time-count">%M</span></span> <span class="cdown second"><p>Sec</p> <span><span class="time-count">%S</span></span>'));
        });
    });

    /*------------------------------------
        Contact Map
    --------------------------------------*/
    function basicmap() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 11,
            scrollwheel: false,
            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(40.6700, -73.9400), // New York
            // This is where you would paste any style found on Snazzy Maps.
            styles: [
                {
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#f5f5f5"
                        }
                    ]
                },
                {
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#616161"
                        }
                    ]
                },
                {
                    "elementType": "labels.text.stroke",
                    "stylers": [
                        {
                            "color": "#f5f5f5"
                        }
                    ]
                },
                {
                    "featureType": "administrative.land_parcel",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#bdbdbd"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#eeeeee"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e5e5e5"
                        }
                    ]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#ffffff"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#757575"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#dadada"
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#616161"
                        }
                    ]
                },
                {
                    "featureType": "road.local",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                },
                {
                    "featureType": "transit.line",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#e5e5e5"
                        }
                    ]
                },
                {
                    "featureType": "transit.station",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#eeeeee"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [
                        {
                            "color": "#c9c9c9"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#9e9e9e"
                        }
                    ]
                }
            ]
        };
        // Get the HTML DOM element that will contain your map
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('contact-map');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(40.6700, -73.9400),
            map: map,
            icon: "assets/img/icon/map-marker.png",
            title: 'Biver'
        });
    }

    if ($('#contact-map').length != 0) {
        google.maps.event.addDomListener(window, 'load', basicmap);
    }


})(jQuery);
