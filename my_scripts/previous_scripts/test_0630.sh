#!/bin/bash
./build/NULL/gem5.debug --debug-flags=TaskGraph,Ruby  \
--outdir hh \
configs/example/garnet_synth_traffic.py \
--topology=Ring \
--num-cpus=16 \
--num-dirs=16 \
--mesh-rows=1 \
--network=garnet2.0 \
--inj-vnet=2 \
--injectionrate=0 \
--token-packet-length=6 \
--network-task-graph-enable \
--task-graph-file="./my_benchmarks/test.stp" \
--execution-iteration=10 \
--routing-algorithm=2 \
--vcs-per-vnet=2
