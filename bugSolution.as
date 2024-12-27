The solution is to always check for null or undefined before accessing object properties:

```actionscript
var myObject:Object = getObject();
if (myObject != null && myObject.hasOwnProperty("someProperty")) {
  trace(myObject.someProperty);
} else {
  trace("myObject or someProperty is null or undefined.");
}
```

This revised code first verifies that `myObject` is not null and that it contains the property `someProperty` using `hasOwnProperty()`.  The `hasOwnProperty()` check prevents errors if `someProperty` was not defined on `myObject` even if it's not null.  Using this method provides a more robust and safer way to access object properties.