#!/bin/bash
set -e

USERNAME=${USERNAME:=dev}
PASSWORD=${PASSWORD:=dev}

mongo admin --quiet -u ${USERNAME} -p ${PASSWORD} --port 27001 --eval 'db' && \
mongo admin --quiet -u ${USERNAME} -p ${PASSWORD} --port 27002 --eval 'db' && \
mongo admin --quiet -u ${USERNAME} -p ${PASSWORD} --port 27003 --eval 'db' 
