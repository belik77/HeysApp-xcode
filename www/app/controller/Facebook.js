/*
 * File: app/controller/Facebook.js
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

Ext.define('MyApp.controller.Facebook', {
    extend: 'Ext.app.Controller',

    config: {
        refs: {
            reglogin: {
                selector: '#reglogin',
                xtype: 'Ext.Button'
            },
            fbloginbtn: {
                selector: '#fbloginbtn',
                xtype: 'Ext.Button'
            },
            nofbbtn: {
                selector: '#nofbbtn',
                xtype: 'Ext.Button'
            },
            fbloginbtn1: {
                selector: '#fbloginbtn1',
                xtype: 'Ext.Button'
            },
            regbtn: {
                selector: '#regbtn',
                xtype: 'Ext.Button'
            },
            loginbackbtn: {
                selector: '#loginbackbtn',
                xtype: 'Ext.Button'
            },
            fbloginpanel: {
                selector: '#fbloginpanel',
                xtype: 'Ext.Panel'
            },
            loginformpanel: {
                selector: '#loginformpanel',
                xtype: 'Ext.Panel'
            },
            signmanagerbtn: {
                selector: '#signmanagerbtn',
                xtype: 'Ext.Button'
            }
        },

        control: {
            "reglogin": {
                tap: 'onregloginTap'
            },
            "fbloginbtn": {
                tap: 'onfbloginbtnTap'
            },
            "nofbbtn": {
                tap: 'onnofbbtnTap'
            },
            "fbloginbtn1": {
                tap: 'onfbloginbtn1Tap'
            },
            "regbtn": {
                tap: 'onregbtnTap'
            },
            "fbloginpanel": {
                initialize: 'onfbloginpanelInitialize'
            },
            "signmanagerbtn": {
                tap: 'onsignmanagerbtnTap'
            }
        }
    },

    onregloginTap: function(button, e, eOpts) {


        var form = Ext.getCmp('loginformpanel');
        email = Ext.getCmp('email1').getValue();

        //verify the email format
        if(this.verifyEmail(email)===true)
        {
            //regular login from login screen
            this.SubmitLoginForm("0","0");
        }
        else
        {
            Ext.Msg.show({
                title:'אנא הכנס כתובת מייל תקינה',
                buttons: Ext.Msg.YES,
                animEl: 'elId'
            });
        }
    },

    onfbloginbtnTap: function(button, e, eOpts) {
        //FB login from first screen
        console.log('onfbloginbtnTap');
        console.log('isOnline:'+Ext.device.Connection.isOnline());

        //test for facebook login
        this.CheckFBandLogin();
    },

    onnofbbtnTap: function(button, e, eOpts) {
        console.log('no fb button tap');
        //check if the screen was loaded already before
        var Screen = Ext.ComponentQuery.query('#loginformpanel');

        if(Screen.length===0)//no
        {
            Screen = Ext.create('MyApp.view.loginformpanel', {
                id: 'loginformpanel'
            });

            Ext.Viewport.setActiveItem(Screen);
        }
        else
        {
            Ext.Viewport.setActiveItem(Screen[0]);
        }

    },

    onfbloginbtn1Tap: function(button, e, eOpts) {
        //FB login from login screen
        //if no connected to the net, alert the user
        console.log('onfbloginbtn1Tap');
        console.log('isOnline:'+Ext.device.Connection.isOnline());
        if((Ext.os.is.iOS || Ext.os.is.Android) && !Ext.device.Connection.isOnline())
        {
            console.log('connection type = '+Ext.device.Connection.getType()+', isOnline = '+Ext.device.Connection.isOnline());
            Ext.Msg.show({
                title:'אין חיבור לאינטרנט',
                buttons: Ext.Msg.YES,
                animEl: 'elId'
            });
        }
        else
        window.top.location = WL.Facebook.redirectUrl();
        //Android.onFBLogin();
    },

    onregbtnTap: function(button, e, eOpts) {

        var form = Ext.getCmp('loginformpanel');
        email = Ext.getCmp('email').getValue();

        //verify the email format
        if(this.verifyEmail(email)===true)
        {
            //user try to register a new user, not FB.
            this.SubmitLoginForm("0","1");
        }
        else
        {
            Ext.Msg.show({
                title:'אנא הכנס כתובת מייל תקינה',
                buttons: Ext.Msg.YES,
                animEl: 'elId'
            });
        }
    },

    onfbloginpanelInitialize: function(component, eOpts) {
        console.log('onfbloginpanelInitialize');

        /*else
        {
        var Screen1 = Ext.ComponentQuery.query('#fbloginpanel');

        WL.Facebook.initialize('204911179670306');

        if(Screen1.length>0)
        {
        Screen1[0].setMasked({
        xtype: 'loadmask',
        message: 'Loading...'
        });
        }
        }*/

    },

    onsignmanagerbtnTap: function(button, e, eOpts) {
        console.log('onsignmanagerbtnTap- contact from login screen');

        //check if the screen was loaded already before
        var Screen = Ext.ComponentQuery.query('#ContactScreen');

        if(Screen.length===0)//no
        {
            Screen = Ext.create('MyApp.view.ContactScreen', {
                id: 'ContactScreen'
            });

            Screen.bshowMyLocScreen=true;
            Ext.Viewport.setActiveItem(Screen);



        }
        else
        {
            Screen[0].bshowMyLocScreen=true;
            Ext.Viewport.setActiveItem(Screen[0]);
        }
    },

    init: function(application) {

    },

    SubmitLoginForm: function(bfacebook, bregister) {
        //this function submit logins and also register users.
        //it distinguish between fb login and regular login
        console.log('SubmitLoginForm');
        //var form = button.up('formpanel');
        var form = Ext.getCmp('loginformpanel');

        var pwd,email;
        //if(bfacebook=="0")
        //{
        if(bregister=="0")
        {
            pwd = Ext.getCmp('password1').getValue();
            email = Ext.getCmp('email1').getValue();
        }
        else
        {
            pwd = Ext.getCmp('password').getValue();
            email = Ext.getCmp('email').getValue();
        }
        //}
        if(bfacebook=="1")
        {
            pwd = "1234";//default password to all facebook users
        }

        //cach the email and password values
        localStorage.biluimemail = email;
        localStorage.biluimpwd = pwd;
        localStorage.biluimfb = bfacebook;

        //alert(pwd)
        var hash_pwd = hex_sha512(pwd);
        //alert(hash_pwd);

        //console.log("bfacebook:"+bfacebook+"bregister:"+bregister+"pwd:"+pwd);

        form.setValues({
            hashpassword: hash_pwd,
            bfacebook: bfacebook,
            bregister: bregister,
            email:email
        });

        console.log(localStorage.serverpath);
        form.submit({
            url: 'http://'+localStorage.serverpath+'/Server-side/process_login.php',
            method: 'POST',
            success: function(form, result) {
                //var jsonoutput = Ext.decode(result);  // json parsing
                //alert('form submitted successfully!');
                console.log('form submit success');

                localStorage.user_id = result.userid;
                //load the user data
                var controller = MyApp.app.getController( 'MyApp.controller.Facebook');
                //  controller.LoadUserData(function(){
                //check if the screen was loaded already before
                var Screen = Ext.ComponentQuery.query('#SearchScreen');

                if(Screen.length===0)//no
                {
                    Screen = Ext.create('MyApp.view.SearchScreen', {
                        id: 'SearchScreen'
                    });

                    Screen.bshowMyLocScreen=true;
                    Ext.Viewport.setActiveItem(Screen);



                }
                else
                {
                    Screen[0].bshowMyLocScreen=true;
                    Ext.Viewport.setActiveItem(Screen[0]);
                }
                // });

            },
            failure: function(form, result) {
                //var jsonoutput = Ext.decode(result);  // json parsing
                console.log('form submit failed, result:'+result);
                //alert('form submitted failed!');
                Ext.Msg.alert('Login Error', 'Please enter valid email and password');
            }
        });
    },

    LaunchLocateScreen: function() {
        console.log("LaunchLocateScreen function called");
        var Screen = Ext.ComponentQuery.query('#SearchScreen');

        if(Screen.length===0)//no
        {
            Screen = Ext.create('MyApp.view.SearchScreen', {
                id: 'SearchScreen'
            });

            Ext.Viewport.setActiveItem(Screen);
        }
        else
        {
            Ext.Viewport.setActiveItem(Screen[0]);
        }
    },

    login_check: function(callback) {
        console.log("login_check");
        //check if the user is logged-in
        var GeneralActionStore = Ext.getStore('GeneralActionStore');
        var url = 'http://'+localStorage.serverpath+'/Server-side/login_check.php';
        var proxy= GeneralActionStore.getProxy();
        proxy.setUrl(url);
        console.log(url);
        GeneralActionStore.load({callback: function(records, operation, success) {

            /* if(records.length>0)
            {
            var ResultRecord = GeneralActionStore.getAt(0);
            var result = ResultRecord.get('result');
            console.log('Result:'+result);
            }
            else
            {
            result="false";
            }*/

            callback(success);
        }
    });
    },

    AutoLoginUser: function() {
        //check if there is already loggin user
        var controller = MyApp.app.getController( 'MyApp.controller.Facebook');
        controller.login_check(function(result){
            console.log("login_check returned:"+result);
            if(result===true)
            {
                //check if the screen was loaded already before
                var Screen = Ext.ComponentQuery.query('#SearchScreen');

                if(Screen.length===0)//no
                {
                    Screen = Ext.create('MyApp.view.SearchScreen', {
                        id: 'SearchScreen'
                    });

                    Ext.Viewport.setActiveItem(Screen);
                }
                else
                {
                    Ext.Viewport.setActiveItem(Screen[0]);
                }
            }

            //drop the mask
            var Screen1 = Ext.ComponentQuery.query('#fbloginpanel');
            if(Screen1.length>0)
            {
                Screen1[0].setMasked(false);  
            }

        });
    },

    verifyEmail: function(email) {
        var status = false;     

        var emailRegEx = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;

        if (email.search(emailRegEx) == -1) {

            console.log("Please enter a valid email address.");

        }

        else

        {

            status = true;

        }



        return status;
    },

    LoadUserData: function(callback) {
        console.log('LoadUserData');
        var UserStore = Ext.getStore('UserStore');
        var url = 'http://'+localStorage.serverpath+'/Server-side/GetUserData.php?user_id='+localStorage.user_id;
        console.log(url);
        var proxy= UserStore.getProxy();
        proxy.setUrl(url);
        UserStore.load({callback: function(records, operation, success) {
            var count = UserStore.getCount();
            console.log('UserStore count : ' + count);

            callback();
        }
    });
    },

    CheckFBandLogin: function() {
        console.log("CheckFBandLogin");

        //test for facebook login
        FB.login(
        function(response) {
            /*if (response.session) {
            alert(JSON.stringify(response));
            } else {
            alert(JSON.stringify(response));
            }*/
            if (response.status === 'connected') {
                // the user is logged in and has authenticated your
                // app, and response.authResponse supplies
                // the user's ID, a valid access token, a signed
                // request, and the time the access token
                // and signed request each expire
                var uid = response.authResponse.userID;
                var accessToken = response.authResponse.accessToken;
                console.log('fb getLoginStatus connected');


                var Screen = Ext.ComponentQuery.query('#loginformpanel');
                var loginScreen;

                if(Screen.length===0)//no
                {
                    Screen = Ext.create('MyApp.view.loginformpanel', {
                        id: 'loginformpanel', height: '0', width: '0'
                    });

                    loginScreen = Screen;


                }
                else
                {
                    loginScreen = Screen[0];
                }

                var pwd = "1234";//default password to all facebook users


                //read the FB user info to obtain his name, email etc.. and save it when register the user
                FB.api('/me', function(userInfo) {
                    console.log(userInfo.name + ': ' + userInfo.email);


                    //set the form values and submit
                    loginScreen.down('emailfield[id=email1]').setValue(userInfo.email);
                    loginScreen.down('passwordfield[id=password1]').setValue(pwd);
                    var controller = MyApp.app.getController( 'MyApp.controller.Facebook');
                    controller.SubmitLoginForm("1","0");


                });

            } else if (response.status === 'not_authorized') {
                // the user is logged in to Facebook,
                // but has not authenticated your app
                console.log('fb getLoginStatus not_authorized');

            } else {
                // the user isn't logged in to Facebook.
                console.log('fb getLoginStatus - the user isnt logged in to Facebook');
            }
        },
        { scope: "email" }
        );
    }

});