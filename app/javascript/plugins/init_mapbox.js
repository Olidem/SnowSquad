import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    var markers = JSON.parse(mapElement.dataset.markers);
    if (markers) {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }};

  if (mapElement) {
    // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    var map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/light-v10'
    });
    var markers = JSON.parse(mapElement.dataset.markers);
    if(markers) {
      markers.forEach(function (marker) {
        marker.className = '';
        var popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
        var element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = "url('https://www.snowsquad.io/assets/Skiing-PNG-Image-27695d1c21f35bb800bb6d788bf9928f5bdace1ac1299378778d47b2ba2dbd42.png')";
        element.style.backgroundSize = 'contain';
        element.style.width = '30px';
        element.style.height = '30px';
        new mapboxgl.Marker(element).setLngLat([marker.lng, marker.lat]).setPopup(popup).addTo(map);
      });
    }
    fitMapToMarkers(map, markers); // addMarkersToMap(map, markers)
  }
};

export { initMapbox };
