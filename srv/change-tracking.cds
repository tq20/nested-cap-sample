using { sap.capire.sample } from './list-service';

annotate ListService.ThirdLevel with @changelog: [ secondLevel.firstLevel.name ] {
  additionalInfo @changelog @Common.Label: 'Additional Info';
}
