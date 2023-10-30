sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'deep/test/integration/FirstJourney',
		'deep/test/integration/pages/DeeplyNestedChildList',
		'deep/test/integration/pages/DeeplyNestedChildObjectPage'
    ],
    function(JourneyRunner, opaJourney, DeeplyNestedChildList, DeeplyNestedChildObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('deep') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDeeplyNestedChildList: DeeplyNestedChildList,
					onTheDeeplyNestedChildObjectPage: DeeplyNestedChildObjectPage
                }
            },
            opaJourney.run
        );
    }
);