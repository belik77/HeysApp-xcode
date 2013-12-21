{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.navigation.View",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "container|animation": "slide",
            "fullscreen": true,
            "id": "LocateScreen",
            "itemId": "LocateScreen",
            "designer|userClassName": "LocateScreen",
            "useTitleForBackButtonText": true
        },
        "cn": [
            {
                "type": "Ext.tab.Panel",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "container|animation": "slide",
                    "designer|userClassName": "MyTabPanel"
                },
                "cn": [
                    {
                        "type": "Ext.Toolbar",
                        "reference": {
                            "name": "items",
                            "type": "array"
                        },
                        "codeClass": null,
                        "userConfig": {
                            "docked": "top",
                            "designer|userClassName": "MyToolbar1"
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
                                    "id": "locatemebtn",
                                    "itemId": "locatemebtn",
                                    "designer|userClassName": "MyButton2",
                                    "iconCls": "locate",
                                    "iconMask": true,
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
                                    "id": "refreshbtn",
                                    "itemId": "refreshbtn",
                                    "designer|userClassName": "MyButton2",
                                    "iconCls": "refresh",
                                    "iconMask": true,
                                    "text": ""
                                }
                            },
                            {
                                "type": "Ext.field.Select",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "designer|userClassName": "MySelectField1",
                                    "designer|displayName": "CitySelect",
                                    "label": "עיר",
                                    "labelAlign": "right",
                                    "displayField": "LocationName",
                                    "store": "LocationStore"
                                }
                            },
                            {
                                "type": "Ext.field.Select",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "designer|userClassName": "MySelectField1",
                                    "designer|displayName": "CatSelect",
                                    "label": "קטגוריה",
                                    "labelAlign": "right",
                                    "displayField": "TypeName",
                                    "store": "CategoryStore"
                                }
                            },
                            {
                                "type": "Ext.field.Select",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "itemId": "myselectfield2",
                                    "designer|userClassName": "MySelectField1",
                                    "designer|displayName": "SortSelect",
                                    "label": "מיון",
                                    "labelAlign": "right",
                                    "displayField": "value",
                                    "options": [
                                        "[{text: 'distance',  value: 'מרחק'},\r",
                                        "{text: 'Capacity', value: 'תכולה'},\r",
                                        "{text: 'last_update_time',  value: 'שעת עדכון'},\r",
                                        "{text: 'Likes',  value: 'Likes'},\r",
                                        "{text: 'Age',  value: 'גילאים'}]"
                                    ],
                                    "store": null
                                }
                            },
                            {
                                "type": "Ext.field.Search",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "id": "textsearchfield",
                                    "itemId": "textsearchfield",
                                    "designer|userClassName": "MySearchField",
                                    "label": "טקסט",
                                    "labelAlign": "right"
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
                            "title": "מפה",
                            "height": "100%",
                            "id": "MapTab",
                            "itemId": "MapTab",
                            "width": "100%",
                            "designer|userClassName": "MyContainer1",
                            "layout": "vbox"
                        },
                        "cn": [
                            {
                                "type": "Ext.Map",
                                "reference": {
                                    "name": "items",
                                    "type": "array"
                                },
                                "codeClass": null,
                                "userConfig": {
                                    "height": "100%",
                                    "id": "detailMap",
                                    "itemId": "detailMap",
                                    "width": "100%",
                                    "designer|userClassName": "MyMap"
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
                            "title": "רשימה",
                            "height": "100%",
                            "ui": "",
                            "width": "100%",
                            "designer|userClassName": "MyContainer"
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
                                    "height": "100%",
                                    "width": "100%"
                                },
                                "masterInstanceId": "dd000722-495b-4b96-acad-93f74b702d3a"
                            }
                        ]
                    }
                ]
            },
            {
                "type": "Ext.navigation.Bar",
                "reference": {
                    "name": "navigationBar",
                    "type": "object"
                },
                "codeClass": null,
                "userConfig": {
                    "docked": "top",
                    "designer|userClassName": "MyNavigationBar"
                }
            }
        ]
    },
    "linkedNodes": {
        "dd000722-495b-4b96-acad-93f74b702d3a": {
            "id": "dd000722-495b-4b96-acad-93f74b702d3a",
            "internals": {
                "type": "Ext.dataview.List",
                "reference": {
                    "name": "items",
                    "type": "array"
                },
                "codeClass": null,
                "userConfig": {
                    "id": "SearchList",
                    "itemId": "SearchList",
                    "style": [
                        "text-align:right"
                    ],
                    "designer|userClassName": "SearchList",
                    "designer|userAlias": "searchlist",
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
                                "'<div class=\"contact2\"><strong>{BusinessName}</strong> {id} {distance}</div>'"
                            ],
                            "designer|displayName": "itemTpl"
                        }
                    }
                ],
                "designerId": "dd000722-495b-4b96-acad-93f74b702d3a"
            }
        }
    },
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
        },
        "7d67d99e-fdb1-43b4-b4db-d4b41c0cc172": {
            "type": "jsonstore",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "model": "Location",
                "storeId": "LocationStore",
                "designer|userClassName": "LocationStore"
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
        },
        "b9d291be-f9c8-487d-b609-ea0278705725": {
            "type": "jsonstore",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "model": "Category",
                "storeId": "CategoryStore",
                "designer|userClassName": "CategoryStore"
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
        },
        "057b4377-4c32-495f-951b-a8ec7efc3f87": {
            "type": "Ext.data.Model",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userClassName": "Location"
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
                        "designer|userClassName": "field8"
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
                        "name": "LocationName",
                        "designer|userClassName": "field9"
                    }
                }
            ]
        },
        "3691b85d-3394-49d1-b6cd-7a018807bc9e": {
            "type": "Ext.data.Model",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userClassName": "Category"
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
                        "designer|userClassName": "field10"
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
                        "name": "TypeName",
                        "designer|userClassName": "field11"
                    }
                }
            ]
        }
    }
}