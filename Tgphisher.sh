#!/bin/bash

wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64

mv cloudflared-linux-amd64 cloudflared
chmod +x cloudflared

sudo mv cloudflared /usr/local/bin/
