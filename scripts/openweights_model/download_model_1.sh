nohup python -c "
from modelscope import snapshot_download
snapshot_download('Qwen/Qwen3.5-27B', 
                  cache_dir='/root/async_planning/models/Qwen_Qwen3.5-27B')
" > download_1.log 2>&1 &

echo "PID: $!"
tail -f download_1.log