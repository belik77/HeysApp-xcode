/*
 * File: app/view/MyLocScreen.js
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

Ext.define('MyApp.view.MyLocScreen', {
    extend: 'Ext.Panel',

    config: {
        centered: true,
        cls: 'WhereAreYouScreen',
        docked: 'top',
        fullscreen: true,
        id: 'MyLocScreen',
        itemId: 'MyLocScreen',
        hideOnMaskTap: false,
        layout: {
            type: 'fit'
        },
        modal: true,
        showAnimation: {
            type: 'popOut',
            duration: 250,
            easing: 'ease-out'
        },
        items: [
            {
                xtype: 'container',
                layout: {
                    type: 'vbox'
                },
                items: [
                    {
                        xtype: 'titlebar',
                        flex: 1,
                        cls: 'WhereAreYouToolbar',
                        docked: 'top',
                        height: '25%'
                    },
                    {
                        xtype: 'container',
                        flex: 3,
                        cls: 'WhereAreYouListCont',
                        layout: {
                            type: 'fit'
                        },
                        items: [
                            {
                                xtype: 'list',
                                cls: 'WhereAreYouList',
                                height: 25,
                                id: 'NearByList',
                                itemId: 'NearByList',
                                minHeight: 0.5,
                                style: 'text-align:center',
                                itemCls: 'Listitem',
                                itemTpl: [
                                    '<div>{business_name}</div>'
                                ],
                                store: 'BusinessStoreNearByScreen',
                                itemHeight: 25,
                                variableHeights: false
                            }
                        ]
                    }
                ]
            }
        ]
    }

});