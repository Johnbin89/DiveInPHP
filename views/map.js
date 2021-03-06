                  
/**
 * Moves the map to display over Berlin
 *
 * @param  {H.Map} map      A HERE Map instance within the application
 */
//var spotLat = <?php echo $posLat ?>;
//var spotLng = <?php echo $posLng ?>;
function moveMapTo(map){
    map.setCenter({lat:spotLat, lng:spotLng}); //lat:38.32094, lng:21.9709
    map.setZoom(14);
  }

function addMarkersToMap(map) {
    var Marker = new H.map.Marker({lat:spotLat, lng:spotLng});
    map.addObject(Marker);
}
  
  /**
   * Boilerplate map initialization code starts below:
   */
  
  //Step 1: initialize communication with the platform
  // In your own code, replace variable window.apikey with your own apikey
  var platform = new H.service.Platform({
    apikey: '35Ob8ccKogZdBBWTf_la1sRjA-sTNy3pfsBdVOkP6mM'
  });
  var defaultLayers = platform.createDefaultLayers();
  
  //Step 2: initialize a map - this map is centered over Europe
  var map = new H.Map(document.getElementById('map'),
    defaultLayers.vector.normal.map,{
    center: {lat:50, lng:5},
    zoom: 4,
    pixelRatio: window.devicePixelRatio || 1
  });
  // add a resize listener to make sure that the map occupies the whole container
  window.addEventListener('resize', () => map.getViewPort().resize());
  
  //Step 3: make the map interactive
  // MapEvents enables the event system
  // Behavior implements default interactions for pan/zoom (also on mobile touch environments)
  var behavior = new H.mapevents.Behavior(new H.mapevents.MapEvents(map));
  
  // Create the default UI components
  var ui = H.ui.UI.createDefault(map, defaultLayers);
  
  // Now use the map as required...
  window.onload = function () {
    moveMapTo(map);
    addMarkersToMap(map);
  }   