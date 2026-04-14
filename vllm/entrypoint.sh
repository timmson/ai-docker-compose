#!/bin/bash

# 1. Автоматическое определение количества GPU, если TP_SIZE не задан
if [ -z "$TP_SIZE" ]; then
    if command -v nvidia-smi &> /dev/null; then
        # Считаем количество строк с UUID видеокарт
        GPU_COUNT=$(nvidia-smi -L | wc -l)
        echo "Detected $GPU_COUNT GPUs. Setting TP_SIZE to $GPU_COUNT."
        TP_SIZE=$GPU_COUNT
    else
        echo "nvidia-smi not found, defaulting TP_SIZE to 1."
        TP_SIZE=1
    fi
fi

# 2. Настройка параметров по умолчанию
MODEL="qwen3.5:2b"
PORT=11434
GPU_UTIL=${GPU_UTIL:-0.8}
MAX_MODEL_LEN=${MAX_MODEL_LEN:-65536}
DTYPE=${DTYPE:-"auto"}
TOOLS=${TOOLS:-"--enable-auto-tool-choice --tool-call-parser hermes"}
EXTRA_ARGS=${EXTRA_ARGS:-""}

# 3. Вывод итоговой конфигурации для логов
echo "Starting vLLM with:"
echo " - Model: $MODEL"
echo " - Port: $PORT"
echo " - Tensor Parallel Size: $TP_SIZE"
echo " - GPU Utilization: $GPU_UTIL"
echo " - Max Context Length: $MAX_MODEL_LEN"
echo " - Tools: $TOOLS"
echo " - Extra arguments: $EXTRA_ARGS"

# 4. Запуск vLLM
exec vllm serve "/app/model" \
    --port $PORT \
    --served-model-name "$MODEL" \
    --tensor-parallel-size "$TP_SIZE" \
    --gpu-memory-utilization "$GPU_UTIL" \
    --max-model-len "$MAX_MODEL_LEN" \
    --dtype "$DTYPE" \
    $TOOLS \
    $EXTRA_ARGS