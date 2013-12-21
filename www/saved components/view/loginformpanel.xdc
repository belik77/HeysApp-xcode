{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.form.Panel",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "baseCls": "fbloginpanel",
            "cls": [
                "fblogin"
            ],
            "id": "loginformpanel",
            "itemId": "loginformpanel",
            "ui": null,
            "designer|userClassName": "loginformpanel",
            "layout": "vbox",
            "scrollable": "vertical"
        },
        "cn": [
            {
                "type": "Ext.Container",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "cls": [
                        "fblogin"
                    ],
                    "designer|userClassName": "MyContainer6",
                    "layout": "vbox"
                },
                "cn": [
                    {
                        "type": "Ext.Container",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "layout|flex": 1,
                            "cls": [
                                "wholepageRelative"
                            ],
                            "designer|userClassName": "MyContainer10"
                        }
                    },
                    {
                        "type": "Ext.Container",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "layout|flex": 8,
                            "cls": [
                                "wholepageRelative"
                            ],
                            "height": null,
                            "designer|userClassName": "MyContainer11",
                            "defaults": null,
                            "layout": "vbox"
                        },
                        "cn": [
                            {
                                "type": "Ext.Container",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "layout|flex": 3,
                                    "docked": "top",
                                    "designer|userClassName": "MyContainer10",
                                    "layout": "vbox"
                                },
                                "cn": [
                                    {
                                        "type": "Ext.form.FieldSet",
                                        "reference": {
                                            "name": "items",
                                            "type": "array"
                                        },
                                        "codeClass": null,
                                        "userConfig": {
                                            "layout|flex": 2,
                                            "cls": [
                                                "loginmargin",
                                                "boldfonts"
                                            ],
                                            "docked": "top",
                                            "designer|userClassName": "existsusercerdanials",
                                            "designer|userAlias": "existsusercerdanials",
                                            "title": "Existing User"
                                        },
                                        "cn": [
                                            {
                                                "type": "Ext.field.Email",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "id": "email1",
                                                    "itemId": "email1",
                                                    "designer|userClassName": "MyEmailField1",
                                                    "label": null,
                                                    "name": "email1",
                                                    "placeHolder": "Email"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Password",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "id": "password1",
                                                    "itemId": "password1",
                                                    "designer|userClassName": "MyPasswordField",
                                                    "label": null,
                                                    "name": "password1",
                                                    "placeHolder": "Password"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "type": "Ext.Button",
                                        "reference": {
                                            "name": "items",
                                            "type": "array"
                                        },
                                        "codeClass": null,
                                        "userConfig": {
                                            "layout|flex": 1,
                                            "cls": [
                                                "SignRegbutton",
                                                "loginmargin"
                                            ],
                                            "docked": "bottom",
                                            "id": "reglogin",
                                            "itemId": "reglogin",
                                            "ui": "round",
                                            "designer|userClassName": "MyButton",
                                            "icon": "",
                                            "scope": [
                                                "this\r",
                                                ""
                                            ],
                                            "text": "Login"
                                        }
                                    }
                                ]
                            },
                            {
                                "type": "Ext.Container",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "layout|flex": 4,
                                    "docked": "top",
                                    "designer|userClassName": "MyContainer9",
                                    "layout": "vbox"
                                },
                                "cn": [
                                    {
                                        "type": "Ext.form.FieldSet",
                                        "reference": {
                                            "name": "items",
                                            "type": "array"
                                        },
                                        "codeClass": null,
                                        "userConfig": {
                                            "layout|flex": 2,
                                            "cls": [
                                                "loginmargin",
                                                "boldfonts"
                                            ],
                                            "docked": "top",
                                            "designer|userClassName": "MyFieldSet",
                                            "layout": "vbox",
                                            "title": "New User"
                                        },
                                        "cn": [
                                            {
                                                "type": "Ext.field.Text",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "id": "username",
                                                    "itemId": "username",
                                                    "designer|userClassName": "MyTextField1",
                                                    "label": null,
                                                    "name": "username",
                                                    "placeHolder": "Username"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Password",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "id": "password",
                                                    "itemId": "password",
                                                    "designer|userClassName": "MyPasswordField",
                                                    "label": null,
                                                    "name": "password",
                                                    "placeHolder": "Password"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Email",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "id": "email",
                                                    "itemId": "email",
                                                    "designer|userClassName": "MyEmailField1",
                                                    "label": null,
                                                    "name": "email",
                                                    "placeHolder": "Email"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Password",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "hidden": true,
                                                    "id": "hashpassword",
                                                    "itemId": "hashpassword",
                                                    "designer|userClassName": "MyPasswordField",
                                                    "label": "ססמא",
                                                    "name": "hashpassword"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Number",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "hidden": true,
                                                    "designer|userClassName": "MyNumberField",
                                                    "label": "Field",
                                                    "name": "bfacebook"
                                                }
                                            },
                                            {
                                                "type": "Ext.field.Number",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "hidden": true,
                                                    "designer|userClassName": "MyNumberField",
                                                    "label": "Field",
                                                    "name": "bregister"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "type": "Ext.Container",
                                        "reference": {
                                            "name": "items",
                                            "type": "array"
                                        },
                                        "codeClass": null,
                                        "userConfig": {
                                            "layout|flex": 1,
                                            "docked": "top",
                                            "height": 50,
                                            "designer|userClassName": "MyContainer12"
                                        },
                                        "cn": [
                                            {
                                                "type": "Ext.Button",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "cls": [
                                                        "SignRegbutton",
                                                        "loginmargin"
                                                    ],
                                                    "docked": "bottom",
                                                    "id": "regbtn",
                                                    "itemId": "regbtn",
                                                    "ui": "round",
                                                    "designer|userClassName": "MyButton",
                                                    "icon": "",
                                                    "scope": [
                                                        "this\r",
                                                        ""
                                                    ],
                                                    "text": "Register"
                                                }
                                            }
                                        ]
                                    },
                                    {
                                        "type": "Ext.Container",
                                        "reference": {
                                            "name": "items",
                                            "type": "array"
                                        },
                                        "codeClass": null,
                                        "userConfig": {
                                            "layout|flex": 1,
                                            "docked": "bottom",
                                            "height": 50,
                                            "designer|userClassName": "MyContainer5"
                                        },
                                        "cn": [
                                            {
                                                "type": "Ext.Button",
                                                "reference": {
                                                    "name": "items",
                                                    "type": "array"
                                                },
                                                "codeClass": null,
                                                "userConfig": {
                                                    "cls": [
                                                        "fbLoginbtn"
                                                    ],
                                                    "docked": "bottom",
                                                    "height": "",
                                                    "id": "fbloginbtn1",
                                                    "itemId": "fbloginbtn1",
                                                    "maxHeight": 158,
                                                    "maxWidth": 1101,
                                                    "ui": "",
                                                    "designer|userClassName": "MyButton10",
                                                    "text": null
                                                }
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "type": "Ext.Container",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "layout|flex": 1,
                            "height": null,
                            "designer|userClassName": "MyContainer14",
                            "defaults": null,
                            "layout": "vbox"
                        }
                    }
                ]
            },
            {
                "type": "Ext.Toolbar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "cls": [
                        "registerToolbar"
                    ],
                    "docked": "top",
                    "designer|userClassName": "MyToolbar2"
                },
                "cn": [
                    {
                        "type": "Ext.Button",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "baseCls": "backbtn",
                            "docked": "left",
                            "height": "",
                            "id": "loginbackbtn",
                            "itemId": "loginbackbtn",
                            "margin": null,
                            "minHeight": 60,
                            "width": "12%",
                            "designer|userClassName": "MyButton3",
                            "iconCls": null,
                            "text": null
                        },
                        "cn": [
                            {
                                "type": "basiceventbinding",
                                "reference": {
                                    "name": "listeners",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "designer|userClassName": "onLoginbackbtnTap",
                                    "fn": "onLoginbackbtnTap",
                                    "implHandler": [
                                        "//var Screen = Ext.ComponentQuery.query('#fbloginpanel');\r",
                                        "\r",
                                        "Ext.Viewport.setActiveItem(Ext.ComponentQuery.query('#fbloginpanel')[0]);\r",
                                        "//Ext.Viewport.show();"
                                    ],
                                    "name": "tap"
                                }
                            }
                        ]
                    },
                    {
                        "type": "Ext.Img",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "minHeight": 60,
                            "width": 168,
                            "designer|userClassName": "MyImg",
                            "src": "resources/images/register_heys.png"
                        }
                    }
                ]
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {}
}