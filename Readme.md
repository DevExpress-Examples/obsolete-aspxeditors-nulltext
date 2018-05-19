# OBSOLETE - ASPxEditors (ASPxComboBox, ASPxGridLookup, ASPxTextBox, etc) - How to implement the NullText using the HTML5 functionality


<p>This example illustrates how to assign the HTML5 <a href="http://dev.w3.org/html5/spec/single-page.html#the-placeholder-attribute"><u>placeholder</u></a> attribute to DevExpress editors. The placeholder attribute represents a short hint intended to get a user a tip with data entry when a control does not have a value.<br />
Since this attribute affects the <input> element, it is necessary to:</p><p>1. Obtain the internal editor's <input> element via the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxEditorsScriptsASPxClientEdit_GetInputElementtopic"><u>GetInputElement</u></a> method;<br />
2. Assign the placeholder attribute to the <input> element.</p><p>Do this in the client-side control Init event handler:</p>

```js
function OnCtrl_Init(s, e) {
       var inputElement = s.GetInputElement();
       inputElement.placeholder = "Type something";
}


```

<p>Unfortunately, Internet Explorer under version 10 does not support the placeholder attribute. If you need to provide compatibility with previous IE versions, it is better to change a null text yourself on control events, or use the approach we demonstrated in the following example: </p><p><strong>Note: </strong>Starting with v13.1, use the NullText property.</p>

<br/>


