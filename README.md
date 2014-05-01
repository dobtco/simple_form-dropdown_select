Simple Form - Dropdown Select Input
=======

## Dependencies
- Coffeescript
- Stylus
- jQuery
- Simple Form
- Bootstrap-dropdown v3

## Use it

```ruby
### In your forms
simple_form_for :foo do |f|
  f.input :employees,
          as: :dropdown_select,
          collection: [['Adam', :adam, 'The developer of this gem.'],
                       ['Blue', :blue, 'Blue is a nice color, in case you were wondering.']]
end
```

### application.js
```
//= require simple_form-dropdown_select_input
```

### application.css
```
*= require simple_form-dropdown_select_input
```

## Notes
Currently does not allow `include_blank`.
