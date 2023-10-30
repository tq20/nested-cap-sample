sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'child/test/integration/FirstJourney',
		'child/test/integration/pages/NestedChildList',
		'child/test/integration/pages/NestedChildObjectPage'
    ],
    function(JourneyRunner, opaJourney, NestedChildList, NestedChildObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('child') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheNestedChildList: NestedChildList,
					onTheNestedChildObjectPage: NestedChildObjectPage
                }
            },
            opaJourney.run
        );
    }
);