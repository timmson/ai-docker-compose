FROM vllm/vllm-openai:latest

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh
COPY model /app/model

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 11434