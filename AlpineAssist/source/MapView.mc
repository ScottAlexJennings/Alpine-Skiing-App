import Toybox.Graphics;
import Toybox.Lang;
import Toybox.Position;
import Toybox.System;
import Toybox.WatchUi;

//! This view shows a map on the screen with markers and a polyline
class MapView extends WatchUi.MapView {

    //! Constructor
    public function initialize() {
        MapView.initialize();

        setMapMode(WatchUi.MAP_MODE_PREVIEW);
    }

    //! Load your resources here
    //! @param dc Device context
    public function onLayout(dc as Dc) as Void {
    }

    //! Called when this View is brought to the foreground. Restore
    //! the state of this View and prepare it to be shown. This includes
    //! loading resources into memory.
    public function onShow() as Void {
    }

    //! Update the view
    //! @param dc Device context
    public function onUpdate(dc as Dc) as Void {
        // call the parent onUpdate function to redraw the layout
        MapView.onUpdate(dc);
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_TRANSPARENT);
        /*dc.drawText(
                    dc.getWidth() / 2,                      // gets the width of the device and divides by 2
                    dc.getHeight() / 2,                     // gets the height of the device and divides by 2
                    Graphics.FONT_LARGE,                    // sets the font size
                    "Hello World",                          // the String to display
                    Graphics.TEXT_JUSTIFY_CENTER            // sets the justification for the text
                  );*/
    }
}
