{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.tab.Panel",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "fullscreen": true,
            "html": null,
            "id": "BusinessScreen",
            "itemId": "BusinessScreen",
            "designer|userClassName": "BusinessScreen"
        },
        "cn": [
            {
                "type": "Ext.TitleBar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "docked": "top",
                    "id": "BusinessScreenTitle",
                    "itemId": "BusinessScreenTitle",
                    "designer|userClassName": "MyTitleBar",
                    "title": "שם העסק"
                }
            },
            {
                "type": "Ext.Toolbar",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
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
                            "id": "wazebtn",
                            "designer|userClassName": "MyButton4",
                            "text": "wazebtn"
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
                            "id": "goingbtn",
                            "designer|userClassName": "MyButton4",
                            "text": "Going"
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
                            "disabled": true,
                            "id": "ratebtn",
                            "designer|userClassName": "MyButton4",
                            "text": "דרג"
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
                            "id": "phonebtn",
                            "designer|userClassName": "MyButton4",
                            "text": "הצג מספר טלפון"
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
                            "id": "homepagebtn",
                            "designer|userClassName": "MyButton4",
                            "iconCls": "home",
                            "iconMask": true,
                            "text": "דף הבית"
                        }
                    }
                ]
            },
            {
                "type": "Ext.tab.Bar",
                "reference": {
                    "name": "tabBar",
                    "type": "object"
                },
                "codeClass": null,
                "userConfig": {
                    "docked": "top",
                    "designer|userClassName": "MyTabBar"
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
                    "title": "עסק",
                    "designer|userClassName": "MyContainer2"
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
                    "title": "מובילי דירוג",
                    "designer|userClassName": "MyContainer3"
                },
                "cn": [
                    {
                        "type": "linkedinstance",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "height": "100%"
                        },
                        "masterInstanceId": "e3e21589-017b-4341-85af-56e1cf800192"
                    }
                ]
            }
        ]
    },
    "linkedNodes": {
        "e3e21589-017b-4341-85af-56e1cf800192": {
            "id": "e3e21589-017b-4341-85af-56e1cf800192",
            "internals": {
                "type": "Ext.dataview.List",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "id": "RatingUserList",
                    "itemId": "RatingUserList",
                    "style": [
                        "text-align:right"
                    ],
                    "designer|userClassName": "RatingUserList",
                    "designer|userAlias": "RatingUserList",
                    "emptyText": "אין מדרגים",
                    "loadingText": "טוען...",
                    "store": "BusinessUserStore"
                },
                "configAlternates": {
                    "style": "object"
                },
                "cn": [
                    {
                        "type": "Ext.XTemplate",
                        "reference": {
                            "name": "itemTpl",
                            "type": "object"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "designer|userClassName": "itemTpl",
                            "implHandler": [
                                "'<div class=\"contact2\"><strong>{username}</strong> {RatingScore}</div>'"
                            ],
                            "designer|displayName": "itemTpl"
                        }
                    }
                ],
                "designerId": "e3e21589-017b-4341-85af-56e1cf800192"
            }
        }
    },
    "boundStores": {
        "b1d0ebfb-1f25-4b35-9127-ee278e3236f7": {
            "type": "jsonstore",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "model": "BusinessUser",
                "storeId": "BusinessUserStore",
                "designer|userClassName": "BusinessUserStore"
            },
            "cn": [
                {
                    "type": "Ext.data.proxy.Ajax",
                    "reference": {
                        "name": "proxy",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "designer|userClassName": "MyAjaxProxy1",
                        "url": null
                    },
                    "cn": [
                        {
                            "type": "Ext.data.reader.Json",
                            "reference": {
                                "name": "reader",
                                "type": "object"
                            },
                            "codeClass": null,
                            "userConfig": {
                                "designer|userClassName": "MyJsonReader1"
                            }
                        }
                    ]
                }
            ]
        }
    },
    "boundModels": {
        "aac51765-5f8c-4108-92ea-c776c9eab845": {
            "type": "Ext.data.Model",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userClassName": "BusinessUser"
            },
            "cn": [
                {
                    "type": "Ext.data.Field",
                    "reference": {
                        "name": "fields",
                        "type": "array"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "name": "UserID",
                        "type": "int",
                        "designer|userClassName": "field47"
                    }
                },
                {
                    "type": "Ext.data.Field",
                    "reference": {
                        "name": "fields",
                        "type": "array"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "name": "username",
                        "type": "string",
                        "designer|userClassName": "field48"
                    }
                },
                {
                    "type": "Ext.data.Field",
                    "reference": {
                        "name": "fields",
                        "type": "array"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "name": "LastRatingTime",
                        "type": "date",
                        "designer|userClassName": "field49"
                    }
                },
                {
                    "type": "Ext.data.Field",
                    "reference": {
                        "name": "fields",
                        "type": "array"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "name": "RatingScore",
                        "type": "int",
                        "designer|userClassName": "field50"
                    }
                },
                {
                    "type": "Ext.data.Field",
                    "reference": {
                        "name": "fields",
                        "type": "array"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "name": "LastGoingClickTime",
                        "type": "date",
                        "designer|userClassName": "field51"
                    }
                }
            ]
        }
    }
}