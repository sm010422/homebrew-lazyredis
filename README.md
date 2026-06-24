# homebrew-lazyredis

Homebrew tap for [LazyRedis](https://github.com/sm010422/lazyredis) — a lazygit-inspired terminal UI for Redis.

## Install

```bash
brew tap sm010422/lazyredis
brew install lazyredis
```

## Usage

```bash
lazyredis                          # connect to localhost:6379
lazyredis --host myhost --port 6380
lazyredis --pass secret --db 1
lazyredis --tls
```

## Update

```bash
brew update && brew upgrade lazyredis
```
