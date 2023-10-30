using ListService as service from '../../srv/list-service';

annotate service.ThirdLevel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : additionalInfo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'secondLevel_ID',
            Value : secondLevel_ID,
        },
    ]
);
annotate service.ThirdLevel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : additionalInfo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'secondLevel_ID',
                Value : secondLevel_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
