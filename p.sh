SRC="fibonacci.c"
EXEC="T"
PERF_RECORD_OUTPUT="perf.data"
PERF_SCRIPT_OUTPUT="out.perf"
PERF_FOLDED_OUTPUT="out.folded"
FIGURE="out.svg"

gcc $SRC -g -o $EXEC
perf record -F 99 -g -o $PERF_RECORD_OUTPUT -- $EXEC
perf script -i $PERF_RECORD_OUTPUT > $PERF_SCRIPT_OUTPUT
perl stackcollapse-perf.pl $PERF_SCRIPT_OUTPUT > $PERF_FOLDED_OUTPUT
perl flamegraph.pl $PERF_FOLDED_OUTPUT > $FIGURE