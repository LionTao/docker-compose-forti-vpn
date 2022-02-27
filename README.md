# Bi-direction proxy based on openfortivpn

## Overview
1. Create a tunnel to private network inside fortivpn
2. create a tunnel back using local computer's proxy (e.g. clash) for internet connection\

## Prerequisite

1. docker compose (V2 recommanded)

## Usage
```bash
git clone 
cp config.example config
vim config
docker compose build
docker compose up (-d for running in background)
```