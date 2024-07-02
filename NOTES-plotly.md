The code uses [plotly.js](https://plotly.com/javascript/). At the time of writing this,
the current version was 2.33.0. It should be updated if there are significant bug fixes or
security issues.

Custom Bundle
-------------

In order to reduce the size of the Javascript, we generate a [custom bundle](https://github.com/plotly/plotly.js/blob/master/CUSTOM_BUNDLE.md) only supporting the
scatter plot functionality:


```
npm i plotly.js
cd node_modules/plotly.js
npm i
npm run custom-bundle -- --out scatter --traces scatter --strict
```

`--strict` should improve compatibiltiy with CSP.

Content Security Policy
-----------------------

**plotly.js** is not fully compatible with a strict *Content Security Policy*.

* *style-src: 'unsafe-inline'* is required to allow CSS modifications.
* *img-src: blob:* is required for PNG image exports.
