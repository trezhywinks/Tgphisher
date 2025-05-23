const colors = require("colors");
const express = require("express");
const path = require("path");
const qrcode = require("qrcode-terminal");
const app = express();
const port = "4040";
const server = "http://localhost:8080";
console.log("Hi, user. welcome to script main.js".white.bold);


app.use(express.static('server.tg'));

app.get('/server', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'index.html'));
});

app.get('/ico', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'favicon.ico'))
});

qrcode.generate(server, {small: true}, function(qrcode) {
console.log(qrcode);
});

app.listen(port, () => {
console.log(`[+] Server Running in PORT =>`.white.bold +` ${port}`.yellow.bold);
})
