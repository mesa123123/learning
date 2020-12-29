# Custom HTML Elements
#### Reference: https://youtu.be/PCWaFLy3VUo

Custom HTML Elements are a web standard that allows developers to make web elements within their web app whose functionality can be completely defined and built by the developer.

## Creation

Creating a custom element starts within the apps javascript:

```javascript
    class AppDrawer extends HTMLElement {...}
    window.customElement.define('app-drawer', AppDrawer)
```
In the code above is the two js lines that are needed to create a custom element, the new js class extends `HTMLElement` (though this can be any child class also), and the `window.customElement.define()` method takes what has been defined in the class and makes it useable by the HTML page.

_NOTE: it is customary to include a '-' character in the naming of custom elements_

__ TAGS: __
_ #CustomHTMLElements #WebComponents  _ 
