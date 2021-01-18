const express = require('express')
const path = require('path'); 
const response = require('./configs/response') // import ค่ามาจาก response.js
const app = express()

// app.get('/', (req, res) => {
//   res.send(response.firstResponse)
// })

// // port thinkpad-wallpaper.jpg
// app.listen(3000, () => {
//   console.log('Start server at port 3000.')
// })

// get path from my project ==> __dirname
// get path from my computer
app.use(express.static(path.join('/home', 'mandarin')));
app.listen(3500, function () {
    console.log('Express server is listening, use this url - localhost:3500/icon.jpg');
});