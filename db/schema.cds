namespace sap.capire.sample;
using {
  managed,
  cuid
} from '@sap/cds/common';

entity ThirdLevel: cuid {
  additionalInfo : String;

  children : Composition of many NestedChild on children.parent = $self;
};

entity NestedChild: cuid {
  value : String;

  parent : Association to ThirdLevel;
};

