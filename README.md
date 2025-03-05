# Ollama with pre-installed models

## Requirements

- Docker
- Docker Compose


## Build

```bash
# https://ollama.com/steamdj/llama3.1-cpu-only
docker build -t timmson/ollama-llama3.1-cpu-only:1.0 ./images/llama3.1-cpu-only

# https://ollama.com/library/deepseek-coder-v2
docker build -t timmson/ollama-deepseek-coder-v2:1.0 ./images/deepseek-coder-v2

# https://ollama.com/library/qwen2.5-coder:7b
docker build -t timmson/qwen2.5-coder-7b:1.0 ./images/qwen2.5-coder-7b

# https://ollama.com/library/qwen2.5-coder:3b
docker build -t timmson/qwen2.5-coder-3b:1.0 ./images/qwen2.5-coder-3b

# https://ollama.com/library/deepseek-r1:1.5b
docker build -t timmson/deepseek-r1-1.5b:1.0 ./images/deepseek-r1-1.5b
```

## Run

```bash
docker-compose up -d
```

## Open

[http://localhost:8080/](http://localhost:8080/)
