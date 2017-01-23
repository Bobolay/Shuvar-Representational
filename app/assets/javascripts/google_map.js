function initialize() {
  var styles = [
    {
      stylers: [
        { hue: "#6eff00" },
        { saturation: -58 },
        { weight: 1.8 },
        { lightness: 14 },
        { gamma: 0.75 }
      ]
    },{
      featureType: "road",
      elementType: "geometry",
      stylers: [
        { lightness: 100 },
        { visibility: "simplified" }
      ]
    },{
      featureType: "road",
      elementType: "labels",
      stylers: [
        { visibility: "off" }
      ]
    }
  ];
    var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});
    
    var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

    var xCordinate = 49.7997055
    var yCordinate = 24.0246802

    var mapOptions = {
        zoom: 17,
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
    var map = new google.maps.Map(document.getElementById('googleMap'),
        mapOptions);
    var image = image_urls.marker
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