using { sap.capire.sample as my } from '../db/schema';

service ListService {
  @title: 'First Level'
  entity FirstLevel as projection on my.FirstLevel;
  @title: 'Second Level'
  entity SecondLevel as projection on my.SecondLevel;
  @title: 'Third Level'
  entity ThirdLevel as projection on my.ThirdLevel;
  @title: 'Nested Child'
  entity NestedChild as projection on my.NestedChild;
  @title: 'Deeply Nested Child'
  entity DeeplyNestedChild as projection on my.DeeplyNestedChild;
}

//annotate ListService.ThirdLevel with @odata.draft.enabled;
//annotate ListService.NestedChild with @odata.draft.enabled;
annotate ListService.DeeplyNestedChild with @odata.draft.enabled;
