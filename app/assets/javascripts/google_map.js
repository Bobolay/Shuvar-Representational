// This example creates a custom overlay called USGSOverlay, containing
// a U.S. Geological Survey (USGS) image of the relevant area on the map.

// Set the custom overlay object's prototype to a new instance
// of OverlayView. In effect, this will subclass the overlay class therefore
// it's simpler to load the API synchronously, using
// google.maps.event.addDomListener().
// Note that we set the prototype to an instance, rather than the
// parent class itself, because we do not wish to modify the parent class.

var overlay;
USGSOverlay.prototype = new google.maps.OverlayView();

// Initialize the map and the custom overlay.

function initMap() {

  var map_element = document.getElementById('googleMap')
  if(!map_element){
    return
  }
  var styles = [
    {
      "featureType":"all",
      "elementType":"all",
      "stylers":
        [
          {
            "saturation":-100
          },
          {"gamma":0.5}
        ]
      }
    ]

  var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});
  
  // var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

  var xCordinate = 49.798386
  var yCordinate = 24.034996

  if (width > 640){
    mapZoom = 17;
  } else {
    mapZoom = 16;
  };
    
  var mapOptions = {
    zoom: mapZoom,
    center: new google.maps.LatLng(xCordinate, yCordinate),
    panControl:false,
    zoomControl:true,
    mapTypeControl:false,
    scaleControl:false,
    streetViewControl:false,
    overviewMapControl:false,
    rotateControl:false,
    draggable: true,
    scrollwheel: false,
    mapTypeControlOptions:{
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, "map_style"]
    }
  };
  

  var map = new google.maps.Map(map_element,
    mapOptions);

  var image = images.map_marker

  var marker = new google.maps.Marker({
    map: map,
    draggable: false,
    position: new google.maps.LatLng(49.798457, 24.036128),
    icon: image
  });

  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');














  // var map = new google.maps.Map(document.getElementById('googleMap'), {
  //   zoom: 17,
  //   center: {lat: 49.798386, lng: 24.034996}
  // });

  var bounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(49.794966, 24.033096),
      new google.maps.LatLng(49.798746, 24.039496));

  // The photograph is courtesy of the U.S. Geological Survey.
  var srcImage = images.map_overlay

  // The custom USGSOverlay object contains the USGS image,
  // the bounds of the image, and a reference to the map.
  overlay = new USGSOverlay(bounds, srcImage, map);
}

/** @constructor */
function USGSOverlay(bounds, image, map) {

  // Initialize all properties.
  this.bounds_ = bounds;
  this.image_ = image;
  this.map_ = map;

  // Define a property to hold the image's div. We'll
  // actually create this div upon receipt of the onAdd()
  // method so we'll leave it null for now.
  this.div_ = null;

  // Explicitly call setMap on this overlay.
  this.setMap(map);
}

/**
 * onAdd is called when the map's panes are ready and the overlay has been
 * added to the map.
 */
USGSOverlay.prototype.onAdd = function() {

  var div = document.createElement('div');
  div.style.borderStyle = 'none';
  div.style.borderWidth = '0px';
  div.style.position = 'absolute';

  // Create the img element and attach it to the div.
  var img = document.createElement('img');
  img.src = this.image_;
  img.style.width = '100%';
  img.style.height = '100%';
  img.style.position = 'absolute';
  div.appendChild(img);

  this.div_ = div;

  // Add the element to the "overlayLayer" pane.
  var panes = this.getPanes();
  panes.overlayLayer.appendChild(div);
};

USGSOverlay.prototype.draw = function() {

  // We use the south-west and north-east
  // coordinates of the overlay to peg it to the correct position and size.
  // To do this, we need to retrieve the projection from the overlay.
  var overlayProjection = this.getProjection();

  // Retrieve the south-west and north-east coordinates of this overlay
  // in LatLngs and convert them to pixel coordinates.
  // We'll use these coordinates to resize the div.
  var sw = overlayProjection.fromLatLngToDivPixel(this.bounds_.getSouthWest());
  var ne = overlayProjection.fromLatLngToDivPixel(this.bounds_.getNorthEast());

  // Resize the image's div to fit the indicated dimensions.
  var div = this.div_;
  div.style.left = sw.x + 'px';
  div.style.top = ne.y + 'px';
  div.style.width = (ne.x - sw.x) + 'px';
  div.style.height = (sw.y - ne.y) + 'px';
};

// The onRemove() method will be called automatically from the API if
// we ever set the overlay's map property to 'null'.
USGSOverlay.prototype.onRemove = function() {
  this.div_.parentNode.removeChild(this.div_);
  this.div_ = null;
};

google.maps.event.addDomListener(window, 'resize', initMap);
google.maps.event.addDomListener(window, 'load', initMap)