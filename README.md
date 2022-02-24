# Bi-directon proxy based on openfortivpn

## Overview
1. Create a tunnel to private network inside fortivpn
2. create a tunnel back using local computer's proxy (e.g. clash) for internet connection

## Usage
```bash
cp config.example config
vim config
docker compose build
docker compose up (-d for running in background)
```