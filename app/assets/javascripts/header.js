var lastScrollTop = 0;
$(window).scroll(function (event) {
    
    var st = $(this).scrollTop();
    
    if (st > 0) {
        if (st > lastScrollTop) {
            // downscroll code
            $('.a').removeClass('state-down');
            $('.a').removeClass('state-partially');
            $('.a').addClass('state-up')
        } else {
            // uproll code
            $('.a').removeClass('state-down');
            $('.a').removeClass('state-up');
            $('.a').addClass('state-partially')
        }
    } else {
        $('.a').removeClass('state-up');
        $('.a').removeClass('state-partially');
        $('.a').addClass('state-down')
    }
    lastScrollTop = st;
});