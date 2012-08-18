express = require 'express'

muskup = require('../muskup')

app = express()

app.set('view engine', 'html')
app.set('layout', 'layout.ck')
app.set('partials', head: "head.ck")

#app.enable('view cache')

app.engine 'html', muskup
app.engine 'ck', muskup
app.set('views', __dirname + '/views')

app.use(express.bodyParser())
app.use(app.router)

app.get '/', (req,res)->
  res.locals = what: 'World'
  res.render "index", partials: {temp: 'temp.ck'}


app.listen(3000)