function initialize() {
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
  
  var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

  var xCordinate = 49.7982929
  var yCordinate = 24.035272

  if (w > 640){
    zoomZoom = 17;
  } else {
    zoomZoom = 15;
  };
    
  var mapOptions = {
    zoom: zoomZoom,
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

  var image = '/assets/icons/map-marker.svg'

  var marker = new google.maps.Marker({
    map: map,
    draggable: false,
    position: new google.maps.LatLng(xCordinate, yCordinate),
    icon: image
  });

  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');
}
google.maps.event.addDomListener(window, 'resize', initialize);
google.maps.event.addDomListener(window, 'load', initialize)