class DropdownSelectInput < SimpleForm::Inputs::CollectionInput

  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def selected_option
    collection.find { |x| x[1] == object.send(attribute_name) }
  end

  def input
    if options[:allow_blank]
      collection.unshift(
        [options[:allow_blank] == true ? 'None' : options[:allow_blank], '']
      )
    end

    content_tag(:span, class: 'dropdown dropdown_select_input') do
      @builder.hidden_field(attribute_name, input_html_options) +
      content_tag(:a, class: 'dropdown_toggle_button', 'data-toggle' => 'dropdown') { selected_option[0] } +
      content_tag(:ul, class: 'dropdown_menu') {
        collection.map do |x|
          content_tag(:li, class: selected_option == x ? 'active' : nil) {
            content_tag(:a, 'data-value' => x[1]) {
              content_tag(:span, class: 'dropdown_select_input_title') { x[0] } +
              content_tag(:span, class: 'dropdown_select_input_description') { x[2] }
            }
          }
        end.join('').html_safe
      }
    end
  end

end
