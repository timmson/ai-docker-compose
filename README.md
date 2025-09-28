# Ollama with pre-installed models

## Requirements

- Docker
- Docker Compose


## Build

```bash
# https://ollama.com/library/deepseek-coder-v2
docker build -t timmson/ollama-deepseek-coder-v2:1.0 ./images/deepseek-coder-v2

# https://ollama.com/library/qwen2.5-coder:3b
docker build -t timmson/qwen2.5-coder-3b:1.0 ./images/qwen2.5-coder-3b

# https://ollama.com/library/qwen2.5-coder:7b
docker build -t timmson/qwen2.5-coder-7b:1.0 ./images/qwen2.5-coder-7b

# https://ollama.com/library/qwen2.5-coder:14b
docker build -t timmson/qwen2.5-coder-14b:1.0 ./images/qwen2.5-coder-14b

# https://ollama.com/library/qwen2.5-coder:32b
docker build -t timmson/qwen2.5-coder-32b:1.0 ./images/qwen2.5-coder-32b

 https://ollama.com/library/qwen3-coder:30b
docker build -t timmson/qwen3-coder-30b:1.0 ./images/qwen3-coder-30b
```

## Run

```bash
docker-compose up -d
```

## Open

[http://localhost:8080/](http://localhost:8080/)
