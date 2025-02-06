FROM ollama/ollama:latest

# Предварительная загрузка модели deepseek при сборке образа
RUN ollama pull deepseek-coder-v2:16b

# Запуск сервера ollama
CMD ["ollama", "serve"]