import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Position;


class App extends Application.AppBase {

    public function initialize() {
        AppBase.initialize();
    }

    public function onStart(state as Dictionary?) {     
    }

    //! onStop() is called when your application is exiting
    public function onStop(state as Dictionary?) {
    }

    // Return the initial view of your application here
    public function getInitialView() as [Views] or [Views, InputDelegates] {
        return [new $.MainView(), new $.MainDelegate()];
    }

}

function getApp() as App {
    return Application.getApp() as App;
}