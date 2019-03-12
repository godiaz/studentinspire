import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

var countUpModule = require('countup.js');

window.onload = function() {
  var countUp = countUpModule.CountUp('target', 2000);
  countUp.start();
}
