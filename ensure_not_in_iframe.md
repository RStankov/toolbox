# Ensure not in iframe

Oftentimes you want to make sure your site isn't being IFRAME'd.  Sometimes it's for security reasons, other times it's so your site's content isn't being skimmed else, and other times it's...oh, who cares, you just want to do it.

```js
if (top.location != self.location) {
    top.location = self.location.href;
}
```


## Installation

* copy `ensure_not_in_iframe.js` to `app/assets/javascript/.../ensure_not_in_iframe.js`

## Usage

Just in the manifest file of your application add:

```js
// require ./.../ensure_not_in_iframe
```

## Discussion

An improvement can be that the script could lead just stop every javascript and with `setInterval` display an alert box to the user explaning the situation

### Credits:

[David Walsh](http://davidwalsh.name/javascript-framebuster)
[Stack overflow](http://stackoverflow.com/questions/958997/frame-buster-buster-buster-code-needed)
