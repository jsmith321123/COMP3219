#!/bin/bash
for CACHE_D in 1 2 4 8 16 32 64
do
	OPTIONS_D=$CACHE_D"kB"
        echo $OPTIONS_D "data"
        ./build/ARM/gem5.opt -q configs/example/se.py --l1d_size=$OPTIONS_D --cpu-type=TimingSimpleCPU --caches -c mibench/telecom/CRC32/crc --options "mibench/automotive/susan/small.pgm"
        cat m5out/stats.txt | grep sim_insts
        cat m5out/stats.txt | grep system.cpu.numCycles

done

for CACHE_I in 1 2 4 8 16 32
do
        OPTIONS_I=$CACHE_I"kB"
        echo $OPTIONS_I "instruction"
        ./build/ARM/gem5.opt -q configs/example/se.py --l1i_size=$OPTIONS_I --cpu-type=TimingSimpleCPU --caches -c mibench/telecom/CRC32/crc --options "mibench/automotive/susan/small.pgm"
        cat m5out/stats.txt | grep sim_insts
        cat m5out/stats.txt | grep system.cpu.numCycles
done
