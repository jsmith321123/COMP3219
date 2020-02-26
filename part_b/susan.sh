!/bin/bash
for CACHE_D in 1 2 4 8 16 32
do
        OPTIONS_D=$CACHE_D
        echo $OPTIONS_D "assoc"
        ./build/X86/gem5.opt -r configs/example/se.py --l1d_assoc=$OPTIONS_D --cpu-type=TimingSimpleCPU --caches -c mibench/automotive/susan/susan --options "mibench/automotive/susan/input_small.pgm out.pgm"
        cat m5out/stats.txt | grep system.cpu.dcache.overall_miss_rate

done

for CACHE_I in 8 16 32 64 128 256
do
        OPTIONS_I=$CACHE_I
        echo $OPTIONS_I "cache line"
        ./build/X86/gem5.opt -r configs/example/se.py --cacheline_size=$OPTIONS_I --cpu-type=TimingSimpleCPU --caches -c mibench/automotive/susan/susan --options "mibench/automotive/susan/input_small.pgm out.pgm"
        cat m5out/stats.txt | grep system.cpu.dcache.overall_miss_rate
done