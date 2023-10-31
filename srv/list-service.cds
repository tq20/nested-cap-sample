using { sap.capire.sample as my } from '../db/schema';

service ListService {
  @title: 'Third Level'
  entity ThirdLevel as projection on my.ThirdLevel;
  @title: 'Nested Child'
  entity NestedChild as projection on my.NestedChild;
}

annotate ListService.ThirdLevel with @odata.draft.enabled;
