#!/bin/bash 

cd /app/ssbc/spider
pm2 start ecosystem.config.js
sleep infinity