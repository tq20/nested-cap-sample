using { sap.capire.sample } from './list-service';

annotate ListService.ThirdLevel with @changelog: [ additionalInfo ] {
  additionalInfo @changelog @Common.Label: 'Additional Info';
}

annotate ListService.NestedChild with @changelog: [ parent.additionalInfo ] {
  value @changelog @Common.Label: 'Value';
}
