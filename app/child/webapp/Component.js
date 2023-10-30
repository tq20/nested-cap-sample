sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("child.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);