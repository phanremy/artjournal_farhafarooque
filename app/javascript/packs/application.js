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


