#!/usr/bin/env bash
SECONDS_TO_KILL=120
LOGFILE=/var/log/daemon.log
touch ${LOGFILE}

_term() {
  echo "starting to kill" >> ${LOGFILE}
  for i in $(seq 1 ${SECONDS_TO_KILL}); do
    echo "second $i" >> ${LOGFILE}
    sleep 1
  done
  exit 0
}

trap _term SIGTERM
trap _term SIGINT

echo "starting daemon" >> ${LOGFILE}
while true; do sleep 0.5; done
