#!/bin/sh

# Define the access token
ACCESS_TOKEN="YOUR_ACCESS_TOKEN_FROM_HUGGINGFACE"

# Define an associative array of filenames, their respective target directories, and repository IDs
declare -A FILES
FILES=(
  ["/workspace/ComfyUI/models/clip/clip_l.safetensors"]="comfyanonymous/flux_text_encoders"
  ["/workspace/ComfyUI/models/clip/t5xxl_fp16.safetensors"]="comfyanonymous/flux_text_encoders"
  ["/workspace/ComfyUI/models/clip/t5xxl_fp8_e4m3fn.safetensors"]="comfyanonymous/flux_text_encoders"
  ["/workspace/ComfyUI/models/vae/ae.safetensors"]="black-forest-labs/FLUX.1-schnell"
  ["/workspace/ComfyUI/models/unet/flux1-schnell.safetensors"]="black-forest-labs/FLUX.1-schnell"
)

# Loop over each file and download it to its respective directory
for FILE_PATH in "${!FILES[@]}"; do
  # Extract the directory and filename from the file path
  DIRECTORY=$(dirname "$FILE_PATH")
  FILENAME=$(basename "$FILE_PATH")
  REPO_ID="${FILES[$FILE_PATH]}"

  # Construct the URL
  URL="https://huggingface.co/$REPO_ID/resolve/main/$FILENAME"

  # Create the target directory if it doesn't exist
  mkdir -p "$DIRECTORY"

  # Download the file using curl
  curl -L -H "Authorization: Bearer $ACCESS_TOKEN" -o "$FILE_PATH" "$URL"

  # If you prefer wget, you can use this instead:
  # wget --header="Authorization: Bearer $ACCESS_TOKEN" -O "$FILE_PATH" "$URL"
done
