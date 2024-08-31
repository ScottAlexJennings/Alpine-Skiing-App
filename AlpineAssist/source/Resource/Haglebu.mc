import Toybox.Lang;
import Toybox.System;

class Haglebu {

    static var lifts as Dictionary? = {
        
        "southLift" => [[9.2082146,60.3407457,922.54],[9.208868999999998,60.3420039,958.54],[9.2095128,60.343484999999994,1009.64],[9.2106071,60.345735800000014,1026.75]],
        "westLift" => [[9.1919601,60.345122300000014,840.62],[9.209148,60.3461751,1022.6800000000001],[9.2101847,60.3462386,1024.94],[9.210877199999999,60.346283799999995,1030.1799999999998],[9.21105,60.346291599999994,1032.1799999999998]]
    };

    static var slopes as Dictionary? = {
        "westSlope1" => [[9.21105,60.346291599999994,1032.1799999999998],[9.2090317,60.34631680000001,1022.6800000000001],[9.207727499999999,60.3463448,1003.51],[9.2051048,60.3462958,967.6800000000001],[9.2022128,60.346260699999995,934.43],[9.200313199999998,60.346183499999995,910.74],[9.199424200000003,60.3461116,897.6700000000001],[9.195635000000003,60.345804799999996,866.15],[9.1936928,60.3455172,850],[9.1919601,60.345122300000014,840.62]],
        "westSlope2" => [[9.21105,60.346291599999994,1032.1799999999998],[9.2108463,60.346422,1030.75],[9.210378499999996,60.34668149999998,1029.6299999999999],[9.2101871,60.3471339,1029.94],[9.2099673,60.347495099999996,1023.71],[9.2096696,60.347617799999995,1018.48],[9.2089892,60.34766339999999,1011.1700000000001],[9.208315799999998,60.347621299999986,1002.88],[9.2078692,60.3475687,997.4],[9.2074085,60.3473338,993.24],[9.2069336,60.346913,986.87],[9.206430300000003,60.3467832,981.8599999999999],[9.20536,60.3467797,968.75],[9.2041904,60.346821799999994,955.05],[9.2035879,60.3468113,949.21],[9.203127199999999,60.3467622,944.21],[9.202694800000003,60.346674499999985,939.6800000000001],[9.202106500000003,60.34668149999998,931.8599999999999],[9.201383499999999,60.3465868,922.48],[9.2007739,60.346446499999985,916.25],[9.199424200000003,60.3461116,897.6700000000001]],
        "westSlope3" => [[9.2069336,60.346913,986.87],[9.2066217,60.34666749999998,982.9499999999999],[9.2051048,60.3462958,967.6800000000001]]
    };

}   