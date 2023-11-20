# GTM-Variable-Templates_ecommerce-arrays-generator
A simple GTM variable custom template that unpacks the dataLayer ecommerce items array and returns an item properties array.

# Purpose of this Google Tag Manager variable custom template
The purpose of this variable custom template is to flatten the nested GTM ecommerce dataLayer in order to generate an array containing the values of a given item property of all available items. This way these values can be then mapped more easily to vendors that might require this format. 

As an example, this variable template would take all the product_name keys of all the available items of the following GTM enhanced ecommerce dataLayer...

```
{
  event: "view_item_list",
  ecommerce: {
    items: [
     {
       product_name: "Product 1",
       product_id: "0001",
       product_price: 15.25,
       list_name: "Results list",
       index: 1
     },
     {
       product_name: "Product 2",
       product_id: "0002",
       product_price: 33.75,
       list_name: "Results list",
       index: 2
     },
     {
       product_name: "Product 3",
       product_id: "0003",
       product_price: 21.20,
       list_name: "Results list",
       index: 3
      }
    ]
  }
};
```
...and generate an array like the following one:

```
new_product_name_array: ["Product 1","Product 2","Product 3"];
```
# How to use this custom variable template
The first step is to download the Ecommerce arrays generator.tpl file from this repository and to upload it to your Google Tag Manager container from the templates section. 

<img width="1276" alt="Captura de pantalla 2023-11-20 a las 22 20 00" src="https://github.com/temphoyos/GTM-Variable-Templates_ecommerce-array-generator/assets/87236758/7a45b981-e6d3-4b2b-9529-d55cab04656f">

Once the .tpl file has been successfully added to your container proceed to create a new variable and select 'Ecommerce arrays generator' as the variable type.

![Captura de pantalla 2023-11-20 a las 22 22 44](https://github.com/temphoyos/GTM-Variable-Templates_ecommerce-array-generator/assets/87236758/77212a02-5a69-45ac-aa86-8ff6e3b71486)

Type the item or items property name you wish to generate an array from in the 'Item property from which to generate and return an array' template text box. You may generate an array from any item or items property, the only condition is that it is contained within the itmes array of the ecommerce object.

![Captura de pantalla 2023-11-20 a las 22 24 45](https://github.com/temphoyos/GTM-Variable-Templates_ecommerce-array-generator/assets/87236758/497fd343-d6fb-4cf4-9c2a-6611eec68b54)

This variable will be reevaluated each time an event passes through the Google Tag Manager dataLayer


