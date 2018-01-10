(
    function() {
        var _id = "3d305dc3c1ce5d9a20d8d17b5c87bca6";
        while (document.getElementById("timer" + _id)) _id = _id + "0";
        document.write("<div id='timer" + _id + "' style='min-width:363px;height:62px;'></div>");
        var _t = document.createElement("script");
        _t.src = "http://megatimer.ru/timer/timer.min.js";
        var _f = function(_k) {
            var l = new MegaTimer(_id, {
                "view": [1, 1, 1, 1],
                "type": {
                    "currentType": "1",
                    "params": {
                        "usertime": false,
                        "tz": "1",
                        "utc": 1518674400000
                    }
                },
                "design": {
                    "type": "plate",
                    "params": {
                        "round": "5",
                        "background": "solid",
                        "background-color": "#2e3d44",
                        "effect": "flipchart",
                        "space": "0",
                        "separator-margin": "4",
                        "number-font-family": {
                            "family": "Roboto",
                            "link": "<link href='http://fonts.googleapis.com/css?family=Roboto&subset=latin,cyrillic' rel='stylesheet' type='text/css'>"
                        },
                        "number-font-size": "36",
                        "number-font-color": "#ffffff",
                        "padding": "12",
                        "separator-on": true,
                        "separator-text": ":",
                        "text-on": false,
                        "text-font-family": {
                            "family": "Comfortaa",
                            "link": "<link href='http://fonts.googleapis.com/css?family=Comfortaa&subset=latin,cyrillic' rel='stylesheet' type='text/css'>"
                        },
                        "text-font-size": "12",
                        "text-font-color": "red"
                    }
                },
                "designId": 2,
                "theme": "white",
                "width": 363,
                "height": 62
            });
            if (_k != null) l.run();
        };
        _t.onload = _f;
        _t.onreadystatechange = function() {
            if (_t.readyState == "loaded") _f(1);
        };
        var _h = document.head || document.getElementsByTagName("head")[0];
        _h.appendChild(_t);
    }
).call(this);