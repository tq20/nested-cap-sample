sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'child',
            componentId: 'NestedChildObjectPage',
            entitySet: 'NestedChild'
        },
        CustomPageDefinitions
    );
});