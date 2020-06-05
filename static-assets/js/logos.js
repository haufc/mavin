var owl = $('.owl-carousel');
owl.owlCarousel({
    responsive:{
        0:{
            items:1,
            nav:true,
            loop: true
        },
        600:{
            items:3,
            nav:false
        },
        1000:{
            items:5,
            nav:true,
            loop:false
        },
        1201:{
            items:8,
            nav:true,
            loop:false
        }
    },
    margin: 15,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true
});