#!/bin/bash
sleep 10
PASSWORD=$(lpass show "${1}"|grep Password|awk '{print $2}')
echo {\"password\": \"${PASSWORD}\"}|jq