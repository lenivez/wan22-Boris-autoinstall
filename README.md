# wan22-Boris-autoinstall

Automatic model installation for Wan2.2 Remix NSFW ComfyUI workflows on RunPod.

## How to run

```bash
cd /workspace
git clone https://github.com/lenivez/wan22-Boris-autoinstall
cd wan22-Boris-autoinstall
chmod +x install_wan22_remix_models.sh startup.sh
bash startup.sh
```

## Models (~45GB total)

| Model | Size | Folder |
|-------|------|--------|
| Wan2.2_Remix_NSFW_i2v_14b_high_lighting_v2.0.safetensors | 13 GB | diffusion_models/Wan2.2 |
| Wan2.2_Remix_NSFW_i2v_14b_low_lighting_v2.0.safetensors | 13 GB | diffusion_models/Wan2.2 |
| nsfw_wan_umt5-xxl_fp8_scaled.safetensors | 5 GB | text_encoders |
| umt5-xxl-encoder-Q8_0.gguf | 12 GB | text_encoders |
| wan_2.1_vae.safetensors | 1 GB | vae/Wan |
| clip_vision_h.safetensors | 2 GB | clip_vision |
| Wan22_ThroatV3_High.safetensors | - | loras/Wan/Remix |
| Wan22_ThroatV3_Low.safetensors | - | loras/Wan/Remix |
| Wan2.1_lera_or.safetensors | - | loras/Wan/Wan2.1 |
