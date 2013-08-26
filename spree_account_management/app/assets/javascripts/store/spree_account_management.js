//= require store/spree_frontend
//= require store/select2


(function($) {

  var $el;

  function init() {
    $('.update-address').on('change', 'select', function(){
      $(this).closest('form').submit();
    });

    $('#user_ship_address_id').select2();
  }


  $(init);
})(jQuery);
