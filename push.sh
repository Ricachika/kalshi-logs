#!/bin/bash
cd /root/kalshi-sync
cp /root/kalshi-bot/data/*.csv . 2>/dev/null
date -u > last_sync.txt
git add -A
git commit -m "sync $(date -u +%F_%H%M)" >/dev/null 2>&1
git push -u origin main >/dev/null 2>&1
