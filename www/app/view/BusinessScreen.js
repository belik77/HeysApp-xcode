/*
 * File: app/view/BusinessScreen.js
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

Ext.define('MyApp.view.BusinessScreen', {
    extend: 'Ext.Panel',

    config: {
        cls: 'businessbkgscreen',
        fullscreen: false,
        id: 'BusinessScreen',
        itemId: 'BusinessScreen',
        layout: {
            type: 'vbox'
        },
        items: [
            {
                xtype: 'toolbar',
                cls: 'businessToolbar',
                docked: 'top',
                height: 35,
                id: 'BusinessScreenTitle',
                itemId: 'BusinessScreenTitle',
                layout: {
                    align: 'stretchmax',
                    type: 'hbox'
                },
                items: [
                    {
                        xtype: 'container',
                        height: 48,
                        width: 315,
                        layout: {
                            type: 'hbox'
                        },
                        items: [
                            {
                                xtype: 'button',
                                flex: 1,
                                baseCls: 'backbtn',
                                docked: 'left',
                                height: '',
                                id: 'businessbackbtn',
                                itemId: 'businessbackbtn',
                                width: '12%'
                            },
                            {
                                xtype: 'button',
                                baseCls: 'backbtn',
                                docked: 'right',
                                id: 'businessrefbtn',
                                itemId: 'businessrefbtn',
                                width: '10%'
                            },
                            {
                                xtype: 'button',
                                baseCls: 'backbtn',
                                docked: 'right',
                                id: 'contactbtn1',
                                itemId: 'contactbtn1',
                                width: '10%'
                            },
                            {
                                xtype: 'label',
                                flex: 1,
                                baseCls: 'BusinessNameLabelBusinessScreen',
                                id: 'businessnamelbl',
                                itemId: 'businessnamelbl'
                            },
                            {
                                xtype: 'container',
                                flex: 2
                            }
                        ]
                    }
                ]
            },
            {
                xtype: 'toolbar',
                cls: 'businessbottomToolbar',
                docked: 'bottom',
                items: [
                    {
                        xtype: 'button',
                        baseCls: 'ratebutton',
                        id: 'ratebtn',
                        itemId: 'ratebtn',
                        minHeight: '2.6em',
                        minWidth: '2.6em'
                    }
                ]
            },
            {
                xtype: 'panel',
                flex: 10,
                cls: [
                    'TransparentContainer',
                    'businessinnerbkgscreen'
                ],
                ui: '',
                layout: {
                    type: 'vbox'
                },
                scrollable: 'vertical',
                items: [
                    {
                        xtype: 'container',
                        cls: 'businesstitlestrip',
                        minHeight: 15,
                        items: [
                            {
                                xtype: 'container',
                                layout: {
                                    type: 'hbox'
                                },
                                items: [
                                    {
                                        xtype: 'label',
                                        flex: 3,
                                        baseCls: 'BusinessScreenNameLabel',
                                        docked: 'left',
                                        html: 'Status',
                                        itemId: 'statuslbl'
                                    },
                                    {
                                        xtype: 'container',
                                        html: '<img src="resources/images/greydot.png" height="8" width="8")>',
                                        id: 'dotcontainerbusiness',
                                        itemId: 'dotcontainerbusiness',
                                        margin: '-6 4 0 20'
                                    },
                                    {
                                        xtype: 'component',
                                        flex: 2,
                                        baseCls: 'lastupdateLabel',
                                        itemId: 'bslastupdatelbl'
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        minHeight: 60,
                        width: '100%',
                        layout: {
                            type: 'fit'
                        },
                        items: [
                            {
                                xtype: 'container',
                                ui: '',
                                width: '100%',
                                layout: {
                                    align: 'stretchmax',
                                    type: 'hbox'
                                },
                                items: [
                                    {
                                        xtype: 'container',
                                        flex: 1.5,
                                        margin: '10 0 10 10',
                                        layout: {
                                            type: 'fit'
                                        },
                                        items: [
                                            {
                                                xtype: 'image',
                                                cls: 'ListItemLogo',
                                                docked: 'top',
                                                height: 70,
                                                itemId: 'businessImage',
                                                width: 70,
                                                src: 'resources/images/logo.png'
                                            }
                                        ]
                                    },
                                    {
                                        xtype: 'container',
                                        flex: 4,
                                        layout: {
                                            type: 'vbox'
                                        },
                                        items: [
                                            {
                                                xtype: 'container',
                                                flex: 2,
                                                layout: {
                                                    type: 'hbox'
                                                },
                                                items: [
                                                    {
                                                        xtype: 'container',
                                                        flex: 3,
                                                        margin: '10 10 10 0',
                                                        items: [
                                                            {
                                                                xtype: 'component',
                                                                cls: 'businessListItemInnerTitle',
                                                                itemId: 'businessTitle',
                                                                styleHtmlCls: 'BusinessListItemHtml',
                                                                styleHtmlContent: true,
                                                                width: '90%'
                                                            }
                                                        ]
                                                    },
                                                    {
                                                        xtype: 'container',
                                                        flex: 1.5,
                                                        margin: '0 0 10 10',
                                                        items: [
                                                            {
                                                                xtype: 'component',
                                                                baseCls: 'likesManWomCont',
                                                                itemId: 'businesslikeComp',
                                                                margin: '0 10 10 0',
                                                                minHeight: 'auto',
                                                                minWidth: 20,
                                                                styleHtmlCls: 'BusinessListItemHtml',
                                                                styleHtmlContent: true
                                                            }
                                                        ]
                                                    }
                                                ]
                                            },
                                            {
                                                xtype: 'container',
                                                flex: 1,
                                                layout: {
                                                    type: 'hbox'
                                                },
                                                items: [
                                                    {
                                                        xtype: 'container',
                                                        flex: 2
                                                    },
                                                    {
                                                        xtype: 'container',
                                                        flex: 1.5,
                                                        margin: '0 10 10 0',
                                                        layout: {
                                                            type: 'hbox'
                                                        },
                                                        items: [
                                                            {
                                                                xtype: 'button',
                                                                flex: 2,
                                                                baseCls: 'businessgoingbtnactive',
                                                                disabled: false,
                                                                id: 'goingbutton',
                                                                itemId: 'goingbutton',
                                                                styleHtmlContent: true
                                                            },
                                                            {
                                                                xtype: 'container',
                                                                flex: 1,
                                                                cls: 'goinglbl',
                                                                id: 'goinglblcont',
                                                                itemId: 'goinglblcont',
                                                                styleHtmlCls: 'businessGoingLabel',
                                                                styleHtmlContent: true
                                                            }
                                                        ]
                                                    }
                                                ]
                                            }
                                        ]
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businesstitlestrip',
                        minHeight: 15,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreenNameLabel',
                                docked: 'left',
                                html: 'Contact details',
                                itemId: 'contactdetaillbl'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'websiteTitle',
                                itemId: 'websiteTitle'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'businessemail'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'businessaddress'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        hidden: true,
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                html: 'Navigate with WAZE <img src="resources/images/link.png" height="14" width="14">',
                                id: 'waze'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        minHeight: 25,
                        items: [
                            {
                                xtype: 'button',
                                baseCls: 'ShowPhonebtn',
                                height: 25,
                                id: 'showphone',
                                itemId: 'showphone',
                                text: 'Show phone number'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businesstitlestrip',
                        minHeight: 15,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreenNameLabel',
                                docked: 'left',
                                html: 'More info',
                                itemId: 'moreinfolbl'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'businesstodaystyle'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'businesstodaydeals'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 10,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                docked: 'bottom',
                                id: 'businessopenclosed'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businessdetailstrip',
                        minHeight: 30,
                        scrollable: 'vertical',
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreendetailLabel',
                                id: 'businesssummary'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        cls: 'businesstitlestrip',
                        minHeight: 15,
                        items: [
                            {
                                xtype: 'label',
                                baseCls: 'BusinessScreenNameLabel',
                                docked: 'left',
                                html: 'Pictures',
                                itemId: 'pictureslbl'
                            }
                        ]
                    },
                    {
                        xtype: 'container',
                        margin: '5 0 5 0',
                        minHeight: 100,
                        layout: {
                            type: 'hbox'
                        },
                        items: [
                            {
                                xtype: 'container',
                                flex: 1
                            },
                            {
                                xtype: 'carousel',
                                flex: 6,
                                centered: true,
                                id: 'photocarousel',
                                itemId: 'photocarousel',
                                minHeight: 100,
                                minWidth: 100,
                                indicator: false
                            },
                            {
                                xtype: 'container',
                                flex: 1
                            }
                        ]
                    }
                ]
            }
        ],
        listeners: [
            {
                fn: 'onbusinessbackbtnTap',
                event: 'tap',
                delegate: '#businessbackbtn'
            },
            {
                fn: 'onBusinessrefbtnTap',
                event: 'tap',
                delegate: '#businessrefbtn'
            },
            {
                fn: 'onMybutton29Tap1',
                event: 'tap',
                delegate: '#contactbtn1'
            }
        ]
    },

    onbusinessbackbtnTap: function(button, e, eOpts) {
        //var Screen = Ext.ComponentQuery.query('#fbloginpanel');

        console.log('onbusinessbackbtnTap');

        Ext.Viewport.setActiveItem(Ext.ComponentQuery.query('#SearchScreen')[0]);
        //Ext.Viewport.show();
    },

    onBusinessrefbtnTap: function(button, e, eOpts) {
        var controller = MyApp.app.getController( 'MyApp.controller.BusinessScreenControl');
        controller.ReloadBusinessData();
    },

    onMybutton29Tap1: function(button, e, eOpts) {
        //check if the screen was loaded already before
        var Screen = Ext.ComponentQuery.query('#ContactScreen');

        if(Screen.length===0)//no
        {
            Screen = Ext.create('MyApp.view.ContactScreen', {
                id: 'ContactScreen'
            });

            Ext.Viewport.setActiveItem(Screen);



        }
        else
        {
            Ext.Viewport.setActiveItem(Screen[0]);
        }
    }

});