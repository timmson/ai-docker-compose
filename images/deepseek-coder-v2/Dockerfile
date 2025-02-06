FROM ollama/ollama:0.5.7

# Предварительная загрузка модели deepseek при сборке образа
RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull deepseek-coder-v2:16b

# Запуск сервера ollama
CMD ["serve"]
