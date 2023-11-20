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
       nlist_name: "Results list",
       index: 2
     },
     {
       product_name: "Product 3",
       product_id: "0003",
       product_price: 21.20,
       nlist_name: "Results list",
       index: 3
      }
    ]
  }
};
```
...and generate an array like the following one:
```
new_product_name_array: ["Product 1","Product 2","Product 3];
```
