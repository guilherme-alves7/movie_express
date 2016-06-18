jQuery(document).ready(function ($) {

    var link = location.href.toLowerCase(); //pega link atual
    link = link.split('/'); //da um explode no link
    var pagina_atual = link[link.length - 1]; //pega a ultima palavra do link
    
    var item_selected = $('#lista-menu').find('li[class=active]'); //procura o item ativo no menu
    item_selected.removeClass('active'); //retira a classe ativo do item

    $('#' + pagina_atual).addClass('active'); //adiciono a classe ativo no novo item selecionado    
     
    
    
    // Bootstrap Mobile Menu fix
    $(".navbar-nav li a").click(function(){
        $(".navbar-collapse").removeClass('in');
    });    
    
    // jQuery Scroll effect
    $('.navbar-nav li a, .scroll-to-up').bind('click', function(event) {
        var $anchor = $(this);
        var headerH = $('.header-area').outerHeight();
        $('html, body').stop().animate({
            scrollTop : $($anchor.attr('href')).offset().top - headerH + "px"
        }, 1200, 'easeInOutExpo');

        event.preventDefault();
    });    
    
    // Bootstrap ScrollPSY
    $('body').scrollspy({ 
        target: '.navbar-collapse',
        offset: 95
    })      
});

