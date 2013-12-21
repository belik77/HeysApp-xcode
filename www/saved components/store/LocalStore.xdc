{
    "xdsVersion": "2.2.0",
    "frameworkVersion": "touch21",
    "internals": {
        "type": "Ext.data.Store",
        "reference": {
            "name": "items",
            "type": "array"
        },
        "codeClass": null,
        "userConfig": {
            "autoSync": true,
            "model": "LocalData",
            "storeId": "LocalStore",
            "designer|userClassName": "LocalStore"
        },
        "cn": [
            {
                "type": "Ext.data.proxy.LocalStorage",
                "reference": {
                    "name": "proxy",
                    "type": "object"
                },
                "codeClass": null,
                "userConfig": {
                    "designer|userClassName": "MyLocalStorageProxy",
                    "id": "localDataProxy"
                }
            }
        ]
    },
    "linkedNodes": {},
    "boundStores": {},
    "boundModels": {
        "b2e9e2fb-bd86-427e-9226-3b3a569b6980": {
            "type": "Ext.data.Model",
            "reference": {
                "name": "items",
                "type": "array"
            },
            "codeClass": null,
            "userConfig": {
                "designer|userClassName": "LocalData"
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
                        "name": "SelectedBusinessID",
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
                        "name": "distance",
                        "designer|userClassName": "field46"
                    }
                }
            ]
        }
    }
}