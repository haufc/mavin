var owl = $('.owl-carousel');
owl.owlCarousel({
    responsive:{
        600:{
            items:3,
            nav:false,
            loop: true
        },
        1000:{
            items:5,
            nav:true,
            loop:true
        },
        1201:{
            items:8,
            nav:true,
            loop:true
        }
    },
    margin: 15,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true
});