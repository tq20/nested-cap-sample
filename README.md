# nested-cap-sample

CAP sample to demonstrate change-tracking for a [nested model](./db/schema.cds).

We want to track changes on the **additionalInfo** property (on 3rd level) with a human-readable *Object ID* that consists of the **name** property (on 1st level).

Hence, we annotate as follows:

```cds
using { sap.capire.sample } from './list-service';

annotate ListService.ThirdLevel with @changelog: [ secondLevel.firstLevel.name ] {
  additionalInfo @changelog @Common.Label: 'Additional Info';
}
```


## Setup

In the samples folder run:
```
npm i
```

## Run

With that you are ready to run the sample application:

```
cds w
```

After that open the link below in your browser to navigate to the Object page of the 3rd level entity:

http://localhost:4004/sample/webapp/index.html#/ThirdLevel(ID=1,IsActiveEntity=true)


Making a change on **Additional info** yields the expected results with an **Object ID** of *Name 1*, (i.e. the associated data entry on first level):

<img width="1164" alt="Screenshot 2023-10-30 at 20 48 48" src="https://github.com/mnkiefer/nested-cap-sample/assets/8320933/1eedbd33-6872-491a-b27a-7c20920212d9">
