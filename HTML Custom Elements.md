# Custom HTML Elements
#### Reference https://youtu.be/PCWaFLy3VUo_

Custom HTML Elements are a web standard that allows developers to make web elements within their web app whose functionality can be completely defined and built by the developer.

## Creation

Creating a custom element starts within the apps javascript:

```javascript

class AppDrawer extends HTMLElement {...}
window.customElement.define('app-drawer', AppDrawer)

//Or Alternatively

customElements.define('app-drawer', class AppDrawer extends HTMLElement {...} );

```

You can then render the component on the page with:

```html
    <app-drawer></app-drawer>
```

In the javascript code above is the two js lines that are needed to create a custom element, the new js class extends `HTMLElement` (though this can be any child class also), and the `window.customElement.define(<html tag name>, <class name>)` method takes what has been defined in the class and makes it useable by the HTML page.

_NOTE: it is customary to include a '-' character in the naming of custom elements_

## LifeCycle Methods

There are a few important lifecycle methods which need to deal with the various behaviours that need to be defined for the component:

* `constructor()`
    * Called when an instance of the element is created
    * Is good for start up tasks, e.g. initializing state
    * See More [Constructors](./Constructors.md)
* `connectedCallback()`
    * Is triggered when the element is inserted into the DOM
    * See More [HTML DOM](./HTML DOM.md)
* `disconnectedCallback()`
    * Is triggered when the element is removed from the DOM
* `attributeChangedCallback(attributeName, oldValue, newValue)`
    * Is triggered when an attirbute within the component is added, removed, updated, or replaced
    * See More [HTML Attributes](./HTML Attributes.md)

__ TAGS: __
_ #CustomHTMLElements #WebComponents #HTML_
