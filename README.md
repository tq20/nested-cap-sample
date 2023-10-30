# nested-cap-sample

CAP sample to demonstrate change-tracking for a [nested model](./db/schema.cds).

We want to track changes on the **number** property (on a deeply nested child entity) with a human-readable *Object ID* that consists of the **name** property (on 1st level).

Hence, we annotate as follows:

```cds
annotate ListService.DeeplyNestedChild with @changelog: [ parent.parent.secondLevel.firstLevel.name ] {
  number @changelog @Common.Label: 'Number';
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

http://localhost:4004/deep/webapp/index.html#/DeeplyNestedChild(ID=1,IsActiveEntity=true)

Making a change on **Number** (1 → 1000) yields the expected results, with an **Object ID** of *Name 1* (i.e. the associated entry on first level):

<img width="1164" alt="Screenshot 2023-10-30 at 21 50 23" src="https://github.com/mnkiefer/nested-cap-sample/assets/8320933/149489d3-461d-4059-9d9e-223af8255c66">
