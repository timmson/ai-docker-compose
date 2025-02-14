FROM ollama/ollama:0.5.11

RUN nohup bash -c "ollama serve &" && sleep 5 && ollama pull steamdj/llama3.1-cpu-only

CMD ["serve"]
