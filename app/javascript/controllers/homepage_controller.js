import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="homepage"
export default class extends Controller {
  connect() {
    console.log("controller connected")
    var homepage_title = new Typed('#homepage-title', {
        strings: ["Wyvern Art Fund ^1000", "Supporting creativity^1000"],
        typeSpeed: 80,
        showCursor: false,
        loop: true,
        fadeOut: true
      });
    if (document.getElementById('exampleModal')) {
      var myModal = new bootstrap.Modal(document.getElementById('exampleModal'), {keyboard: false, backdrop: 'static'});
      myModal.show();
    }
  }



}
