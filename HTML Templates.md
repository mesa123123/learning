# HTML Templates
#### Reference: _ https://www.youtube.com/watch?v=PCWaFLy3VUo _

Templates are a way to get around writing the same html on a web page over and over again, and creating a blueprint that the Javascript can insert into the DOM where needed.

## Creation

You create an html template with the following syntax:

```html
    <template id="template-id"> ... <template>
```

Then using the template-id you can put it into the DOM via the web apps js.

```javascript
    let template = document.getElementById('template-id');
    let templateContent = template.content;
    document.body.appendChild(templateContent);
```

Also see [Web Components](./Web Components.md) as they can add significant power to the templates rendering capabilities

With this the element can be inserted anywhere on the DOM, this does not allow for dynamic content.

## Dynamic Templates

See [Slots](./HTML Slots.md)

__ TAGS: __
_ #HTML #HTMLTemplates _

