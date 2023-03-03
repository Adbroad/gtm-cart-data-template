# gtm-cart-data-template
A GTM template to implement Google Ads cart data tracking easily. Developed by Lucas Arakelian.  

## What is it for  
This is a Google Tag Manager variable template that returns a ready-to-use "elements" object to implement Google Ads cart data tracking.  
Google Ads cart data reporting gives you insights about which products were sold through Shopping ads by linking to your Google Merchant Center feeds. It can also be combined with "cost_of_good_sold" field to get gross margin reports.  

### For more information
Google Ads cart data explanation: https://support.google.com/google-ads/answer/9028254?hl=en
Google Ads cart data official implementation doc: https://support.google.com/google-ads/answer/9028614?hl=en
About gross margin reports: https://support.google.com/merchants/answer/9017895

## How does it work
This template will look in your website's datalayer at the "purchase" stage and automatically return a ready-to-use "items" object with proper formatting, aligned with Google Ads requirements for Cart Data implementation.  

If you have already implemented a datalayer with Universal Analytics (UA) or Google Analytics 4 (GA4) format for tracking purposes, **this template will work with no further configuration** (provided your datalayer follows the official Analytics formats).  
If you have a custom datalyer, see the [next section](#how-to-use).

## How to use
In most cases, the variable will work with no additional configuration. However, you may need to do some config in the following cases.  

### Adding formatting to product IDs
As is often the case when using CMS modules for example, the product IDs found in your datalayer will not exactly match those in your Google Merchant Center feeds. To solve this, you have the ability to make edits to the product IDs returned by this template. 

#### String replacements
You can make as many string replacements as you want in your product IDs using the "Product IDs replacement table". To do this, go to "Optional parameters > Product IDs replacement table".  
You can also choose to replace only one or all the occurences of each string. By default, all occurrences will be replaced.  

#### Adding a prefix
Sometimes you may need to add a prefix to your product IDs. You can do that in "Optional parameters > Optional ID Prefix".

#### Adjusting the case of your product IDs
You may need to capitalize or lower-case your product IDs. You can do that in "Optional parameters > ID case management".  
By default, the IDs remain untouched. Also, capitalize or lower-case transformations will be applied **first**, before any string replacement or prefix. This means your string replacement or prefix will not be affected. Make sure to use proper case for those. 

### Custom datalayer
If your datalayer doesn't follow UA or GA4 formats, you can still use this template. You will need to specify the path to the "items" (or equivalent) object in your purchase datalayer, and the property names of the price, quantity and id keys in "Optional parameters > Optional parameters for custom datalayers". 

For instance, if your datalayer looks like this :  
```
{
  event: 'purchase',
  order: {
    revenue: 150,
    tax: 25,
    items: [{
      product_id: 'myproduct',
      product_qty: 1,
      product_price: 150
    }]
  }
}
```

You will need to specify the following arguments :  
![image](https://imgur.com/a/hGzbYF5)

Make sure this exactly matches what is found in your datalayer. Case matters.

## Questions/remarks
