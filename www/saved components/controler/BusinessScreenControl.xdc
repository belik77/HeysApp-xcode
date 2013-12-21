{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.app.Controller",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "views": [
                "BusinessScreen"
            ],
            "designer|userClassName": "BusinessScreenControl"
        },
        "cn": [
            {
                "type": "controllerref",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "BusinessScreen",
                    "ref": "BusinessScreen",
                    "selector": "#BusinessScreen",
                    "xtype": "Ext.Panel"
                }
            },
            {
                "type": "controlleraction",
                "reference": {
                    "name": "listeners",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "onBusinessPanelInitialize",
                    "fn": "onBusinessPanelInitialize",
                    "implHandler": [
                        "console.log('onBusinessPanelInitialize');\r",
                        "\r",
                        "var LocalStore = Ext.getStore('LocalStore'); // Shortcut\r",
                        "var aRecord = LocalStore.getAt(0);\r",
                        "var BusinessID = aRecord.get('SelectedBusinessID');\r",
                        "var distance = aRecord.get('distance');\r",
                        "console.log('count of LocalStore is: '+LocalStore.getCount());\r",
                        "console.log('Selected business ID is: ' + BusinessID);\r",
                        "console.log('distance is: ' + distance);\r",
                        "console.log('count of LocalStore is: '+LocalStore.getCount());\r",
                        "\r",
                        "//load main business data\r",
                        "var BusinessStore = Ext.getStore('BusinessStore');\r",
                        "var url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessesByParams.php';\r",
                        "var proxy= BusinessStore.getProxy();\r",
                        "proxy.setUrl(url);\r",
                        "proxy.setExtraParam('id', BusinessID );\r",
                        "proxy.setExtraParam('filtered', \"2\" );//business screen filter\r",
                        "proxy.setExtraParam('sortingBy', \"id\" );\r",
                        "BusinessStore.load({callback: function(records, operation, success) {\r",
                        "    var count = BusinessStore.getCount();\r",
                        "    var data = BusinessStore.getRange();\r",
                        "    console.log('BusinessStore count : ' + count);\r",
                        "    console.log('BusinessStore data : ' + data);\r",
                        "\r",
                        "\r",
                        "    //Load the child tables for business\r",
                        "    //load lines\r",
                        "    var BusinessLinesStore = Ext.getStore('BusinessLinesStore');\r",
                        "    var proxy0= BusinessLinesStore.getProxy();\r",
                        "    url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessLines.php';\r",
                        "    proxy0.setUrl(url);\r",
                        "    proxy0.setExtraParam('id', BusinessID );\r",
                        "    BusinessLinesStore.load({callback: function(records, operation, success) {\r",
                        "        var count = BusinessLinesStore.getCount();\r",
                        "        var data = BusinessLinesStore.getRange();\r",
                        "        console.log('BusinessLinesStore count : ' + count);\r",
                        "        console.log('BusinessLinesStore data : ' + data);\r",
                        "\r",
                        "        //locad photos\r",
                        "        var BusinessPhotosStore = Ext.getStore('BusinessPhotosStore');\r",
                        "        var proxy1= BusinessPhotosStore.getProxy();\r",
                        "        url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessPhotos.php';\r",
                        "        proxy1.setUrl(url);\r",
                        "        proxy1.setExtraParam('id', BusinessID );\r",
                        "        BusinessPhotosStore.load({callback: function(records, operation, success) {\r",
                        "            var count = BusinessPhotosStore.getCount();\r",
                        "            var data = BusinessPhotosStore.getRange();\r",
                        "            console.log('BusinessPhotosStore count : ' + count);\r",
                        "            console.log('BusinessPhotosStore data : ' + data);\r",
                        "\r",
                        "            //load phones\r",
                        "            var BusinessPhonesStore = Ext.getStore('BusinessPhonesStore');\r",
                        "            var proxy2= BusinessPhonesStore.getProxy();\r",
                        "            url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessPhones.php';\r",
                        "            proxy2.setUrl(url);\r",
                        "            proxy2.setExtraParam('id', BusinessID );\r",
                        "            BusinessPhonesStore.load({callback: function(records, operation, success) {\r",
                        "                var count = BusinessPhonesStore.getCount();\r",
                        "                var data = BusinessPhonesStore.getRange();\r",
                        "                console.log('BusinessPhonesStore count : ' + count);\r",
                        "                console.log('BusinessPhonesStore data : ' + data);\r",
                        "\r",
                        "                //load sales\r",
                        "                var BusinessSalesStore = Ext.getStore('BusinessSalesStore');\r",
                        "                var proxy3= BusinessSalesStore.getProxy();\r",
                        "                url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessSales.php';\r",
                        "                proxy3.setUrl(url);\r",
                        "                proxy3.setExtraParam('id', BusinessID );\r",
                        "                BusinessSalesStore.load({callback: function(records, operation, success) {\r",
                        "                    var count = BusinessSalesStore.getCount();\r",
                        "                    var data = BusinessSalesStore.getRange();\r",
                        "                    console.log('BusinessSalesStore count : ' + count);\r",
                        "                    console.log('BusinessSalesStore data : ' + data);\r",
                        "\r",
                        "                    console.log('after init stores');\r",
                        "                    //Ext.app.Application.getApplication().getController('BusinessScreen').InitializeControls(component);\r",
                        "                    //var controler = App.MyApp.getConroller('BusinessScreen');\r",
                        "                    //controler.InitializeControls(component);\r",
                        "\r",
                        "                    //set the badge of the going button\r",
                        "                    var BusinessRecord = BusinessStore.getAt(0);\r",
                        "                    var GoingCounter = BusinessRecord.get('GoingCounter');\r",
                        "                    console.log('GoingCounter:'+GoingCounter);\r",
                        "                    component.down('button[id=goingbtn]').setBadgeText(GoingCounter);\r",
                        "\r",
                        "                    //set the Rating button\r",
                        "                    var LastRatingTime = BusinessRecord.get('LastRatingTime');\r",
                        "                    //console.log(\"LastRatingTime:\"+LastRatingTime);\r",
                        "                    var diff;//the time diff between now and the last rating time by user\r",
                        "                    var now = new Date(); // now\r",
                        "                    if(LastRatingTime)\r",
                        "                    {                       \r",
                        "                        //calculate the diff in minutes since last rating\r",
                        "                        diff= now - LastRatingTime;\r",
                        "                        var sign=diff<0?-1:1;\r",
                        "                        diff/=sign; // or diff=Math.abs(diff);\r",
                        "                        var minutes,milliseconds,seconds;\r",
                        "                        diff=(diff-(milliseconds=diff%1000))/1000;\r",
                        "                        //diff=(diff-(seconds=diff%60))/60;\r",
                        "                        diff=((diff-(minutes=diff%60))/60);\r",
                        "                    }\r",
                        "                    else\r",
                        "                    {\r",
                        "                        diff=99999;//dummy value\t\r",
                        "                    }\r",
                        "\r",
                        "                    //var timediff = parseInt((now - LastRatingTime)/60); \r",
                        "                    var distanceMetter = (distance*1000);\r",
                        "                    console.log(\"time diff:\"+diff+\", LastRatingTime:\"+LastRatingTime+\", now:\"+now+\",  distanceMetter:\"+distanceMetter);\r",
                        "                    //activate the button\r",
                        "                    if(diff>30 && distanceMetter<=25 )\r",
                        "                    {\r",
                        "                        console.log(\"ratebtn enabled\");\r",
                        "                        component.down('button[id=ratebtn]').setDisabled(false);\r",
                        "                    }\r",
                        "                    else\r",
                        "                    {\r",
                        "                        console.log(\"ratebtn disabled\");\r",
                        "                    }\r",
                        "\r",
                        "\t\t\t\t\t\r",
                        "                    //load location store\r",
                        "                    var LocationStore = Ext.getStore('LocationStore');\r",
                        "                    var url = 'http://'+localStorage.serverpath+'/Server-side/GetLocations.php';\r",
                        "                    LocationStore.load({callback: function(records, operation, success) {\r",
                        "                        var count = LocationStore.getCount();\r",
                        "                        var data = LocationStore.getRange();\r",
                        "                        console.log('LocationStore count : ' + count);\r",
                        "                        console.log('LocationStore data : ' + data);\r",
                        "                        \r",
                        "                        \r",
                        "                        //load location store\r",
                        "                        var CategoryStore = Ext.getStore('CategoryStore');\r",
                        "                        var url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessTypes.php';\r",
                        "                        CategoryStore.load({callback: function(records, operation, success) {\r",
                        "                            var count = CategoryStore.getCount();\r",
                        "                            var data = CategoryStore.getRange();\r",
                        "                            console.log('CategoryStore count : ' + count);\r",
                        "                            console.log('CategoryStore data : ' + data);\r",
                        "                            \r",
                        "                        }\r",
                        "                        });\r",
                        "                    }\r",
                        "                    });\r",
                        "                }\r",
                        "            });\r",
                        "        }\r",
                        "    });\r",
                        "}\r",
                        "});\r",
                        "}\r",
                        "});\r",
                        "}\r",
                        "});\r",
                        "\r",
                        ""
                    ],
                    "name": "initialize",
                    "designer|targetType": "Ext.Panel",
                    "designer|controlQuery": "BusinessScreen"
                }
            },
            {
                "type": "controllerref",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "goingbtn",
                    "ref": "goingbtn",
                    "selector": "#goingbtn",
                    "xtype": "Ext.Button"
                }
            },
            {
                "type": "controlleraction",
                "reference": {
                    "name": "listeners",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "ongoingbtnTap",
                    "fn": "ongoingbtnTap",
                    "implHandler": [
                        "var LocalStore = Ext.getStore('LocalStore'); // Shortcut\r",
                        "var aRecord = LocalStore.getAt(0);\r",
                        "var BusinessID = aRecord.get('SelectedBusinessID');\r",
                        "\r",
                        "//load main business data\r",
                        "var GeneralActionStore = Ext.getStore('GeneralActionStore');\r",
                        "var url = 'http://'+localStorage.serverpath+'/Server-side/BusinessesGoing.php';\r",
                        "var proxy= GeneralActionStore.getProxy();\r",
                        "proxy.setUrl(url);\r",
                        "proxy.setExtraParam('BusinessID', BusinessID );\r",
                        "GeneralActionStore.load({callback: function(records, operation, success) {\r",
                        "    var count = GeneralActionStore.getCount();\r",
                        "    var data = GeneralActionStore.getRange();\r",
                        "    console.log('GeneralActionStore count : ' + count);\r",
                        "    console.log('GeneralActionStore data : ' + data);\r",
                        "\r",
                        "    var ResultRecord = LocalStore.getAt(0);\r",
                        "    var Result = ResultRecord.get('result');\r",
                        "    console.log('Result:'+Result);\r",
                        "}\r",
                        "});"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "goingbtn"
                }
            },
            {
                "type": "controllerref",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "homepagebtn",
                    "ref": "homepagebtn",
                    "selector": "#homepagebtn",
                    "xtype": "Ext.Button"
                }
            },
            {
                "type": "controlleraction",
                "reference": {
                    "name": "listeners",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "onhomepagebtnTap",
                    "fn": "onhomepagebtnTap",
                    "implHandler": [
                        "console.log('onhomepagebtnTap');\r",
                        "var LocalStore = Ext.getStore('LocalStore'); // Shortcut\r",
                        "var aRecord = LocalStore.getAt(0);\r",
                        "var BusinessID = aRecord.get('SelectedBusinessID');\r",
                        "\r",
                        "var MethodName ='BusinessClickHomepage';\r",
                        "\r",
                        "//load main business data\r",
                        "var GeneralActionStore = Ext.getStore('GeneralActionStore');\r",
                        "var url = 'http://'+localStorage.serverpath+'/Server-side/BusinessesGeneralAPI.php';\r",
                        "var proxy= GeneralActionStore.getProxy();\r",
                        "proxy.setUrl(url);\r",
                        "proxy.setExtraParam('BusinessID', BusinessID );\r",
                        "proxy.setExtraParam('MethodName', 'BusinessClickHomepage' );\r",
                        "GeneralActionStore.load({callback: function(records, operation, success) {\r",
                        "    //console.log('callback onhomepagebtnTap');\r",
                        "    var count = GeneralActionStore.getCount();\r",
                        "    var data = GeneralActionStore.getRange();\r",
                        "    console.log('GeneralActionStore count : ' + count);\r",
                        "    console.log('GeneralActionStore data : ' + data);\r",
                        "\r",
                        "    var ResultRecord = GeneralActionStore.getAt(0);\r",
                        "    var Result = ResultRecord.get('result');\r",
                        "    console.log('Result:'+Result);\r",
                        "\r",
                        "    //read the HOME PAGE URL\r",
                        "    var BusinessStore = Ext.getStore('BusinessStore');\r",
                        "    var BusinessRecord = BusinessStore.getAt(0);\r",
                        "    var HomePageURL = BusinessRecord.get('HomePageURL');\r",
                        "    console.log('HomePageURL:'+HomePageURL);\r",
                        "\r",
                        "    //launch the browser with the HOME PAGE URL\r",
                        "    if(Ext.os.is.iOS || Ext.os.is.Android)\r",
                        "    {\r",
                        "        Ext.device.Device.openURL(HomePageURL);\r",
                        "    }\r",
                        "    else\r",
                        "    {\r",
                        "        window.open(HomePageURL);\r",
                        "    }\r",
                        "}\r",
                        "});"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "homepagebtn"
                }
            },
            {
                "type": "controllerref",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "ratebtn",
                    "ref": "ratebtn",
                    "selector": "#ratebtn",
                    "xtype": "Ext.Button"
                }
            },
            {
                "type": "controlleraction",
                "reference": {
                    "name": "listeners",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "onratebtnTap",
                    "fn": "onratebtnTap",
                    "implHandler": [
                        "Screen = Ext.create('MyApp.view.UserActivityScreen', {\r",
                        "    id: 'UserActivityScreen'\r",
                        "});\r",
                        "Ext.Viewport.setActiveItem(Screen);"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "ratebtn"
                }
            },
            {
                "type": "basicfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "InitializeControls",
                    "fn": "InitializeControls",
                    "implHandler": [
                        ""
                    ]
                }
            },
            {
                "type": "controllerref",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "RatingUserList",
                    "ref": "RatingUserList",
                    "selector": "#RatingUserList",
                    "xtype": "list"
                }
            },
            {
                "type": "controlleraction",
                "reference": {
                    "name": "listeners",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "onRatingUserListInitialize",
                    "fn": "onRatingUserListInitialize",
                    "implHandler": [
                        "console.log('onRatingUserListInitialize');\r",
                        "\r",
                        "var LocalStore = Ext.getStore('LocalStore'); // Shortcut\r",
                        "var aRecord = LocalStore.getAt(0);\r",
                        "var BusinessID = aRecord.get('SelectedBusinessID');\r",
                        "\r",
                        "//var list = this.getRatingUserList();\r",
                        "var list = component;\r",
                        "var url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessUsers.php?id='+BusinessID;\r",
                        "console.log(url);\r",
                        "list.getStore().getProxy().setUrl(url);\r",
                        "list.getStore().load({callback: function(records, operation, success) {\r",
                        "    list.setMasked(false);\r",
                        "    console.log('MASK IS REMOVED!!');\r",
                        "    var count = list.getStore().getCount();\r",
                        "    var data = list.getStore().getRange();\r",
                        "    console.log('RatingUserList count : ' + count);\r",
                        "    console.log('RatingUserList data : ' + data);\r",
                        "    list.refresh();\r",
                        "    //list.show();\r",
                        "}\r",
                        "});"
                    ],
                    "name": "initialize",
                    "designer|targetType": "Ext.dataview.List",
                    "designer|controlQuery": "RatingUserList"
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {}
}