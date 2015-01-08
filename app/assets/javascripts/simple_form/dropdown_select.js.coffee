(($, window) ->

  class DropdownSelectInput
    defaults: {}

    constructor: ($el, options) ->
      @options = $.extend({}, @defaults, options)
      @$el = $el
      @$input = $el.find('input')
      @$toggle = $el.find('[data-toggle=dropdown]')

      @$el.on 'click', 'a[data-value]', (e) =>
        $a = $(e.currentTarget)

        @$input.val($a.data('value'))
               .trigger('input')
               .trigger('change')

        $a.closest('li')
          .addClass('active')
          .siblings()
          .removeClass('active')

        @$toggle.text($a.find('.drop_rich_head').text())

  $.fn.extend dropdownSelectInput: (option, args...) ->
    @each ->
      data = $(@).data('dropdown-select-input')

      if !data
        $(@).data 'dropdown-select-input', (data = new DropdownSelectInput($(@), option))
      if typeof option == 'string'
        data[option].apply(data, args)

) window.jQuery, window

$ ->
  $('[data-dropdown-select]').dropdownSelectInput()
