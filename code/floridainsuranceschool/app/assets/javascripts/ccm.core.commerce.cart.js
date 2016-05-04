var ccm_coreCommerceUseAdvancedCart = false;
var ccm_coreCommerceCartDialog = false;

ccm_coreCommerceLaunchCart = function(obj, url) {
  if (ccm_coreCommerceUseAdvancedCart) {
    ccm_coreCommerceGetCartWindow().load(url).dialog({
      autoOpen: true,
      modal: true,
      height: 400,
      width: 480,
      dialogClass: 'ccm-core-commerce-cart-dialog',
      title: 'Shopping Cart'
    });

  } else {
    window.location.href = obj.href;
  }
};

ccm_coreCommerceGetCartWindow = function() {
  if (!ccm_coreCommerceCartDialog) {
    ccm_coreCommerceCartDialog = $("<div />").hide().appendTo(document.body);
  }
  return ccm_coreCommerceCartDialog;
}

ccm_coreCommerceRegisterAddToCart = function(id, formaction) {
  if (ccm_coreCommerceUseAdvancedCart) {
    $("#" + id).append('<input type="hidden" name="method" value="JSON" />');
    $("#" + id).ajaxForm({
      beforeSubmit: function(formData, jqForm, options) {
        $("#" + id + " input[type=submit]").attr('disabled', true);
        $("#" + id + " img.ccm-core-commerce-add-to-cart-loader").show();
      },  
      success: function(resp) {
        $("#" + id + " input[type=submit]").attr('disabled', false);
        $("#" + id + " img.ccm-core-commerce-add-to-cart-loader").hide();
        resp = eval('(' + resp + ')');
        ccm_parseJSON(resp, function() {
               if (resp.notification) {
                  alert(resp.bonus_message);
               }
          ccm_coreCommerceGetCartWindow().load(formaction).dialog({
            autoOpen: true,
            modal: true,
            height: 400,
            width: 480,
            dialogClass: 'ccm-core-commerce-cart-dialog',
            title: 'Shopping Cart'
          });
        });
        ccm_coreCommerceUpdateQuantity();
      }
    });
    return false;
  } else {
    return true;
  }
};


ccm_coreCommerceRegisterCallout = function(id) {
  $("#" + id + " div.ccm-core-commerce-add-to-cart-image img").hover(function(e) {
    var t = $(this).position().top;
    var l = $(this).position().left + $(this).width() + 10;
    var cw = $("#" + id + " div.ccm-core-commerce-add-to-cart-callout").outerWidth();
    var ch = $("#" + id + " div.ccm-core-commerce-add-to-cart-callout").outerHeight();

    if (l + cw > $(window).width() + $(window).scrollLeft()) {
      l = l - $(this).outerWidth() - cw - 20;
    }
    if (t + ch > $(window).height() + $(window).scrollTop()) {
      t = t - ch + $(this).outerHeight();
    }

    var obj = $("#" + id + " div.ccm-core-commerce-add-to-cart-callout");
    if (obj.length > 0) {
      obj.css('top', t);
      obj.css('left', l);
      obj.corner('keep');
      /*var innerObj = obj.find('div.ccm-core-commerce-add-to-cart-callout-inner');
      if(innerObj.length > 0) {
        innerObj.corner('12px');
      }*/
      
      obj.fadeIn(150);
    }
  }, function() {
    var obj = $("#" + id + " div.ccm-core-commerce-add-to-cart-callout");
    obj.fadeOut(150,function() {
/*      var innerObj = obj.find('div.ccm-core-commerce-add-to-cart-callout-inner');
      if(innerObj.length > 0) {
        innerObj.uncorner();
      }
      obj.uncorner();*/
    });
  });
};

ccm_coreCommerceCloseCartDialog = function() {
  $(ccm_coreCommerceGetCartWindow()).dialog('close');
}

ccm_coreCommerceUpdateCart = function(url) {
  if (ccm_coreCommerceUseAdvancedCart) {
    ccm_coreCommerceDeactivateCartControls();
    $("form[name=ccm-core-commerce-cart-form-dialog]").ajaxSubmit({
      success: function(jresp) {
        ccm_coreCommerceActivateCartControls();
        jresp = eval('(' + jresp + ')');
        ccm_parseJSON(jresp, function() {
          ccm_coreCommerceGetCartWindow().load(url);
        });
        ccm_coreCommerceUpdateQuantity();
      }
    });
    return false;
  } else {
    return true;
  }
};

ccm_coreCommerceRemoveCartItem = function(obj, url) {
  if (ccm_coreCommerceUseAdvancedCart) {  
    ccm_coreCommerceDeactivateCartControls();
    $.get($(obj).attr('href'), {'method': 'JSON'}, function(jresp) {
      jresp = eval('(' + jresp + ')');
      ccm_coreCommerceActivateCartControls();
      ccm_parseJSON(jresp, function() {
        ccm_coreCommerceGetCartWindow().load(url);
      });
      ccm_coreCommerceUpdateQuantity();
      
    });
  } else {
    return true;
  }
};

ccm_coreCommerceGoToCheckout = function(url) {
  if (ccm_coreCommerceUseAdvancedCart) {  
    ccm_coreCommerceDeactivateCartControls();
  }
  // if we're leaving the update form, submit the values first
  if($("form[name=ccm-core-commerce-cart-form-dialog]").length) {
    $("form[name=ccm-core-commerce-cart-form-dialog]").ajaxSubmit({async:false});
  }
  window.location.href = url;
};

ccm_coreCommerceDeactivateCartControls = function() {
  if (ccm_coreCommerceUseAdvancedCart) {  
    $("#ccm-core-commerce-cart-update-loader").show();
    $(".ccm-core-commerce-cart-buttons input").attr('disabled', true);
  }
};

ccm_coreCommerceActivateCartControls = function() {
  if (ccm_coreCommerceUseAdvancedCart) {  
    $("#ccm-core-commerce-cart-update-loader").hide();
    $(".ccm-core-commerce-cart-buttons input").attr('disabled', false);
  }
};

ccm_coreCommerceUpdateQuantity = function() {
  if (ccm_coreCommerceUseAdvancedCart) {  
    $.getJSON($('#cc-cart-quantity').attr('href'),function(data){
      $("#cc-cart-quantity").html(data);
      if (parseInt(data) > 0) {
        $('.cc-checkout-link-show').show();
      } else {
        $('.cc-checkout-link-show').hide();
      }
    });
  }
};

$(function() {
  $('input[name=useBillingAddressForShipping], label[for=useBillingAddressForShipping]').click(function() {
    if ($('input[name=useBillingAddressForShipping]').attr('checked')) {
      $("#ccm-core-commerce-shipping-address-form").hide();
      $('div.ccm-core-commerce-profile-address-save').hide();
    } else {
      $("#ccm-core-commerce-shipping-address-form").show();
      $('div.ccm-core-commerce-profile-address-save').show();
    }
    //window.location.href = $('input[name=useBillingAddressAction]').val() + ($('input[name=useBillingAddressForShipping]').attr('checked') ? 1 : 0);
  });
  if ((jQuery.browser.msie && jQuery.browser.version >= 7) || jQuery.browser.safari || jQuery.browser.opera || jQuery.browser.mozilla) {
    ccm_coreCommerceUseAdvancedCart = true;
  }
});

