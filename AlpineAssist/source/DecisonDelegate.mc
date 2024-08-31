import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.PersistedContent;
import Toybox.Position;


class decisonDelegate extends WatchUi.Menu2InputDelegate {

    public var iterator = PersistedContent.getCourses(); 
    public var content = iterator.next();

    public function initialize() {
        Menu2InputDelegate.initialize();
    }

    public function onSelect(item as MenuItem) as Void {
        var id = item.getId() as String;

        if (id.equals("launch")) {
            
            System.exitTo(content.toIntent());

        } else {
            WatchUi.requestUpdate();
        }
    }

    public function onBack() as Void {
        WatchUi.popView(WatchUi.SLIDE_DOWN);
    }
}
