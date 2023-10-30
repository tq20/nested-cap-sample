using { sap.capire.sample as my } from '../db/schema';

service ListService {
  @title: 'First Level'
  entity FirstLevel as projection on my.FirstLevel;
  @title: 'Second Level'
  entity SecondLevel as projection on my.SecondLevel;
  @title: 'Third Level'
  entity ThirdLevel as projection on my.ThirdLevel;
}

annotate ListService.ThirdLevel with @odata.draft.enabled;
