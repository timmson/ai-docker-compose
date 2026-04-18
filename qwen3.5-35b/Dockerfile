FROM ollama/ollama:latest

COPY Modelfile ./Modelfile

ENV OLLAMA_KEEP_ALIVE=-1
ENV OLLAMA_CONTEXT_LENGTH=131072

RUN nohup bash -c "ollama serve &" && \
    sleep 3 && \
    ollama create qwen3.5:35b -f Modelfile

CMD ["serve"]
