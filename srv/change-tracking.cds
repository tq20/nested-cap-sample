using { sap.capire.sample } from './list-service';

// annotate ListService.ThirdLevel with @changelog: [ secondLevel.firstLevel.name ] {
//   additionalInfo @changelog @Common.Label: 'Additional Info';
// }

// annotate ListService.NestedChild with @changelog: [ parent.secondLevel.firstLevel.name ] {
//   value @changelog @Common.Label: 'Value';
// }

annotate ListService.DeeplyNestedChild with @changelog: [ parent.parent.secondLevel.firstLevel.name ] {
  number @changelog @Common.Label: 'Number';
}