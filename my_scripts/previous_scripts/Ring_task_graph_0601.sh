#!/bin/bash
./build/NULL/gem5.debug --debug-flags=TaskGraph  configs/example/garnet_synth_traffic.py \
--topology=Ring \
--num-cpus=64 \
--num-dirs=64 \
--mesh-rows=1 \
--network=garnet2.0 \
--inj-vnet=2 \
--injectionrate=0 \
--token-packet-length=6 \
--network-task-graph-enable \
--task-graph-file="./my_benchmarks/traffic/mesh_8x8/h263e_mesh_8x8.stp" \
--execution-iteration=1 \
--routing-algorithm=2 \
--vcs-per-vnet=2
