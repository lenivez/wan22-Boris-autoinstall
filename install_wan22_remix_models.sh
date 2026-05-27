#!/bin/bash
set -e
echo "=== Wan2.2 Remix NSFW — установка моделей (Boris Edition) ==="

mkdir -p /workspace/ComfyUI/models/diffusion_models/Wan2.2
mkdir -p /workspace/ComfyUI/models/text_encoders
mkdir -p /workspace/ComfyUI/models/vae/Wan
mkdir -p /workspace/ComfyUI/models/clip_vision
mkdir -p /workspace/ComfyUI/models/loras/Wan/Remix

echo "=== Remix NSFW I2V High (13GB) ==="
wget -O /workspace/ComfyUI/models/diffusion_models/Wan2.2/Wan2.2_Remix_NSFW_i2v_14b_high_lighting_v2.0.safetensors \
"https://huggingface.co/FX-FeiHou/wan2.2-Remix/resolve/main/NSFW/Wan2.2_Remix_NSFW_i2v_14b_high_lighting_v2.0.safetensors?download=true"

echo "=== Remix NSFW I2V Low (13GB) ==="
wget -O /workspace/ComfyUI/models/diffusion_models/Wan2.2/Wan2.2_Remix_NSFW_i2v_14b_low_lighting_v2.0.safetensors \
"https://huggingface.co/FX-FeiHou/wan2.2-Remix/resolve/main/NSFW/Wan2.2_Remix_NSFW_i2v_14b_low_lighting_v2.0.safetensors?download=true"

echo "=== NSFW CLIP text encoder (5GB) ==="
wget -O /workspace/ComfyUI/models/text_encoders/nsfw_wan_umt5-xxl_fp8_scaled.safetensors \
"https://huggingface.co/NSFW-API/NSFW-Wan-UMT5-XXL/resolve/main/nsfw_wan_umt5-xxl_fp8_scaled.safetensors?download=true"

echo "=== CLIP text encoder GGUF Q8 (12GB) ==="
wget -O /workspace/ComfyUI/models/text_encoders/umt5-xxl-encoder-Q8_0.gguf \
"https://huggingface.co/city96/umt5-xxl-encoder-gguf/resolve/main/umt5-xxl-encoder-Q8_0.gguf?download=true"

echo "=== Wan VAE (1GB) ==="
wget -O /workspace/ComfyUI/models/vae/Wan/wan_2.1_vae.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors?download=true"

echo "=== CLIP Vision (2GB) ==="
wget -O /workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors?download=true"

echo "=== LoRA: Throat V3 High ==="
wget -O /workspace/ComfyUI/models/loras/Wan/Remix/Wan22_ThroatV3_High.safetensors \
"https://huggingface.co/borisf/wan2.2-loras/resolve/main/Wan22_ThroatV3_High.safetensors?download=true"

echo "=== LoRA: Throat V3 Low ==="
wget -O /workspace/ComfyUI/models/loras/Wan/Remix/Wan22_ThroatV3_Low.safetensors \
"https://huggingface.co/borisf/wan2.2-loras/resolve/main/Wan22_ThroatV3_Low.safetensors?download=true"

echo "=== LoRA: Lera Fox Wan2.1 ==="
mkdir -p /workspace/ComfyUI/models/loras/Wan/Wan2.1
wget -O /workspace/ComfyUI/models/loras/Wan/Wan2.1/Wan2.1_lera_or.safetensors \
"https://huggingface.co/borisf/wan2.2-loras/resolve/main/Wan2.1_lera_or.safetensors?download=true"

echo "=== Все модели Wan2.2 Remix загружены! ==="
