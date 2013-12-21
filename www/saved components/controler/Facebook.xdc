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
            "designer|userClassName": "Facebook"
        },
        "cn": [
            {
                "type": "fixedfunction",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "init",
                    "fn": "init",
                    "designer|params": [
                        "application"
                    ],
                    "implHandler": [
                        "//this method, catch response from facebook and decide what to do\r",
                        "WL.Facebook.on({\r",
                        "    exception: function() {\r",
                        "        //Ext.create('WL.view.Dialog', { msg: 'The connection to Facebook has timed out' }).show();\r",
                        "        console.log('The connection to Facebook has timed out');\r",
                        "    },\r",
                        "    loginStatus: function() {\r",
                        "        console.log(FB.getUserID());\r",
                        "        console.log('fb loginStatus fired');                \r",
                        "        FB.getLoginStatus(function(response) {\r",
                        "            if (response.status === 'connected') {\r",
                        "                // the user is logged in and has authenticated your\r",
                        "                // app, and response.authResponse supplies\r",
                        "                // the user's ID, a valid access token, a signed\r",
                        "                // request, and the time the access token \r",
                        "                // and signed request each expire\r",
                        "                var uid = response.authResponse.userID;\r",
                        "                var accessToken = response.authResponse.accessToken;\r",
                        "                console.log('fb getLoginStatus connected');\r",
                        "                //this.SubmitLoginForm(\"1\");\r",
                        "                //console.log('SubmitLoginForm');\r",
                        "                //var form = button.up('formpanel');\r",
                        "                var form = Ext.getCmp('loginformpanel');\r",
                        "                if(!form)\r",
                        "                {\r",
                        "                    form = Ext.create(MyApp.view.loginformpanel);\r",
                        "                }\r",
                        "                //var form = Ext.ComponentQuery.query(\"loginformpanel\");\r",
                        "\r",
                        "                var pwd = \"1234\";//default password to all facebook users\r",
                        "\r",
                        "                //alert(pwd);\r",
                        "                var hash_pwd = hex_sha512(pwd);\r",
                        "                //alert(hash_pwd);\r",
                        "\r",
                        "                //read the FB user info to obtain his name, email etc.. and save it when register the user\r",
                        "                FB.api('/me', function(userInfo) {                    \r",
                        "                    console.log(userInfo.name + ': ' + userInfo.email);\r",
                        "\r",
                        "                    //set the hidden fields and email for the form\r",
                        "                    form.setValues({\r",
                        "                        hashpassword: hash_pwd,\r",
                        "                        bfacebook: 1,\r",
                        "                        bregister: 0,\r",
                        "                        email: userInfo.email\r",
                        "                    });\r",
                        "\r",
                        "                    console.log(localStorage.serverpath);\r",
                        "                    form.submit({\r",
                        "                        url: 'http://'+localStorage.serverpath+'/Server-side/process_login.php',\r",
                        "                        method: 'POST',\r",
                        "                        success: function(form, result) {\r",
                        "                            //var jsonoutput = Ext.decode(result);  // json parsing\r",
                        "                            console.log('form submitted successfully!');\r",
                        "                            var LocScreen = Ext.create('MyApp.view.MyLocScreen', {\r",
                        "                                id: 'MyLocScreen'\r",
                        "                            });\r",
                        "\r",
                        "                            Ext.Viewport.setActiveItem(LocScreen);\r",
                        "                        },\r",
                        "                        failure: function(form, result) {\r",
                        "                            //var jsonoutput = Ext.decode(result);  // json parsing\r",
                        "                            //Ext.Msg.alert('Login Error', 'Login failed using your FB account. please try again');\r",
                        "\t\t\t\t\t\t\tconsole.log('form submitted error!, result:'+result);\r",
                        "                            var Screen = Ext.create('MyApp.view.loginformpanel', {\r",
                        "                                id: 'loginformpanel'\r",
                        "                            });\r",
                        "\r",
                        "                            Ext.Viewport.setActiveItem(Screen);\r",
                        "                        }\r",
                        "                    });\r",
                        "                });\r",
                        "                //console.log(\"email of fb user:\"+email);\r",
                        "                /*  FB.login(function(response) {*/\r",
                        "                /*if (response.authResponse){\r",
                        "                console.log(response.name + ': ' + response.email);\r",
                        "                } else {\r",
                        "                console.log('Auth cancelled.');\r",
                        "                }*/\r",
                        "                /* }, { scope: 'email' });*/\r",
                        "\r",
                        "                /*FB.api('/me', function(response) {\r",
                        "                var html = '<table>';\r",
                        "                for (var key in response) {\r",
                        "                html += (\r",
                        "                key + ':' +\r",
                        "                response[key] + ', '\r",
                        "                );\r",
                        "                }\r",
                        "                console.log(html);\r",
                        "                });*/\r",
                        "\r",
                        "\r",
                        "            } else if (response.status === 'not_authorized') {\r",
                        "                // the user is logged in to Facebook, \r",
                        "                // but has not authenticated your app\r",
                        "                console.log('fb getLoginStatus not_authorized');\r",
                        "                /*var Screen = Ext.create('MyApp.view.loginformpanel', {\r",
                        "                id: 'loginformpanel'\r",
                        "                });\r",
                        "\r",
                        "                Ext.Viewport.setActiveItem(Screen);*/\r",
                        "            } else {\r",
                        "                // the user isn't logged in to Facebook.\r",
                        "                console.log('fb getLoginStatus - the user isnt logged in to Facebook');\r",
                        "            }\r",
                        "        });\r",
                        "    },\r",
                        "    connected: function() {\r",
                        "        console.log('fb connected');\r",
                        "\r",
                        "        //Ext.get('loading').destroy();\r",
                        "    },\r",
                        "    unauthorized: function() {\r",
                        "        console.log('fb unauthorized');\r",
                        "        //Ext.Msg.alert('Login Error', 'Failed to Login with Facebook - unauthorized');\r",
                        "        //Ext.get('loading').destroy();\r",
                        "        /* var Screen = Ext.create('MyApp.view.loginformpanel', {\r",
                        "        id: 'loginformpanel'\r",
                        "        });\r",
                        "\r",
                        "        Ext.Viewport.setActiveItem(Screen);*/\r",
                        "    },\r",
                        "    logout: function() {\r",
                        "        console.log('fb logout');\r",
                        "        //Ext.get('loading').destroy();\r",
                        "        /*var Screen = Ext.create('MyApp.view.loginformpanel', {\r",
                        "        id: 'loginformpanel'\r",
                        "        });\r",
                        "\r",
                        "        Ext.Viewport.setActiveItem(Screen);*/\r",
                        "    }\r",
                        "});"
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
                    "designer|userClassName": "reglogin",
                    "ref": "reglogin",
                    "selector": "#reglogin",
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
                    "designer|userClassName": "onregloginTap",
                    "fn": "onregloginTap",
                    "implHandler": [
                        "\r",
                        "//regular login from login screen\r",
                        "this.SubmitLoginForm(\"0\",\"0\");\r",
                        ""
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "reglogin"
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
                    "designer|userClassName": "SubmitLoginForm",
                    "fn": "SubmitLoginForm",
                    "designer|params": [
                        "bfacebook",
                        "bregister"
                    ],
                    "implHandler": [
                        "//this function submit logins and also register users.\r",
                        "//it distinguish between fb login and regular login\r",
                        "console.log('SubmitLoginForm');\r",
                        "//var form = button.up('formpanel');\r",
                        "var form = Ext.getCmp('loginformpanel');\r",
                        "\r",
                        "var pwd;\r",
                        "if(bfacebook==\"0\")\r",
                        "{\r",
                        "    if(bregister==\"0\")\r",
                        "    pwd = Ext.getCmp('password1').getValue();\r",
                        "    else\r",
                        "    pwd = Ext.getCmp('password').getValue();\r",
                        "}\r",
                        "else\r",
                        "{\r",
                        "    pwd = \"1234\";//default password to all facebook users\r",
                        "}\r",
                        "\r",
                        "//alert(pwd);\r",
                        "var hash_pwd = hex_sha512(pwd);\r",
                        "//alert(hash_pwd);\r",
                        "\r",
                        "//console.log(\"bfacebook:\"+bfacebook+\"bregister:\"+bregister+\"pwd:\"+pwd);\r",
                        "\r",
                        "form.setValues({\r",
                        "    hashpassword: hash_pwd,\r",
                        "    bfacebook: bfacebook,\r",
                        "    bregister: bregister\r",
                        "});\r",
                        "\r",
                        "console.log(localStorage.serverpath);\r",
                        "form.submit({\r",
                        "    url: 'http://'+localStorage.serverpath+'/Server-side/process_login.php',\r",
                        "    method: 'POST',\r",
                        "    success: function(form, result) {\r",
                        "        //var jsonoutput = Ext.decode(result);  // json parsing\r",
                        "        //alert('form submitted successfully!');\r",
                        "        console.log('form submit success');\r",
                        "        var LocScreen = Ext.create('MyApp.view.MyLocScreen', {\r",
                        "            id: 'MyLocScreen'\r",
                        "        });\r",
                        "\r",
                        "        Ext.Viewport.setActiveItem(LocScreen);\r",
                        "    },\r",
                        "    failure: function(form, result) {\r",
                        "        //var jsonoutput = Ext.decode(result);  // json parsing\r",
                        "        console.log('form submit failed, result:'+result);\r",
                        "        //alert('form submitted failed!');\r",
                        "        Ext.Msg.alert('Login Error', 'Please enter valid email and password');\r",
                        "    }\r",
                        "});"
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
                    "designer|userClassName": "fbloginbtn",
                    "ref": "fbloginbtn",
                    "selector": "#fbloginbtn",
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
                    "designer|userClassName": "onfbloginbtnTap",
                    "fn": "onfbloginbtnTap",
                    "implHandler": [
                        "//FB login from first screen\r",
                        "window.top.location = WL.Facebook.redirectUrl();"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "fbloginbtn"
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
                    "designer|userClassName": "nofbbtn",
                    "ref": "nofbbtn",
                    "selector": "#nofbbtn",
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
                    "designer|userClassName": "onnofbbtnTap",
                    "fn": "onnofbbtnTap",
                    "implHandler": [
                        "\r",
                        "//check if the screen was loaded already before\r",
                        "var Screen = Ext.ComponentQuery.query('#loginformpanel');\r",
                        "\r",
                        "if(Screen.length===0)//no\r",
                        "{\r",
                        "    console.log('no fb button tap');\r",
                        "    Screen = Ext.create('MyApp.view.loginformpanel', {\r",
                        "        id: 'loginformpanel'\r",
                        "    });\r",
                        "    \r",
                        "    Ext.Viewport.setActiveItem(Screen);\r",
                        "}\r",
                        "else\r",
                        "{\r",
                        "\tExt.Viewport.setActiveItem(Screen[0]);\r",
                        "}\r",
                        ""
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "nofbbtn"
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
                    "designer|userClassName": "fbloginbtn1",
                    "ref": "fbloginbtn1",
                    "selector": "#fbloginbtn1",
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
                    "designer|userClassName": "onfbloginbtn1Tap",
                    "fn": "onfbloginbtn1Tap",
                    "implHandler": [
                        "//FB login from login screen\r",
                        "window.top.location = WL.Facebook.redirectUrl();"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "fbloginbtn1"
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
                    "designer|userClassName": "regbtn",
                    "ref": "regbtn",
                    "selector": "#regbtn",
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
                    "designer|userClassName": "onregbtnTap",
                    "fn": "onregbtnTap",
                    "implHandler": [
                        "//user try to register a new user, not FB.\r",
                        "this.SubmitLoginForm(\"0\",\"1\");"
                    ],
                    "name": "tap",
                    "designer|targetType": "Ext.Button",
                    "designer|controlQuery": "regbtn"
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
                    "designer|userClassName": "loginbackbtn",
                    "ref": "loginbackbtn",
                    "selector": "#loginbackbtn",
                    "xtype": "Ext.Button"
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {}
}