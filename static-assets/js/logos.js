var owl = $('.owl-carousel');
owl.owlCarousel({
    items:8,
    loop: true,
    margin: 15,
    dots: false,
    autoplay: true,
    autoplayTimeout: 1000,
    autoplayHoverPause: true,
    autoWidth: true,
    responsiveClass: true,
    responsive: {
        600: {
            items: 4
        },
        300: {
            items: 4
        }
    }
});