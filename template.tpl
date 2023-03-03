___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Google Ads Cart Data Formatter",
  "description": "Fetches product data from the datalayer and returns it with the proper formatting for Google Ads Cart Data tracking. Compatible with both UA and GA4-style datalayers.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "optional",
    "displayName": "Optional parameters",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "GROUP",
        "name": "product_id_editor",
        "displayName": "Optional parameters to edit product IDs",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "SIMPLE_TABLE",
            "name": "id_replace_table",
            "displayName": "Product IDs replacement table",
            "simpleTableColumns": [
              {
                "defaultValue": "",
                "displayName": "String to replace",
                "name": "to_replace",
                "type": "TEXT"
              },
              {
                "defaultValue": "",
                "displayName": "Replacement string",
                "name": "replacement_string",
                "type": "TEXT"
              }
            ],
            "help": "Enter a string and its replacement for each line. \u003cbr\u003eReplacements will be made in all product IDs.\u003cbr\u003e\u003cbr\u003eStrings will be replaced in the order they appear in the table, allowing for chain replacement.\u003cbr\u003e\u003cbr\u003e\u003cstrong\u003eExample\u003c/strong\u003e\u003cbr\u003e\nOriginal ID : FR15-25\u003cbr\u003e\nRow 1 | \u003ci\u003eString to replace :\u003c/i\u003e - | \u003ci\u003eReplacement string :\u003c/i\u003e v\u003cbr\u003e\nRow 2 | \u003ci\u003eString to replace :\u003c/i\u003e v | \u003ci\u003eReplacement string :\u003c/i\u003e V\u003cbr\u003e\nResulting ID : FR15V25"
          },
          {
            "type": "RADIO",
            "name": "matchMultipleRadio",
            "displayName": "Replace one or all occurrences of each string",
            "radioItems": [
              {
                "value": true,
                "displayValue": "Yes"
              },
              {
                "value": false,
                "displayValue": "No"
              }
            ],
            "simpleValueType": true,
            "help": "If \u003cstrong\u003eYes\u003c/strong\u003e, all occurences of each string in the above table will be replaced in product IDs.\u003cbr\u003e\nIf \u003cstrong\u003eNo\u003c/strong\u003e, only the first occurence will be replaced.\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eExample\u003c/strong\u003e\u003cbr\u003e\nOriginal ID : \u003ci\u003eFR55-2-15\u003c/i\u003e\u003cbr\u003e\nReplacement : replace \"-\" by \"v\"\u003cbr\u003e\nResulting ID :\n\u003col\u003e\u003cstrong\u003eYes\u003c/strong\u003e : FR55v2v15\u003c/ol\u003e\n\u003col\u003e\u003cstrong\u003eNo\u003c/strong\u003e : FR55v2-15\u003c/ol\u003e"
          },
          {
            "type": "TEXT",
            "name": "id_prefix",
            "displayName": "Optional ID Prefix",
            "simpleValueType": true,
            "help": "Add an optional prefix to all product IDs.\u003cbr\u003e\u003cbr\u003e\u003cstrong\u003eExample\u003c/strong\u003e\u003cbr\u003eOriginal ID : 554\u003cbr\u003ePrefix : \u003ci\u003eMYSHOP_\u003c/i\u003e\u003cbr\u003eResulting ID : \u003ci\u003eMYSHOP_554\u003c/i\u003e"
          },
          {
            "type": "SELECT",
            "name": "id_case_dropdown",
            "displayName": "ID case management",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "upperCase",
                "displayValue": "Capitalize"
              },
              {
                "value": "lowerCase",
                "displayValue": "Lower case"
              },
              {
                "value": "",
                "displayValue": "Untouched"
              }
            ],
            "simpleValueType": true,
            "help": "Choose whether to capitalize, lower case or leave the case untouched.\u003cbr\u003eCapitalization occurs \u003cstrong\u003ebefore\u003c/strong\u003e adding prefix and replacements.\u003cbr\u003e\u003cstrong\u003eUntouched\u003c/strong\u003e by default.\u003cbr\u003e\u003cbr\u003e\n\u003cstrong\u003eExamples\u003c/strong\u003e\u003cbr\u003e\nOriginal id: \u003ci\u003ePrd554\u003c/i\u003e\u003cbr\u003e\nCapitalize : \u003ci\u003ePRD554\u003c/i\u003e\u003cbr\u003e\nLower case : \u003ci\u003eprd554\u003c/i\u003e\u003cbr\u003e\nUntouched (default) : \u003ci\u003ePrd554\u003c/i\u003e",
            "defaultValue": ""
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "custom_datalayer_parameters",
        "displayName": "Optional parameters for custom datalayers",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "TEXT",
            "name": "path_to_items",
            "displayName": "Path to product items array",
            "simpleValueType": true,
            "help": "The path to the array which contains the list of items in the orders, starting from the root of the datalayer, in JSON format. Case sensitive.\u003cbr\u003e\u003cbr\u003e\u003ci\u003eExample: ecommerce.items\u003c/i\u003e"
          },
          {
            "type": "TEXT",
            "name": "price_keyName",
            "displayName": "Name of price key",
            "simpleValueType": true,
            "help": "The name of the object key containing the price of the each product. Case sensitive.\u003cbr\u003e\u003cbr\u003e\u003ci\u003eExample : price, product_price...\u003c/i\u003e"
          },
          {
            "type": "TEXT",
            "name": "quantity_keyName",
            "displayName": "Name of quantity key",
            "simpleValueType": true,
            "help": "The name of the object key containing the quantity of each product. Case sensitive.\u003cbr\u003e\u003cbr\u003e\u003ci\u003eExample : qty, quantity...\u003c/i\u003e"
          },
          {
            "type": "TEXT",
            "name": "id_keyName",
            "displayName": "Name of ID key",
            "simpleValueType": true,
            "help": "The name of the object key containing the ID of each product. Case sensitive.\u003cbr\u003e\u003cbr\u003e\u003ci\u003eExample : id, product_id, item_id...\u003c/i\u003e"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Require APIs
const log = require('logToConsole');
const datalayer = require('copyFromDataLayer');

const setCookie = require('setCookie');
const getCookie = require('getCookieValues');

const JSON = require('JSON');
const window = require('copyFromWindow');

/**
* Returns an object property from its string path.
* @param {Object} o The object
* @param {string} s The string path
**/
const ofs = function(o, s) {
  var a = s.split('.');
  let newO;
  for(let k of a) {
    if(!newO) {
      newO = o[k];
    } else {
      newO = newO[k];
    }
  }
  return newO;
};

/**
* Returns a product ID with proper replacements if user specified any.
* @param {string} productId The ID of a product
* @param {Object} data The global "data" variable containing all user-entered parameters
* @returns {string}
**/
const generateProductId = function(productId, data) {  
  // Case management
  if(data.id_case_dropdown) {
    productId = data.id_case_dropdown == 'upperCase' ? productId.toUpperCase() : productId.toLowerCase();
  }
  
  // Add prefix if needed
  productId = data.id_prefix ? data.id_prefix + productId : productId;

  // Check if any replacement is specified by user
  if(data.id_replace_table.length > 0) {
    data.id_replace_table.forEach(matchRule => {
      const toReplace = matchRule.to_replace;
      const replaceValue = matchRule.replacement_string;

      productId = data.matchMultipleRadio ?
        // If all occurences must be replaced
        productId.split(toReplace).join(replaceValue) :
      // If only one occurence needs to be replaced
      productId.replace(toReplace, replaceValue);
    });
  }

  return productId;
};

// Start of Custom DL case
if(data.path_to_items) {
  log('intheif');
  var cartDataCookie = getCookie('cartData');
  let dl = window('dataLayer');
  // Retrieve the data in the last push of the datalayer only.
  dl = dl[dl.length -1];

  // Access an object property based on its path string, provided by user in the "path_to_items" field.
  const cdl_items = ofs(dl, data.path_to_items);

  // If we are in a datalayer push that doesnt' contain item data, check if the cookie is set. If it is, return it.
  // Otherwise, keep going.
  if(!cdl_items) {
    if(cartDataCookie.length > 0) {
      return JSON.parse(cartDataCookie);
    } else {
      return "No item data in datalayer and cookie not found";
    }
  }

  const cartDataItems = cdl_items.map(item => {
    return {
      "id": generateProductId(item[data.id_keyName], data),
      "price": item[data.price_keyName],
      "quantity": item[data.quantity_keyName]
    };
  });

  // If the current variable evaluation allows to find item data, set it into a cookie to persist it to other
  // evaluations. Needed to workaround an issue where variable is only populated on "gtm.js" event.
  if(cartDataItems) {
    // If cartData cookie has already been set in past evaluations
    if(cartDataCookie.length > 0) {
      // If cookie value is the same as current evaluation items, just return the cookie
      if(JSON.parse(cartDataCookie) == cartDataItems) {
        return JSON.parse(cartDataCookie);
      }
    }
    setCookie('cartData', JSON.stringify(cartDataItems));
  }

  return JSON.parse(getCookie('cartData'));
}

// Start of Analytics formatted datalayers
const dl_ecommerce = datalayer('ecommerce');

if(!dl_ecommerce) {
  return "Analytics datalayer has no ecommerce property. Consider using custom-datalayer options.";
}

var dl_ecommerceItems;

// GA4 format
if(dl_ecommerce.hasOwnProperty('items')) {
  dl_ecommerceItems = dl_ecommerce.items;
}

// UA format
if(dl_ecommerce.hasOwnProperty('purchase') && dl_ecommerce.purchase.hasOwnProperty('products')) {
  dl_ecommerceItems = dl_ecommerce.purchase.products;
}

if(!dl_ecommerceItems) {
  return "Malformed datalayer. Couldn't find neither 'items' nor 'products' key in the 'ecommerce' property of your Analytics datalayer. Consider using custom-datalayer options.";
}

const cartDataItems = dl_ecommerceItems.map(item => {
  return {
    "id": generateProductId(item.id, data),
    "quantity": item.quantity,
    "price": item.price
  };
});

// Les variables doivent renvoyer une valeur.
return cartDataItems || undefined;


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
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.*"
              },
              {
                "type": 1,
                "string": "event"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "cartData"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cartData"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
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

scenarios:
- name: Untitled test 1
  code: |-
    const mockData = {
      path_to_items: 'lol'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);


___NOTES___

Created on 03/03/2023 15:58:08


