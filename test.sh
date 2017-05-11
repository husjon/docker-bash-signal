#!/bin/bash

WORKER_PID=''

handle_sig_term(){
    echo "[Shell] SIGTERM received, informing python script"
    kill -TERM $WORKER_PID
    wait $WORKER_PID
}

trap 'handle_sig_term' TERM

I=0

echo "[Shell] Starting python script"
python test.py & WORKER_PID=$!
wait $WORKER_PID
