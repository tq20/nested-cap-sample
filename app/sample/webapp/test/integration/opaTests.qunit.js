sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sample/test/integration/FirstJourney',
		'sample/test/integration/pages/ThirdLevelList',
		'sample/test/integration/pages/ThirdLevelObjectPage',
		'sample/test/integration/pages/NestedChildObjectPage'
    ],
    function(JourneyRunner, opaJourney, ThirdLevelList, ThirdLevelObjectPage, NestedChildObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sample') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheThirdLevelList: ThirdLevelList,
					onTheThirdLevelObjectPage: ThirdLevelObjectPage,
					onTheNestedChildObjectPage: NestedChildObjectPage
                }
            },
            opaJourney.run
        );
    }
);