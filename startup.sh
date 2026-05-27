#!/bin/bash
set -e
echo "=== Wan2.2 Remix NSFW — startup ==="

echo "=== Установка моделей ==="
bash /workspace/wan22-Boris-autoinstall/install_wan22_remix_models.sh

echo "=== Установка sox ==="
apt-get update -qq && apt-get install -y libsox-dev libsox-fmt-all

echo "=== Установка кастомных нодов Qwen3 ==="
cd /workspace/ComfyUI/custom_nodes

if [ ! -d "ComfyUI-Qwen3-ASR" ]; then
    git clone https://github.com/DarioFT/ComfyUI-Qwen3-ASR
    pip install -r ComfyUI-Qwen3-ASR/requirements.txt
else
    echo "ComfyUI-Qwen3-ASR уже установлен"
fi

if [ ! -d "comfyui-qwen3-tts" ]; then
    git clone https://github.com/DarioFT/comfyui-qwen3-tts
    pip install -r comfyui-qwen3-tts/requirements.txt
else
    echo "comfyui-qwen3-tts уже установлен"
fi

echo "=== Готово! Открывай ComfyUI ==="#!/bin/bash
set -e
echo "=== Wan2.2 Remix NSFW — startup ==="
bash /workspace/wan22-Boris-autoinstall/install_wan22_remix_models.sh
echo "=== Готово! Открывай ComfyUI ==="
