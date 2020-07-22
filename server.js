const express = require('express')
const response = require('./configs/response') // import ค่ามาจาก response.js
const app = express()

app.get('/', (req, res) => {
  res.send(response.firstResponse)
})

// port
app.listen(3000, () => {
  console.log('Start server at port 3000.')
})