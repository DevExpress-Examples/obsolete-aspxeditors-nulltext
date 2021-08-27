<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/134059397/13.1.12%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4392)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [ScriptFile.js](./CS/ScriptFile.js) (VB: [ScriptFile.js](./VB/ScriptFile.js))
<!-- default file list end -->
# OBSOLETE - ASPxEditors (ASPxComboBox, ASPxGridLookup, ASPxTextBox, etc) - How to implement the NullText using the HTML5 functionality
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e4392)**
<!-- run online end -->


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


