# Ollama with pre-installed models

## Requirements

- Docker
- Docker Compose


## Build

```bash
# https://ollama.com/steamdj/llama3.1-cpu-only
docker build -t timmson/ollama-llama3.1-cpu-only ./images/llama3.1-cpu-only

# https://ollama.com/library/deepseek-coder-v2
docker build -t timmson/ollama-deepseek-coder-v2 ./images/deepseek-coder-v2
```

## Run

```bash
docker-compose up -d
```

## Open

[http://localhost:8080/](http://localhost:8080/)
