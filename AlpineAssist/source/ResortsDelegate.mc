import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.PersistedContent;
import Toybox.Position;

class resortsDelegate extends WatchUi.Menu2InputDelegate {

    public var position as Array? = null;

    public function initialize() {
        Menu2InputDelegate.initialize();
    }

    function onPosition( info as Position.Info ) as Void {
        position = info.position.toDegrees();
        System.println("Latitude: " + position[0]);
        System.println("Longitude: " + position[1]); 
        //System.println( "Position " + info.position.toGeoString( Position.GEO_DM ) );
    }

    function getPosition() as Void {
        Position.enableLocationEvents(Position.LOCATION_ONE_SHOT, method(:onPosition));
    }

    public function onSelect(item as MenuItem) as Void {
        var id = item.getId() as String;
        var mainMenu = new $.MainDelegate();

        // Get names of courses and course content without another call of persistent conetnt
        for (var i = 0; i < mainMenu.getResortNames().size(); i ++) {
            if (id.equals(mainMenu.getResortNames()[i])) {
                System.println(mainMenu.getResortNames()[i]);

                System.exitTo(mainMenu.getContentOfResort()[i].toIntent());
                
            }
        }

        // Example resorts with loaded data
        if (id.equals("southampton")) {
            System.println("southampton");

            getPosition();

            // var i = WatchUi.loadResource($.Rez.JsonData[:HA_L1]);

            var featureMenu = new WatchUi.Menu2({:title=>"Resort Features"});
            var liftKeys = Southampton.lifts.keys();
            var slopeKeys = Southampton.slopes.keys();

            // Adding map to menu
            featureMenu.addItem(new WatchUi.MenuItem("Resort Map", "Load preview of resort", "sotonMap", null));
        
            // Adding lifts to menu
            for (var i = 0; i < Southampton.lifts.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(liftKeys[i].toString(), null, liftKeys[i].toString(), null));
            }
            // Adding slopes to menu 
            for (var i = 0; i < Southampton.slopes.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(slopeKeys[i].toString(), null, slopeKeys[i].toString(), null));
            }
            System.println("Lifts");
            //System.println(Haglebu.lifts);
            System.println("Slopes");
            //System.println(Haglebu.slopes);
            WatchUi.pushView(featureMenu, new $.FeatureDelegate(), WatchUi.SLIDE_UP);


        } else if (id.equals("haglebu")) {

            var featureMenu = new WatchUi.Menu2({:title=>"Resort Features"});
            var liftKeys = Haglebu.lifts.keys();
            var slopeKeys = Haglebu.slopes.keys();

            // Adding map to menu
            featureMenu.addItem(new WatchUi.MenuItem("Resort Map", "Load preview of resort", "haglebuMap", null));
        
            // Adding lifts to menu
            for (var i = 0; i < Haglebu.lifts.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(liftKeys[i].toString(), null, liftKeys[i].toString(), null));
            }
            // Adding slopes to menu 
            for (var i = 0; i < Haglebu.slopes.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(slopeKeys[i].toString(), null, slopeKeys[i].toString(), null));
            }
            System.println("haglebu");
            System.println("Lifts");
            //System.println(Haglebu.lifts);
            System.println("Slopes");
            //System.println(Haglebu.slopes);
            WatchUi.pushView(featureMenu, new $.FeatureDelegate(), WatchUi.SLIDE_UP);

        } else if (id.equals("trysil")) {
            var featureMenu = new WatchUi.Menu2({:title=>"Resort Features"});
            var liftKeys = Trysil.lifts.keys();
            var slopeKeys = Trysil.slopes.keys();

            // Adding map to menu
            featureMenu.addItem(new WatchUi.MenuItem("Resort Map", "Load preview of resort", "trysilMap", null));

            // Adding lifts to menu
            for (var i = 0; i < Trysil.lifts.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(liftKeys[i].toString(), null, liftKeys[i].toString(), null));
            }

            // Adding slopes to menu 
            for (var i = 0; i < Trysil.slopes.size(); i ++) {
                featureMenu.addItem(new WatchUi.MenuItem(slopeKeys[i].toString(), null, slopeKeys[i].toString(), null));
            }
            System.println("haglebu");
            System.println("Lifts");
            //System.println(Trysil.lifts);
            System.println("Slopes");
            //System.println(Trysil.slopes);
            WatchUi.pushView(featureMenu, new $.FeatureDelegate(), WatchUi.SLIDE_UP);
            
        } else {
            WatchUi.requestUpdate();
        }
    }

    public function onBack() as Void {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }
}