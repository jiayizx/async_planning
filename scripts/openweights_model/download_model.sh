export HF_ENDPOINT=https://hf-mirror.com

nohup ./hfd.sh Qwen/Qwen3.5-27B \
  --local-dir /root/async_planning/models/Qwen_Qwen3.5-27B \
  -x 10 \
  > download.log 2>&1 &

echo "PID: $!"
tail -f /root/download.log