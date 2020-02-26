import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initFilter } from "../components/animal-list-filter"
import { initGenderFilter } from "../components/adoption_gender_list"
import { initNavHighlight } from "../components/navbar_highlight"
import { initMapbox } from '../plugins/init_mapbox';

initFilter();
initGenderFilter();
// initNavHighlight();
initMapbox();
