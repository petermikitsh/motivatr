$ ->
  $('input[name=timezone]').val(- (new Date()).getTimezoneOffset() / 60)
