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
GPU_UTIL=${GPU_UTIL:-0.95}
MAX_MODEL_LEN=${MAX_MODEL_LEN:-16384}
DTYPE=${DTYPE:-"auto"}
TOOLS=${TOOLS:-"--enable-auto-tool-choice --tool-call-parser hermes"}
EXTRA_ARGS=${EXTRA_ARGS:-""}

# 3. Вывод итоговой конфигурации для логов
echo "Starting vLLM with:"
echo " - Tensor Parallel Size: $TP_SIZE"
echo " - GPU Utilization: $GPU_UTIL"
echo " - Max Context Length: $MAX_MODEL_LEN"
echo " - Extra arguments: $EXTRA_ARGS"

# 4. Запуск vLLM
exec vllm serve "/app/model" \
    --port 11434 \
    --served-model-name "qwen3.5:4b" \
    --tensor-parallel-size "$TP_SIZE" \
    --gpu-memory-utilization "$GPU_UTIL" \
    --max-model-len "$MAX_MODEL_LEN" \
    --dtype "$DTYPE" \
    $TOOLS \
    $EXTRA_ARGS