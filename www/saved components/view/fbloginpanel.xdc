{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.Panel",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "cls": [
                "fblogin"
            ],
            "id": "fbloginpanel",
            "itemId": "fbloginpanel",
            "designer|userClassName": "fbloginpanel",
            "designer|initialView": true
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
                    "container|align": "start",
                    "docked": "top",
                    "left": null,
                    "top": "50%",
                    "ui": "light",
                    "width": "100%",
                    "designer|userClassName": "MyContainer9",
                    "layout": "vbox"
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
                            "layout|flex": 1,
                            "cls": [
                                "fbLoginbtn"
                            ],
                            "docked": "top",
                            "id": "fbloginbtn",
                            "itemId": "fbloginbtn",
                            "left": null,
                            "ui": null,
                            "designer|userClassName": "MyButton10",
                            "text": ""
                        }
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
                                "nofbbtn"
                            ],
                            "docked": "top",
                            "html": "I Don't have Facebook",
                            "id": "nofbbtn",
                            "itemId": "nofbbtn",
                            "left": null,
                            "designer|userClassName": "MyButton10",
                            "text": null
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
                        "signinToolbar"
                    ],
                    "docked": "top",
                    "designer|userClassName": "MyToolbar2"
                },
                "cn": [
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
                            "src": "resources/images/signin_heys.gif"
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