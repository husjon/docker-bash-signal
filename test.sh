#!/bin/bash

WORKER_PID=''

handle_sig_term(){
    echo "[Shell] SIGTERM received, time to leave."
    exit
}

trap 'handle_sig_term' TERM

I=0

echo "[Shell] Waiting for SIGTERM"
while [[ 1 ]]; do
    echo "[Shell] Hello, $I"
    let I=$I+1
    sleep 1
done

echo "[Shell] This line will not be shown"
