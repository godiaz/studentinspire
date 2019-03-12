import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import countUpModule from 'countup.js'

const countUp = new CountUp('target', 5234);
if (!countUp.error) {
  countUp.start();
} else {
  console.error(countUp.error);
}
