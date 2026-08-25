#!/bin/sh
set -e

PERSIST=/config

mkdir -p "$PERSIST/prisma"
mkdir -p "$PERSIST/floorplans"
mkdir -p "$PERSIST/icons"
mkdir -p "$PERSIST/data"

mkdir -p /app/prisma/data
mkdir -p /app/floorplans
mkdir -p /app/icons
mkdir -p /app/data

# 第一次啟動時，把 image 內建 icon 複製到持久化目錄
if [ -z "$(ls -A "$PERSIST/icons" 2>/dev/null)" ]; then
  cp -r /app/client/icons/. "$PERSIST/icons/" 2>/dev/null || true
fi

# 將 Aura Grid 的資料目錄指向持久化位置
rm -rf /app/prisma/data
rm -rf /app/floorplans
rm -rf /app/icons
rm -rf /app/data

ln -s "$PERSIST/prisma" /app/prisma/data
ln -s "$PERSIST/floorplans" /app/floorplans
ln -s "$PERSIST/icons" /app/icons
ln -s "$PERSIST/data" /app/data

redis-server --daemonize yes

cd /app

npx prisma db push --accept-data-loss

exec node dist/main
