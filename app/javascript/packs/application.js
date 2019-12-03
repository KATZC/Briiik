import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


// document.querySelector(".navbar-toggler").addEventListener("click", (event) => {
//   document.querySelector(".collapse").classList.toggle("show")
// })
