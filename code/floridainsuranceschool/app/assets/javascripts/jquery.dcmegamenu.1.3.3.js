/*
 * DC Mega Menu - jQuery mega menu
 * Copyright (c) 2011 Design Chemical
 *
 * Dual licensed under the MIT and GPL licenses:
 *  http://www.opensource.org/licenses/mit-license.php
 *  http://www.gnu.org/licenses/gpl.html
 *
 */
(function($){

  //define the defaults for the plugin and how to call it 
  $.fn.dcMegaMenu = function(options){
    //set default options  
    var defaults = {
      classParent: 'dc-mega',
      classContainer: 'sub-container',
      classSubParent: 'mega-hdr',
      classSubLink: 'mega-hdr',
      classWidget: 'dc-extra',
      rowItems: 3,
      speed: 'fast',
      effect: 'fade',
      event: 'hover',
      fullWidth: false,
      onLoad : function(){},
            beforeOpen : function(){},
      beforeClose: function(){}
    };

    //call in the default otions
    var options = $.extend(defaults, options);
    var $dcMegaMenuObj = this;


    // ----------------------------------------------------------
    // If you're not in IE (or IE version is less than 5) then:
    //     ie === undefined
    // If you're in IE (>5) then you can determine which version:
    //     ie === 7; // IE7
    // Thus, to detect IE:
    //     if (ie) {}
    // And to detect the version:
    //     ie === 6 // IE6
    //     ie> 7 // IE8, IE9 ...
    //     ie <9 // Anything less than IE9
    // ----------------------------------------------------------
    var ie = function() {
        var undef, v = 3, div = document.createElement('div');

        while (
            div.innerHTML = '<!--[if gt IE '+(++v)+']><i></i><![endif]-->',
            div.getElementsByTagName('i')[0]
        );

        return v> 4 ? v : undef;
    };

    //act upon the element that is passed into the design    
    return $dcMegaMenuObj.each(function(options){

      var clSubParent = defaults.classSubParent;
      var clSubLink = defaults.classSubLink;
      var clParent = defaults.classParent;
      var clContainer = defaults.classContainer;
      var clWidget = defaults.classWidget;
      
      megaSetup();
      
      function megaOver(){
        var subNav = $('.sub',this);
        var subNavWrapper = $('.sub-container',this);
        $(this).addClass('mega-hover');
        $(subNavWrapper).show();

        if ( ie() === 7 ) { // If IE7 do this
          $(subNav).fadeIn(defaults.speed);
        } else {
          if(defaults.effect == 'fade'){
            $(subNav).fadeIn(defaults.speed);
          }
          
          if(defaults.effect == 'slide'){
            if (jQuery.ui) {$(subNav).hide().slideDown(defaults.speed,'swing');}
            else{$(subNav).hide().show(defaults.speed,'swing');}
          }
          if(defaults.effect == 'bounce'){
            if (jQuery.ui) {$(subNav).hide().slideDown(defaults.speed,'easeOutBounce');}
            else{$(subNav).hide().show(defaults.speed,'swing');}
          }
          if(defaults.effect == 'elastic'){
            if (jQuery.ui) {$(subNav).hide().slideDown(defaults.speed,'easeOutElastic');}
            else{$(subNav).hide().show(defaults.speed,'swing');}
          }
          if(defaults.effect == 'back'){
            if (jQuery.ui) {$(subNav).hide().slideDown(defaults.speed,'easeOutBack');}
            else{$(subNav).hide().show(defaults.speed,'swing');}
          }
        }
        if(defaults.effect == 'fade'){
          $(subNav).parent().prev('css3-container').fadeIn(defaults.speed);
        } else if(defaults.effect == 'slide' || defaults.effect == 'slide' || defaults.effect == 'bounce' || defaults.effect == 'elastic' || defaults.effect == 'back') {
          $(subNav).parent().prev('css3-container').show(defaults.speed);
        }
        // beforeOpen callback;
        defaults.beforeOpen.call(this);
      }
      function megaAction(obj){
        var subNav = $('.sub',obj);
        var subNavContainer = $('.sub-container',obj);
        $(obj).addClass('mega-hover');
        if(defaults.effect == 'fade'){
          $(subNavContainer).fadeIn(defaults.speed);
          $(subNav).fadeIn(defaults.speed);
        }
        if(defaults.effect == 'slide'){
          if (jQuery.ui) {
            $(subNavContainer).hide().slideDown(defaults.speed,'swing');
            $(subNav).hide().slideDown(defaults.speed,'swing');
          } else {
            $(subNavContainer).hide().slideDown(defaults.speed,'swing');
            $(subNav).hide().slideDown(defaults.speed,'swing');
          }
        }
        if(defaults.effect == 'bounce'){
          if (jQuery.ui) {
            $(subNavContainer).hide().slideDown(defaults.speed,'easeOutBounce');
            $(subNav).hide().slideDown(defaults.speed,'easeOutBounce');
          } else {
            $(subNavContainer).hide().slideDown(defaults.speed,'swing');
            $(subNav).hide().slideDown(defaults.speed,'swing');
          }
        }
        if(defaults.effect == 'elastic'){
          if (jQuery.ui) {
            $(subNavContainer).hide().slideDown(defaults.speed,'easeOutElastic');
            $(subNav).hide().slideDown(defaults.speed,'easeOutElastic');
          } else {
            $(subNavContainer).hide().slideDown(defaults.speed,'swing');
            $(subNav).hide().slideDown(defaults.speed,'swing');
          }
        }
        if(defaults.effect == 'back'){
          if (jQuery.ui) {
            $(subNavContainer).hide().slideDown(defaults.speed,'easeOutBack');
            $(subNav).hide().slideDown(defaults.speed,'easeOutBack');
          } else {
            $(subNavContainer).hide().slideDown(defaults.speed,'swing');
            $(subNav).hide().slideDown(defaults.speed,'swing');
          }
        }
        
        // beforeOpen callback;
        defaults.beforeOpen.call(this);
      }
      function megaOut(){
        var subNav = $('.sub',this);
        var subNavWrapper = $('.sub-container',this);
        var mainThis = this;
        
        var speedAnim = 150;
        if(defaults.effect == 'fade'){
          $(subNavWrapper).stop().fadeOut(speedAnim,'swing',function(){
            $(mainThis).removeClass('mega-hover');
            $(subNav).parent().prev('css3-container').hide();
            $(subNav).hide();
          });
        }
        else{
          $(subNavWrapper).stop().slideUp(speedAnim,'swing',function(){
            $(mainThis).removeClass('mega-hover');
            $(subNav).parent().prev('css3-container').hide();
            $(subNav).hide();
          });
        }
        $(mainThis).removeClass('mega-hover');
        
        // beforeClose callback;
        defaults.beforeClose.call(this);
      }
      function megaActionClose(obj){
        var subNav = $('.sub',obj);
        var subNavContainer = $('.sub-container',obj);
        $(obj).removeClass('mega-hover');
        $(subNav).hide();
        $(subNavContainer).hide();
        // beforeClose callback;
        defaults.beforeClose.call(this);
      }
      function megaReset(){
        $('li',$dcMegaMenuObj).removeClass('mega-hover');
        $('.sub',$dcMegaMenuObj).hide();
      }

      function megaSetup(){
        $arrow = '<span class="dc-mega-icon"></span>';
        var clParentLi = clParent+'-li';
        var menuWidth = $dcMegaMenuObj.width();
        $('> li',$dcMegaMenuObj).each(function(){
          //Set Width of sub
          var $mainSub = $('> ul',this);
          var $primaryLink = $('> a',this);
          if($mainSub.length){
            $primaryLink.addClass(clParent).append($arrow);
            $mainSub.addClass('sub').wrap('<div class="'+clContainer+'" />');
            
            var pos = $(this).position();
            var pl = pos.left;
              
            if($('ul',$mainSub).length){
              $(this).addClass('mega-hover'); // initialize menus hovered state to get the correct width
              $(this).addClass(clParentLi);
              $('.'+clContainer,this).addClass('mega');
              $('> li',$mainSub).each(function(){
                if(!$(this).hasClass(clWidget)){
                  $(this).addClass('mega-unit');
                  if($('> ul',this).length){
                    $(this).addClass(clSubParent);
                    $('> a',this).addClass(clSubParent+'-a');
                  } else {
                    $(this).addClass(clSubLink);
                    $('> a',this).addClass(clSubLink+'-a');
                  }
                }
              });

              // Create Rows
              var hdrs = $('.mega-unit',this);
              rowSize = parseInt(defaults.rowItems);
              for(var i = 0; i < hdrs.length; i+=rowSize){
                hdrs.slice(i, i+rowSize).wrapAll('<div class="row" />');
              }

              // Get Sub Dimensions & Set Row Height
              $mainSub.show();
              
              // Get Position of Parent Item
              var pw = $(this).width();
              var pr = pl + pw;
              
              // Check available right margin
              var mr = menuWidth - pr;
              
              // // Calc Width of Sub Menu
              var subw = $mainSub.outerWidth();
              var totw = $mainSub.parent('.'+clContainer).outerWidth();
              var cpad = totw - subw;
              
              if(defaults.fullWidth == true){
                var fw = menuWidth - cpad;
                $mainSub.parent('.'+clContainer).css({width: fw+'px'});
                $dcMegaMenuObj.addClass('full-width');
              }
              var iw = $('.mega-unit',$mainSub).outerWidth(true);
              var rowItems = $('.row:eq(0) .mega-unit',$mainSub).length;
              var inneriw = iw * rowItems;
              var totiw = inneriw + cpad;
              
              // Set mega header height
              $('.row',this).each(function(){
                $('.mega-unit:last',this).addClass('last');
                var maxValue = undefined;
                $('.mega-unit > a',this).each(function(){
                  var val = parseInt($(this).height());
                  if (maxValue === undefined || maxValue < val){
                    maxValue = val;
                  }
                });
                $('.mega-unit > a',this).css('height',maxValue+'px');
                $(this).css('width',inneriw+'px');
              });
              
              // Calc Required Left Margin incl additional required for right align
              
              if(defaults.fullWidth == true){
                params = {left: 0};
              } else {
                
                var ml = mr < ml ? ml + ml - mr : (totiw - pw)/2;
                var subLeft = pl - ml;

                // If Left Position Is Negative Set To Left Margin
                var params = {left: pl+'px', marginLeft: -ml+'px'};
                
                if(subLeft < 0){
                  params = {left: 0};
                }else if(mr < ml){
                  params = {right: 0};
                }
              }
              $('.'+clContainer,this).css(params);
              
              // Calculate Row Height
              $('.row',$mainSub).each(function(){
                var rh = $(this).height();
                $('.mega-unit',this).css({height: rh+'px'});
                $(this).parent('.row').css({height: rh+'px'});
              });
              $(this).removeClass('mega-hover'); // take off mega-hover calculation is done.
              $mainSub.hide();
          
            } else {
              $('.'+clContainer,this).addClass('non-mega').css('left',pl+'px');
            }
          }
          
        });
        //custom support for full width on all menu items.
        if(defaults.fullWidth == true){
          $nmSub = $('.'+clContainer+'.non-mega').first().find('.sub_menu');
          var subw = $nmSub.outerWidth();
          var totw = $nmSub.parent('.'+clContainer).outerWidth();
          var cpad = totw - subw;
          var fw = menuWidth + cpad;
          $('.'+clContainer+'.non-mega').css({left: 0,width: fw+'px'});
        }
        
        // Set position of mega dropdown to bottom of main menu
        var menuHeight = $('> li > a',$dcMegaMenuObj).outerHeight(true);
        $('.'+clContainer,$dcMegaMenuObj).css({top: menuHeight+'px'}).css('z-index','1000');
        
        if(defaults.event == 'hover'){
          // HoverIntent Configuration
          var config = {
            sensitivity: 2,
            interval: 100,
            over: megaOver,
            timeout: 200,
            out: megaOut
          };
          $('li',$dcMegaMenuObj).hoverIntent(config);
        }
        
        if(defaults.event == 'click'){
        
          $('body').mouseup(function(e){
            if(!$(e.target).parents('.mega-hover').length){
              megaReset();
            }
          });

          $('> li > a.'+clParent,$dcMegaMenuObj).click(function(e){
            var $parentLi = $(this).parent();
            if($parentLi.hasClass('mega-hover')){
              megaActionClose($parentLi);
            } else {
              megaAction($parentLi);
            }
            e.preventDefault();
          });
        }
        
        // onLoad callback;
        defaults.onLoad.call(this);
      }
    });
  };
})(jQuery);