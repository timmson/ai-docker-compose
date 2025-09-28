FROM ollama/ollama:0.12.3

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull qwen3-coder:30b

CMD ["serve"]
