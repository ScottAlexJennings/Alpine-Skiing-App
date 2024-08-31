import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.PersistedContent;

public var resortNames = new [5]; 
public var contentOfResorts = new [5];        

class MainDelegate extends WatchUi.BehaviorDelegate {

    public var iterator = PersistedContent.getCourses(); 
    public var content = iterator.next();

    public function initialize() {
        BehaviorDelegate.initialize();
    }

    public function onMenu() as Boolean {
        
        var resortsMenu = new WatchUi.Menu2({:title=>"Loaded Resorts"});
        var index = 0;
        
        // Logic for adding installed courses
        if (content != null) {
            while (content != null) {
                System.println(content.getName());

                resortNames[index] = content.getName();
                contentOfResorts[index] = content;
                
                resortsMenu.addItem(new WatchUi.MenuItem(content.getName(), null, content.getName(), null));
                content = iterator.next();  
                index++;
            }            
        } else {
            System.println("No courses found.");
        }

        // Default resortNames uploaded tor testing
        resortsMenu.addItem(new WatchUi.MenuItem("Haglebu", null, "haglebu", null));
        resortsMenu.addItem(new WatchUi.MenuItem("Southampton", null, "southampton", null));
        resortsMenu.addItem(new WatchUi.MenuItem("Trysil", null, "trysil", null));

        // Load dynamic menu 
        WatchUi.pushView(resortsMenu, new $.resortsDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

    public function getResortNames() as Array<String> {
        return resortNames;
    }

    public function getContentOfResort() {
        return contentOfResorts;
    }
}