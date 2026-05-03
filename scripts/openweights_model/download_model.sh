# Download Qwen3.5-27B model from Hugging Face

nohup huggingface-cli download Qwen/Qwen3.5-27B \
  --local-dir /root/async_planning/models/Qwen_Qwen3.5-27B \
  > download.log 2>&1 &

echo "PID: $!"
tail -f download.log