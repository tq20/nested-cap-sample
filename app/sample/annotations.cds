using ListService as service from '../../srv/list-service';

annotate service.ThirdLevel with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : additionalInfo,
        }
    ]
);
annotate service.ThirdLevel with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : additionalInfo,
            }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
         {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'NestedChild',
            ID     : 'NestedChildFacet',
            Target : 'children/@UI.LineItem'
        }
    ]
);

annotate service.NestedChild with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'value',
            Value : value,
        }
    ]
);
