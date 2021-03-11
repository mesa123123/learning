# HTML ShadowDOM
#### Reference: https://www.youtube.com/watch?v=PCWaFLy3VUo

The shadow dom is a web standard that is used alongside custom web components allows. It is used primarily for encapsulation. Normally whatever attributes defined in a web page are placed on the web pages DOM. The shadow DOM acts as a gatekeeper so the attributes defined outside the web component cannot interfere with those defined inside the component.

In other words the Shadow DOM gives web components the power to style themselves on their own terms, and keeps the components self contained.

## Creation

Creation of a components shadow DOM occurs with the `element.attachShadow()` method.
This method creates a `shadowRoot` object that the dev can work with

## Encapsulated Styles in Web Components

In order to define a unique style for an element that will be rendered on a shadow DOM you must put it in the element itself

```html
    <template>
        <style>
            {...}
        </style>
        {...}
    </template>
```

This creates a custom set of style that will be used by the shadow DOM
In order to add this to the shadow DOM effectively you must use the following method in the js:

```javascript
    // Get a hold of the templates code
    let template = document.getElementById('template')
    let templateContent = template.content
    // Put that content on the root element of the shadow DOM
    const shadowRoot = this.attachShadow({mode: 'open'})
    shadowRoot.appendChild(templateContent.cloneNode(true));
```

The use of `Node.cloneNode` creates a clone of the template (think instance vs. object), to the shadowDOM, so it doesn't interfere with the template itself defined on the actual HTML (as this creates an interference with the DOM), and it isn't placed on the DOM so it isn't subject to any styles influencing the actual DOM

__ TAGS: __
_ #HTML #ShadowDOM #HTMLDOM #WebComponents _

