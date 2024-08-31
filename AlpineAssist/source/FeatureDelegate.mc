import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.PersistedContent;

public var mapType = 0;

class FeatureDelegate extends WatchUi.Menu2InputDelegate {

    

    public function initialize() {
        Menu2InputDelegate.initialize();
    }

    public function onSelect(item as MenuItem) as Void {
        var id = item.getId() as String;

        if (id.equals("haglebuMap")) {
            System.println("haglebuMap");
            var haglebuMapView = new $.MapView();

            // create map markers array
            var mapMarkers = [];

            // lift 1
            var marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.3407457, :longitude => 9.2082146, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("southLift");
            mapMarkers.add(marker);

            // lift 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.345122300000014, :longitude => 9.1919601, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westLift");
            mapMarkers.add(marker);

            // slope 1
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346291599999994, :longitude => 9.21105, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope1");
            mapMarkers.add(marker);

            // slope 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346291599999994, :longitude => 9.21105, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope2");
            mapMarkers.add(marker);

            // slope 3
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346913, :longitude => 9.2069336, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope3");
            mapMarkers.add(marker);
            

            haglebuMapView.setMapMarker(mapMarkers);

            // create the bounding box for the map area
            var top_left = new Position.Location({:latitude => 60.35, :longitude => 9.188154, :format => :degrees});
            var bottom_right = new Position.Location({:latitude => 60.34, :longitude => 9.209592, :format => :degrees});
            haglebuMapView.setMapVisibleArea(top_left, bottom_right);

            // set the bound box for the screen area to focus the map on
            haglebuMapView.setScreenVisibleArea(0, 0, System.getDeviceSettings().screenWidth, System.getDeviceSettings().screenHeight / 2);

            WatchUi.pushView(haglebuMapView, new $.MapDelegate(haglebuMapView), WatchUi.SLIDE_UP);

        } else if (id.equals("westLift")) {

            var menu = new $.WatchUi.Menu2({:title=>"Lift Options"});
            menu.addItem(new WatchUi.MenuItem("Guidence to Spot", "Text Instructions", "instructions", null));
            menu.addItem(new WatchUi.MenuItem("Launch session", null, "launch", null));

            WatchUi.pushView(menu, new $.decisonDelegate(), WatchUi.SLIDE_UP);

        } else if (id.equals("trysilMap")) {
            System.println("trysilMap");
            var trysilMapView = new $.MapView();
            
            // create map markers array
            var mapMarkers = [];

            // lift 1
            var marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.3407457, :longitude => 9.2082146, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("southLift");
            mapMarkers.add(marker);

            // lift 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.345122300000014, :longitude => 9.1919601, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westLift");
            mapMarkers.add(marker);

            // slope 1
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346291599999994, :longitude => 9.21105, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope1");
            mapMarkers.add(marker);

            // slope 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346291599999994, :longitude => 9.21105, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope2");
            mapMarkers.add(marker);

            // slope 3
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => 60.346913, :longitude => 9.2069336, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("westSlope3");
            mapMarkers.add(marker);
            

            trysilMapView.setMapMarker(mapMarkers);

            // create the bounding box for the map area
            var top_left = new Position.Location({:latitude => 61.331715, :longitude => 12.154027, :format => :degrees});
            var bottom_right = new Position.Location({:latitude => 61.297417, :longitude => 12.236848, :format => :degrees});
            trysilMapView.setMapVisibleArea(top_left, bottom_right);  

            // set the bound box for the screen area to focus the map on
            trysilMapView.setScreenVisibleArea(0, 0, System.getDeviceSettings().screenWidth, System.getDeviceSettings().screenHeight / 2);


            WatchUi.pushView(trysilMapView, new $.MapDelegate(trysilMapView), WatchUi.SLIDE_UP);

        } else if (id.equals("sotonMap")) {
            System.println("sotonMap");
            var sotonMapView = new $.MapView();
            
            // create map markers array
            var mapMarkers = [];

            // lift 1
            var marker = new WatchUi.MapMarker(new Position.Location({:latitude => -1.397835, :longitude => 50.935669, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("northPath1");
            mapMarkers.add(marker);

            // lift 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => -1.395922, :longitude => 50.935619, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("northPath2");
            mapMarkers.add(marker);

            // slope 1
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => -1.397053, :longitude => 50.934493, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("SUSU");
            mapMarkers.add(marker);

            // slope 2
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => -1.395967, :longitude => 50.935128, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("Library");
            mapMarkers.add(marker);

            // slope 3
            marker = new WatchUi.MapMarker(new Position.Location({:latitude => -1.396894, :longitude => 50.935567, :format => :degrees}));
            marker.setIcon(WatchUi.loadResource($.Rez.Drawables.MapPin) as BitmapResource, 12, 24);
            marker.setLabel("Fountain");

            mapMarkers.add(marker);
            sotonMapView.setMapMarker(mapMarkers);

            // create the bounding box for the map area
            var top_left = new Position.Location({:latitude => -1.399430, :longitude => 50.936903, :format => :degrees});
            var bottom_right = new Position.Location({:latitude => -1.394101, :longitude => 50.934004, :format => :degrees});
            sotonMapView.setMapVisibleArea(top_left, bottom_right);  

            // set the bound box for the screen area to focus the map on
            sotonMapView.setScreenVisibleArea(0, 0, System.getDeviceSettings().screenWidth, System.getDeviceSettings().screenHeight / 2);


            WatchUi.pushView(sotonMapView, new $.MapDelegate(sotonMapView), WatchUi.SLIDE_UP);
        } else {
            WatchUi.requestUpdate();
        }

    }

    public function onBack() as Void {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }

    public function getMapType() as String {
        return mapType;
    }

}