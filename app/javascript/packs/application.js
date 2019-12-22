import 'bootstrap';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initProgressbar } from '../plugins/init_progressbar';


if (document.getElementById('map')) {
  initMapbox();
}

if (document.getElementById('progress-bar')) {
  initProgressbar();
}

const initUpdateNavbarOnScroll = () => {
  if (document.querySelector('.navbar')) {
    const navbar = document.querySelector('.navbar');
    window.addEventListener('scroll', () => {
      if (window.scrollY >= (window.innerHeight / 2)) {
        navbar.classList.add('bg-light');
        navbar.classList.remove('bg-transparent');
      } else {
        navbar.classList.add('bg-transparent');
        navbar.classList.remove('bg-light');
      }
    });
  }
}

initUpdateNavbarOnScroll();
