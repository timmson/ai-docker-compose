FROM ollama/ollama:0.5.11

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull qwen2.5-coder:32b

CMD ["serve"]
