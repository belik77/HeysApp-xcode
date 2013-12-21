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
            "id": "NearByList",
            "itemId": "NearByList",
            "style": [
                "text-align:right"
            ],
            "designer|userClassName": "NearByList",
            "designer|userAlias": "nearbylist",
            "emptyText": "אין מקומות בילוי בסביבה",
            "loadingText": "טוען...",
            "store": "BusinessStore"
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
                        "'<div class=\"contact2\"><strong>{BusinessName}</strong> {id}</div>'"
                    ],
                    "designer|displayName": "itemTpl"
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {
        "65d5e53e-1cb8-48f8-b29e-4a314bd63e57": {
            "type": "jsonstore",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "model": "Business",
                "storeId": "BusinessStore",
                "designer|userClassName": "BusinessStore"
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
                        "designer|userClassName": "MyAjaxProxy",
                        "url": ""
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
                                "designer|userClassName": "MyJsonReader"
                            }
                        }
                    ]
                },
                {
                    "type": "Ext.util.Sorter",
                    "reference": {
                        "name": "sorters",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "property": "distance",
                        "designer|userClassName": "MySorter",
                        "designer|displayName": "distance"
                    }
                },
                {
                    "type": "Ext.util.Sorter",
                    "reference": {
                        "name": "sorters",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "direction": "DESC",
                        "property": "Capacity",
                        "designer|userClassName": "MySorter1",
                        "designer|displayName": "Capacity"
                    }
                },
                {
                    "type": "Ext.util.Sorter",
                    "reference": {
                        "name": "sorters",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "direction": "DESC",
                        "property": "last_update_time",
                        "designer|userClassName": "MySorter2",
                        "designer|displayName": "last_update_time"
                    }
                },
                {
                    "type": "Ext.util.Sorter",
                    "reference": {
                        "name": "sorters",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "direction": "DESC",
                        "property": "Likes",
                        "designer|userClassName": "MySorter3",
                        "designer|displayName": "Likes"
                    }
                },
                {
                    "type": "Ext.util.Sorter",
                    "reference": {
                        "name": "sorters",
                        "type": "object"
                    },
                    "codeClass": null,
                    "userConfig": {
                        "property": "Age",
                        "designer|userClassName": "MySorter4",
                        "designer|displayName": "Age"
                    }
                }
            ]
        }
    },
    "boundModels": {
        "1572039d-7df6-4985-a6b0-78facdd1ff36": {
            "type": "Ext.data.Model",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userClassName": "Business"
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
                        "name": "id",
                        "designer|userClassName": "field5"
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
                        "name": "BusinessName",
                        "designer|userClassName": "field6"
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
                        "name": "distance",
                        "type": "float",
                        "designer|userClassName": "field7"
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
                        "name": "Longitude",
                        "type": "float",
                        "designer|userClassName": "field12"
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
                        "name": "Latitude",
                        "type": "float",
                        "designer|userClassName": "field13"
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
                        "name": "CapacityPercent",
                        "sortDir": "DESC",
                        "type": "int",
                        "designer|userClassName": "field16"
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
                        "name": "last_update_time",
                        "type": "date",
                        "designer|userClassName": "field17"
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
                        "name": "LikesCounter",
                        "type": "int",
                        "designer|userClassName": "field18"
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
                        "name": "MinAge",
                        "type": "int",
                        "designer|userClassName": "field19"
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
                        "name": "MaxAge",
                        "type": "int",
                        "designer|userClassName": "field21"
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
                        "name": "MoreBoys",
                        "type": "int",
                        "designer|userClassName": "field19"
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
                        "name": "MoreGirls",
                        "type": "int",
                        "designer|userClassName": "field20"
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
                        "name": "LogoURL",
                        "type": "string",
                        "designer|userClassName": "field22"
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
                        "name": "LineLenghtSum",
                        "type": "int",
                        "designer|userClassName": "field23"
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
                        "name": "Type_id",
                        "type": "int",
                        "designer|userClassName": "field24"
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
                        "name": "GoingCounter",
                        "type": "int",
                        "designer|userClassName": "field25"
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
                        "name": "HomePageURL",
                        "type": "string",
                        "designer|userClassName": "field26"
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
                        "name": "TodayStyle",
                        "type": "string",
                        "designer|userClassName": "field27"
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
                        "name": "BusinessSummary",
                        "type": "string",
                        "designer|userClassName": "field28"
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
                        "name": "BusinessHours",
                        "type": "string",
                        "designer|userClassName": "field29"
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
                        "designer|userClassName": "field30"
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
                        "designer|userClassName": "field31"
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
                        "designer|userClassName": "field32"
                    }
                }
            ]
        }
    }
}