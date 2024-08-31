import Toybox.Graphics;
import Toybox.WatchUi;

class MainView extends WatchUi.View {

    public var position = null;

    public function initialize() {
        View.initialize();
    }

    // Load your resources here
    public function onLayout(dc as Dc) as Void {
        setLayout($.Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    public function onShow() as Void {
    }

    // Update the view
    public function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    public function onHide() as Void {
    }

    public function setPosition(info) as Void{
        position = info.position;
        WatchUi.requestUpdate();
    }

}
