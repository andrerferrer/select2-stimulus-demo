// imports
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
