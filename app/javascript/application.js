// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"
import "@rails/actiontext"
import Typed from 'typed.js';

var homepage = new Typed('#homepage-title', {
  strings: ["Wyvern Art Fund ^1000", "Supporting creativity^1000"],
  typeSpeed: 50,
  showCursor: false,
  loop: true
});

