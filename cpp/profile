#!/bin/sh

SRC="fibonacci.c"
EXEC="FIBONACCI"
FREQUENCY=1000
PERF_RECORD_OUTPUT="perf.record.out"
PERF_SCRIPT_OUTPUT="perf.script.out"

gcc $SRC -g -o $EXEC
perf record -F $FREQUENCY -g -o $PERF_RECORD_OUTPUT -- $EXEC
perf script -i $PERF_RECORD_OUTPUT > $PERF_SCRIPT_OUTPUT
echo "go to <https://thlorenz.com/flamegraph/web/> and upload the file '$PERF_SCRIPT_OUTPUT'"