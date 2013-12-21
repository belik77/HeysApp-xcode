/*
 * File: app/view/ContactScreen.js
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

Ext.define('MyApp.view.ContactScreen', {
    extend: 'Ext.Panel',

    config: {
        backscreen: 'SearchScreen',
        baseCls: 'businessbkgscreen',
        fullscreen: true,
        id: 'ContactScreen',
        itemId: 'ContactScreen',
        layout: {
            type: 'vbox'
        },
        scrollable: 'vertical',
        items: [
            {
                xtype: 'toolbar',
                cls: 'contactToolbar',
                docked: 'top',
                height: 35,
                id: 'ContactScreenTitle',
                itemId: 'ContactScreenTitle',
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
                                id: 'Contactbackbtn',
                                itemId: 'Contactbackbtn',
                                width: 37
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
                xtype: 'container',
                flex: 4,
                height: '100%',
                layout: {
                    type: 'fit'
                },
                items: [
                    {
                        xtype: 'formpanel',
                        baseCls: 'contactinnerbkgscreen',
                        id: 'contactform',
                        itemId: 'contactform',
                        margin: '10 10 10 10',
                        layout: {
                            type: 'vbox'
                        },
                        scrollable: 'vertical',
                        items: [
                            {
                                xtype: 'container',
                                layout: {
                                    type: 'vbox'
                                },
                                items: [
                                    {
                                        xtype: 'label',
                                        cls: 'ContactLabel',
                                        html: 'Sign up as your Business\'s manager allows you  to edit and post on your business Page. <br> * Otherwise, you can just add a new place to our list.',
                                        styleHtmlContent: true
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'fullname',
                                        itemId: 'fullname',
                                        label: 'Full name:',
                                        labelWidth: '50%',
                                        name: 'fullname'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'businessname',
                                        itemId: 'businessname',
                                        label: 'Business name:',
                                        labelWidth: '50%',
                                        name: 'businessname'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'Category',
                                        itemId: 'Category',
                                        label: 'Category:',
                                        labelWidth: '50%',
                                        name: 'Category'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'Address',
                                        itemId: 'Address',
                                        label: 'Address:',
                                        labelWidth: '50%',
                                        name: 'Address'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'phonenumber',
                                        itemId: 'phonenumber',
                                        label: 'Phone number:',
                                        labelWidth: '50%',
                                        name: 'phonenumber'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'emailfield',
                                        itemId: 'emailfield',
                                        label: 'Email:',
                                        labelWidth: '50%',
                                        name: 'emailfield'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'textfield',
                                        id: 'capacity',
                                        itemId: 'capacity',
                                        label: 'Capacity (optional):',
                                        labelWidth: '50%',
                                        name: 'capacity'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'checkboxfield',
                                        id: 'businessowner',
                                        itemId: 'businessowner',
                                        label: 'I\'m the Manager of this place',
                                        labelWidth: '80%',
                                        name: 'businessowner'
                                    },
                                    {
                                        xtype: 'component',
                                        cls: 'contactstrip',
                                        height: 2
                                    },
                                    {
                                        xtype: 'container',
                                        layout: {
                                            type: 'hbox'
                                        },
                                        items: [
                                            {
                                                xtype: 'container',
                                                flex: 4,
                                                layout: {
                                                    type: 'fit'
                                                },
                                                items: [
                                                    {
                                                        xtype: 'container',
                                                        items: [
                                                            {
                                                                xtype: 'label',
                                                                cls: 'ContactLabel',
                                                                html: 'For more details contact us: <br> heys.app@gmail.com, +(972) (0) 50372424',
                                                                styleHtmlContent: true
                                                            }
                                                        ]
                                                    },
                                                    {
                                                        xtype: 'container',
                                                        items: [
                                                            {
                                                                xtype: 'image',
                                                                cls: 'contactfbLogo',
                                                                docked: 'left',
                                                                src: 'resources/images/fb.png'
                                                            }
                                                        ]
                                                    }
                                                ]
                                            },
                                            {
                                                xtype: 'container',
                                                flex: 1,
                                                items: [
                                                    {
                                                        xtype: 'button',
                                                        cls: 'sendbtn',
                                                        id: 'sendbtn',
                                                        itemId: 'sendbtn'
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
            }
        ],
        listeners: [
            {
                fn: 'onContactbackbtnTap',
                event: 'tap',
                delegate: '#Contactbackbtn'
            }
        ]
    },

    onContactbackbtnTap: function(button, e, eOpts) {
        //var Screen = Ext.ComponentQuery.query('#fbloginpanel');

        console.log('onbusinessbackbtnTap');


        if(localStorage.user_id!=="-1")
        {
            var panel = button.up('panel[id=ContactScreen]');
            Ext.Viewport.setActiveItem(Ext.ComponentQuery.query('#SearchScreen')[0]);
        }
        else//back to login screen
        {
            Ext.Viewport.setActiveItem(Ext.ComponentQuery.query('#fbloginpanel')[0]);
        }
    }

});