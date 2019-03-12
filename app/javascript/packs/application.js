import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import * as countUpModule from 'countup.js'

window.onload = () => {
  const countUp = new countUpModule.CountUp('countup-target', 673231, {
    duration: 5,
    suffix: '+'
  })
  countUp.start()
}

