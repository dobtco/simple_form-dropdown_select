class DropdownSelectInput < SimpleForm::Inputs::CollectionInput

  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def selected_option
    collection.find { |x| x[1] == object.send(attribute_name) }
  end

  def input(wrapper_options = nil)
    if options[:allow_blank]
      collection.unshift(
        [options[:allow_blank] == true ? 'None' : options[:allow_blank], '']
      )
    end

    content_tag(:span, class: 'dropdown dropdown_rich') do
      @builder.hidden_field(attribute_name, input_html_options) +
      content_tag(:a, class: 'dropdown_toggle_button', 'data-toggle' => 'dropdown') { selected_option[0] } +
      content_tag(:div, class: 'dropdown_menu dropdown_menu_rich') {
        content_tag(:ul, class: 'dropdown_body') {
          collection.map do |x|
            content_tag(:li, class: selected_option == x ? 'active' : nil) {
              content_tag(:a, 'data-value' => x[1]) {
                content_tag(:strong, class: 'drop_rich_head') { x[0] } +
                content_tag(:span, class: 'drop_rich_subhead') { x[2] }
              }
            }
          end.join('').html_safe
        }
      }
    end
  end

end
