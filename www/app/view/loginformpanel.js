/*
 * File: app/view/loginformpanel.js
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

Ext.define('MyApp.view.loginformpanel', {
    extend: 'Ext.form.Panel',

    config: {
        baseCls: 'fbloginpanel',
        fullscreen: true,
        id: 'loginformpanel',
        itemId: 'loginformpanel',
        layout: {
            type: 'vbox'
        },
        scrollable: true,
        items: [
            {
                xtype: 'container',
                flex: 20,
                cls: 'fblogin',
                layout: {
                    type: 'vbox'
                },
                items: [
                    {
                        xtype: 'container',
                        flex: 3,
                        cls: 'wholepageRelative'
                    },
                    {
                        xtype: 'container',
                        flex: 18,
                        cls: 'wholepageRelative',
                        layout: {
                            type: 'vbox'
                        },
                        items: [
                            {
                                xtype: 'container',
                                flex: 8,
                                docked: 'top',
                                layout: {
                                    type: 'vbox'
                                },
                                items: [
                                    {
                                        xtype: 'fieldset',
                                        flex: 2,
                                        cls: 'loginmargin',
                                        docked: 'top',
                                        title: 'Existing User',
                                        items: [
                                            {
                                                xtype: 'emailfield',
                                                id: 'email1',
                                                itemId: 'email1',
                                                name: 'email1',
                                                placeHolder: 'Email'
                                            },
                                            {
                                                xtype: 'passwordfield',
                                                id: 'password1',
                                                itemId: 'password1',
                                                name: 'password1',
                                                placeHolder: 'Password'
                                            }
                                        ]
                                    },
                                    {
                                        xtype: 'button',
                                        flex: 1,
                                        cls: [
                                            'loginmargin',
                                            'Signbutton'
                                        ],
                                        docked: 'bottom',
                                        id: 'reglogin',
                                        itemId: 'reglogin',
                                        ui: 'round',
                                        icon: '',
                                        scope: this
                                    }
                                ]
                            },
                            {
                                xtype: 'container',
                                flex: 10,
                                layout: {
                                    type: 'vbox'
                                },
                                items: [
                                    {
                                        xtype: 'container',
                                        flex: 10,
                                        layout: {
                                            type: 'vbox'
                                        },
                                        items: [
                                            {
                                                xtype: 'fieldset',
                                                flex: 4,
                                                cls: 'loginmargin',
                                                docked: 'top',
                                                layout: {
                                                    type: 'vbox'
                                                },
                                                title: 'New User',
                                                items: [
                                                    {
                                                        xtype: 'textfield',
                                                        id: 'username',
                                                        itemId: 'username',
                                                        name: 'username',
                                                        placeHolder: 'Username'
                                                    },
                                                    {
                                                        xtype: 'passwordfield',
                                                        id: 'password',
                                                        itemId: 'password',
                                                        name: 'password',
                                                        placeHolder: 'Password'
                                                    },
                                                    {
                                                        xtype: 'emailfield',
                                                        id: 'email',
                                                        itemId: 'email',
                                                        name: 'email',
                                                        placeHolder: 'Email'
                                                    },
                                                    {
                                                        xtype: 'passwordfield',
                                                        hidden: true,
                                                        id: 'hashpassword',
                                                        itemId: 'hashpassword',
                                                        label: 'ססמא',
                                                        name: 'hashpassword'
                                                    },
                                                    {
                                                        xtype: 'numberfield',
                                                        hidden: true,
                                                        label: 'Field',
                                                        name: 'bfacebook'
                                                    },
                                                    {
                                                        xtype: 'numberfield',
                                                        hidden: true,
                                                        label: 'Field',
                                                        name: 'bregister'
                                                    }
                                                ]
                                            },
                                            {
                                                xtype: 'container',
                                                flex: 4,
                                                minHeight: 100,
                                                style: 'margin-top: 110%',
                                                layout: {
                                                    type: 'vbox'
                                                },
                                                items: [
                                                    {
                                                        xtype: 'button',
                                                        cls: [
                                                            'loginmargin',
                                                            'Regbutton'
                                                        ],
                                                        docked: 'top',
                                                        id: 'regbtn',
                                                        itemId: 'regbtn',
                                                        ui: 'round',
                                                        icon: '',
                                                        scope: this
                                                    },
                                                    {
                                                        xtype: 'button',
                                                        cls: 'fbLoginbtn',
                                                        docked: 'bottom',
                                                        height: '',
                                                        id: 'fbloginbtn1',
                                                        itemId: 'fbloginbtn1',
                                                        ui: ''
                                                    }
                                                ]
                                            },
                                            {
                                                xtype: 'container',
                                                flex: 2,
                                                docked: 'bottom',
                                                height: 50
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
                xtype: 'toolbar',
                cls: 'registerToolbar',
                docked: 'top',
                items: [
                    {
                        xtype: 'button',
                        baseCls: 'backbtn',
                        docked: 'left',
                        height: '',
                        id: 'loginbackbtn',
                        itemId: 'loginbackbtn',
                        width: '18%'
                    }
                ]
            }
        ],
        listeners: [
            {
                fn: 'onLoginbackbtnTap',
                event: 'tap',
                delegate: '#loginbackbtn'
            }
        ]
    },

    onLoginbackbtnTap: function(button, e, eOpts) {
        //var Screen = Ext.ComponentQuery.query('#fbloginpanel');

        Ext.Viewport.setActiveItem(Ext.ComponentQuery.query('#fbloginpanel')[0]);
        //Ext.Viewport.show();
    }

});