const express = require('express')
const mysql = require('mysql')
const bodyParser = require('body-parser')
const http = require('http')
const multer = require('multer')
const cors = require('cors')

const app = express()
const port = process.env.PORT || 3000
const server = http.createServer(app)

app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use('/uploads', express.static(__dirname + '/uploads'))

// initilize multer for storage
let storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, './uploads')
  },
  filename: function(req, file, cb) {
    cb(null, file.originalname)
  }
})

let upload = multer({ storage: storage })

// establish db connection
const dbConnect = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'dbs'
})

// default route
app.get('/', (req, res) => {
  dbConnect.connect(error => {
    if (error) throw error
  })
})

// retrieve all comment
app.get('/read', (req, res) => {
  dbConnect.query('SELECT * FROM comments', (error, data, fields) => {
    if (error) throw error

    res.setHeader('Content-Type', 'application/json')
    res.send(JSON.stringify(data))
  })
})

// retrieve comment search keyword
app.post('/search', (req, res) => {
  dbConnect.query(
    'SELECT * FROM comments WHERE (comment LIKE ' +
      "'" +
      req.body.todb.keyword +
      "')",

    (error, data, fields) => {
      if (error) throw error

      res.setHeader('Content-Type', 'application/json')
      res.send(JSON.stringify(data))
    }
  )
})

// add a new comment and picture
app.post('/create', upload.single('file'), (req, res) => {
  let username = req.body.todb.username
  let comment = req.body.todb.comment
  let photo = req.body.todb.photo
  let date = req.body.todb.date

  dbConnect.query(
    'INSERT INTO comments (username, comment, photo, date) VALUES (' +
      "'" +
      username +
      "','" +
      comment +
      "','" +
      photo +
      "','" +
      date +
      "')",
    (error, data, fields) => {
      if (error) throw error
    }
  )
})

// delete
app.post('/delete', (req, res) => {
  dbConnect.query(
    'DELETE FROM comments WHERE ID=' + req.body.todb.entryId,
    (error, data, fields) => {
      if (error) throw error
      res.setHeader('Content-Type', 'application/json')
      res.send(JSON.stringify(data))
    }
  )
})

// feed port
server.listen(port, () => console.log('Listening on ' + port))
