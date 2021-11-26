# GOAL

This is a demo to show-case how to implement an easy autocomplete in rails using the `simple form` gem and the `select2` plugin using `stimulus`.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

- install stimulus
```sh
rails webpacker:install:stimulus
```

- install the select2 plugin
```js
  yarn add jquery select2
```

- create a new controller with the select2 logic
```js
// app/javascript/controllers/select2_controller.js
import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('hello from select2 controller')
    $(this.element).select2();
  }
}
```

- add the `data-controller='select2'` to the input
```erb
  <%= simple_form_for([@plant, @plant_tag]) do |f| %>

    <%= f.association :tag, input_html: { data: { controller: 'select2' } } %>

  <% end %>
```

### If you want to check it locally
```sh
repo_name="select2-stimulus-demo"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/plants/1/plant_tags/new and see it in action
```

### TROUBLESHOOTING

If the css is not loading for select2, make sure you add this line in your application.html.erb:
```erb
<%= javascript_style_tag 'application', 'data-turbolinks-track': 'reload', defer: true %>
```
⤴️This is telling your app that it needs to import the css files from your `application.js` file.

And we're good to go

Good Luck 🍀 and Have Fun 🤓
