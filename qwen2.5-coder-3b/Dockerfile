FROM ollama/ollama:0.13.5

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull qwen2.5-coder:3b

CMD ["serve"]
