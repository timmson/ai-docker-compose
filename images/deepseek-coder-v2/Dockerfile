FROM ollama/ollama:0.5.11

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull deepseek-coder-v2:16b

CMD ["serve"]
