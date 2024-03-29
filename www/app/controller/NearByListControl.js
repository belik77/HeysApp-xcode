/*
 * File: app/controller/NearByListControl.js
 *
 * This file was generated by Sencha Architect version 2.2.3.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.1.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.1.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('MyApp.controller.NearByListControl', {
    extend: 'Ext.app.Controller',

    config: {
        refs: {
            NearByList: {
                autoCreate: true,
                selector: '#NearByList',
                xtype: 'list'
            }
        },

        control: {
            "NearByList": {
                initialize: 'onNearByListInitialize',
                select: 'onNearByListSelect'
            }
        }
    },

    onNearByListInitialize: function(component, eOpts) {
        console.log('onNearByListInitialize');
        //var MyNearByStore = Ext.getStore('MyApp.store.NearByStore');

        var longitude;
        var latitude;


        this.FindCurrentLocation(function(longitude,latitude){

            console.log('Found position in Where Are You screen: Lat<'+latitude+'>, Lon<'+longitude+'>');
            //var list = Ext.getCmp('#NearByList');
            var controller = MyApp.app.getController( 'MyApp.controller.NearByListControl');
            var list = controller.getNearByList();


            //var BusinessStore= Ext.create('MyApp.store.BusinessStore');
            //list.setStore(BusinessStore);
            //var list2 = Ext.getCmp('NearByList');
            var url = 'http://'+localStorage.serverpath+'/Server-side/GetBusinessesByParams.php?longitude='+longitude+'&latitude='+latitude+'&filtered=0&sortingBy=distance&user_id='+localStorage.user_id;
            console.log(url);
            list.getStore().getProxy().setUrl(url);
            list.getStore().load({callback: function(records, operation, success) {
                list.setMasked(false);
                console.log('MASK IS REMOVED!!');
                var count = list.getStore().getCount();
                var data = list.getStore().getRange();
                console.log('BusinessStoreNearByScreen count : ' + count);
                console.log('BusinessStoreNearByScreen data : ' + data);
                list.refresh();
                //list.show();
            }
        });
    });





    },

    onNearByListSelect: function(dataview, record, eOpts) {
        //Ext.Msg.alert('Selected!', 'You selected ' + record.get('id'));
        var Screen;

        //console.log(record.get('id'));
        var ScreenSelector;
        var view;
        var id;


        //Hide the "Where are you" screen
        var LocScreen = Ext.ComponentQuery.query('#MyLocScreen');

        if(LocScreen.length===0)//no
        {
            LocScreen = Ext.create('MyApp.view.MyLocScreen', {
                id: 'MyLocScreen'
            });

            LocScreen.destroy();
        }
        else
        {
            LocScreen[0].destroy();
        }
        //identify the desired screen.
        //we go to the rating screen
        if(record.get('business_id')>0)
        {
            ScreenSelector = '#RatePlaceScreen';
            view='MyApp.view.RatePlaceScreen';
            id='RatePlaceScreen';

            Screen = Ext.ComponentQuery.query(ScreenSelector);

            if(Screen.length===0)//not  exists yet
            {
                Screen = Ext.create(view, {
                    id: id
                });

                Screen.business_id = record.get('business_id');

                Ext.Viewport.setActiveItem(Screen);
            }
            else
            {
                Screen[0].business_id = record.get('business_id');
                Ext.Viewport.setActiveItem(Screen[0]);
            }
            /*Screen = Ext.create('MyApp.view.RatingScreen', {
            id: 'RatingScreen'
            });*/
        }
        /*else//we go to the search screen
        {
        ScreenSelector = '#SearchScreen';
        view='MyApp.view.SearchScreen';
        id='SearchScreen';
        }*/






    },

    FindCurrentLocation: function(callback) {
        console.log('FindCurrentLocation');
        var longitude;
        var latitude;
        var def_longitude = '35.208156'; 
        var def_latitude = '31.751343';

        if(Ext.os.is.iOS || Ext.os.is.Android)
        {
            console.log('Ext.os.is.iOS || Ext.os.is.Android');
            Ext.device.Geolocation.getCurrentPosition({
                scope: this,
                enableHighAccuracy: false,
                timeout: 10000,
                maximumAge: 10000,
                success: function(position) {
                    //this.setMasked(false);
                    //this.map.setMapCenter(position.coords);                
                    latitude = position.coords.latitude;
                    longitude = position.coords.longitude;   
                    console.log("Geolocation: succeed to identify the location: lat:"+latitude+" ,lon"+longitude);
                    callback(longitude,latitude);
                },
                failure: function() {
                    //this.setMasked(false);
                    console.log("Geolocation: Cannot identify your location");
                    //define default.
                    longitude = def_longitude;
                    latitude = def_latitude;
                    /*Ext.device.Notification.show({
                    title: 'Geolocation',
                    message: 'Cannot identify your location. please make sure the GPS is turned-on',
                    buttons: Ext.MessageBox.OK,
                    callback: function(button) {
                    if (button == "ok") {
                    console.log('Geolocation: user click ok');
                    }
                    }
                    });*/
                    callback(longitude,latitude);
                }
            });

            //console.log("Geolocation: Cannot identify the location");
            //define default.
            //longitude = def_longitude;
            //latitude = def_latitude;
        }
        /*else if (Ext.os.is.Windows || Ext.os.is.Windows.MacOS)
        {
        console.log('os win!!');
        longitude = '35.187128';
        latitude = '31.788777';
        }*/
        else if (navigator.geolocation)
        {
            console.log('os win!!');

            var options = {
                timeout: 10000,
                maximumAge: 20000,
                enableHighAccuracy: true
            };


            /* navigator.geolocation.getCurrentPosition(function(pos){
            latitude = pos.coords.latitude;
            longitude = pos.coords.longitude;  
            console.log(latitude); //this works
            console.log(longitude); //this works
            }, function(){
            console.log('failed');
            latitude = '0';
            longitude = '0';
            }, options);*/

            longitude = def_longitude;
            latitude = def_latitude;
        }
        else
        {
            console.log('default location');
            longitude = def_longitude;
            latitude = def_latitude; 
        }

        callback(longitude,latitude);
    }

});