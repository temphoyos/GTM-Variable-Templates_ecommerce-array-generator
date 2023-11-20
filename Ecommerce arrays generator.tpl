___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Ecommerce arrays generator",
  "description": "Unpack the GA4 ecommerce items array and return a single item properties array",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "itemProperty",
    "displayName": "Item property from which to generate and return an array",
    "simpleValueType": true,
    "valueHint": "Eg:  item_list_name",
    "valueValidators": [
      {
        "type": "NON_EMPTY",
        "errorMessage": "You must indicate what ecommerce item property you wish to generate array from."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

//Required API's
const copyFromDataLayer = require('copyFromDataLayer');

//Accessing the ecommerce.items array from dataLayer 
const ecommerceItems = copyFromDataLayer('ecommerce.items');
//Name of ecommerce item property from which to generate array 
const itemProperty = data.itemProperty;
//Generate empty array that will contain the indicated property value for all available items
const itemPropertiesArray = [];

//Code to generate new array!
//Iterating through the ecommerce.items array
ecommerceItems.forEach(function(items){
  for(const property in items){
    if(property === itemProperty){
      itemPropertiesArray.push(items[property]);
    }
  }
});


// Return a value
return itemPropertiesArray;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 18/11/2023, 12:38:35


