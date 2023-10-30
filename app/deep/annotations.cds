using ListService as service from '../../srv/list-service';

annotate service.DeeplyNestedChild with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : number,
        },
        {
            $Type : 'UI.DataField',
            Label : 'parent_ID',
            Value : parent_ID,
        },
    ]
);
annotate service.DeeplyNestedChild with @(
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
                Value : number,
            },
            {
                $Type : 'UI.DataField',
                Label : 'parent_ID',
                Value : parent_ID,
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
