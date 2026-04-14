FROM ollama/ollama:latest

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull qwen3.5:9b

CMD ["serve"]
