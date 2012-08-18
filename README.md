# MUSKUP

Mustache and coffeekup template engine for express 3.x. 

Use twitter's [hogan.js](https://github.com/twitter/hogan.js) engine and [coffeekup](https://github.com/mauricemach/coffeekup).

Supports
  - partials 
  - layout
  - caching
  - coffeekup precompilation

### Install

`npm install muskup`

### Usage

Setup:
```
muskup = require('muskup')
app.set('view engine', 'html')
app.set('layout', 'layout.ck') # rendering by default
app.set('partials', head: "head.ck") # partails using by default on all pages
app.enable('view cache')
app.engine 'html', muskup
app.engine 'ck', muskup
```

Rendering template:
```
app.get '/', (req,res)->
  res.locals = what: 'World'
  res.render "index", partials: {temp: 'temp.ck'}
```
(will render `layout.ck` with `index.html`, `head.ck` and `temp.ck` partials)

### License
MIT License