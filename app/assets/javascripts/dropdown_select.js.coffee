(($, window) ->

  class DropdownSelectInput
    defaults: {}

    constructor: ($el, options) ->
      @options = $.extend({}, @defaults, options)
      @$el = $el
      @$input = $el.find('input')
      @$toggle = $el.find('.dropdown_toggle_button')

      @$el.on 'click', 'a[data-value]', (e) =>
        $a = $(e.currentTarget)

        @$input.val($a.data('value'))
               .trigger('input')
               .trigger('change')

        $a.closest('li')
          .addClass('active')
          .siblings()
          .removeClass('active')

        @$toggle.text($a.find('.dropdown_select_input_title').text())

  $.fn.extend dropdownSelectInput: (option, args...) ->
    @each ->
      data = $(@).data('dropdown-select-input')

      if !data
        $(@).data 'dropdown-select-input', (data = new DropdownSelectInput($(@), option))
      if typeof option == 'string'
        data[option].apply(data, args)

) window.jQuery, window

$ ->
  $(".dropdown_select_input").dropdownSelectInput()
