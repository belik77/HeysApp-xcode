{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
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
        ]
    },
    "linkedNodes": {},
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