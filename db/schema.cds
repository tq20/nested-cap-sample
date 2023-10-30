namespace sap.capire.sample;

entity FirstLevel {
  key ID : Integer;
  name : String;

  secondLevel : Association to SecondLevel;
};

entity SecondLevel {
  key ID : Integer;
  description : String;

  firstLevel: Association to FirstLevel;
  thirdLevel : Association to ThirdLevel;
};

entity ThirdLevel {
  key ID : Integer;
  additionalInfo : String;

  secondLevel: Association to SecondLevel;
  children : Composition of many NestedChild;
};

entity NestedChild {
  key ID : Integer;
  value : String;

  parent : Association to ThirdLevel;
  children : Composition of many DeeplyNestedChild;
};

entity DeeplyNestedChild {
  key ID : Integer;
  number : Integer;

  parent : Association to NestedChild;
};
