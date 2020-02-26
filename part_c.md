# SUSAN-X86

## OUT OF ORDER

`./build/X86/gem5.opt -r configs/example/se.py --l1d_assoc=16 --cacheline_size=256 --cpu-type=DerivO3CPU --caches -c mibench/automotive/susan/susan --options "mibench/automotive/susan/input_small.pgm out.pgm"`

`cat m5out/stats.txt | grep sim_insts`

`cat m5out/stats.txt | grep system.cpu.numCycles`

## REGULAR CPU

`./build/X86/gem5.opt -r configs/example/se.py --l1d_assoc=16 --cacheline_size=256 --cpu-type=TimingSimpleCPU --caches -c mibench/automotive/susan/susan --options "mibench/automotive/susan/input_small.pgm out.pgm"`

`cat m5out/stats.txt | grep sim_insts`

`cat m5out/stats.txt | grep system.cpu.numCycles`

# CRC32-X86

## OUT OF ORDER

`./build/X86/gem5.opt -r configs/example/se.py --l1d_assoc=4 --cacheline_size=256 --cpu-type=DerivO3CPU --caches -c mibench/telecomm/CRC32/crc --options "mibench/telecomm/adpcm/data/small.pcm"`

`cat m5out/stats.txt | grep sim_insts`

`cat m5out/stats.txt | grep system.cpu.numCycles`

## REGULAR CPU

`./build/X86/gem5.opt -r configs/example/se.py --l1d_assoc=4 --cacheline_size=256 --cpu-type=TimingSimpleCPU --caches -c mibench/telecomm/CRC32/crc --options "mibench/telecomm/adpcm/data/small.pcm"`

`cat m5out/stats.txt | grep sim_insts`

`cat m5out/stats.txt | grep system.cpu.numCycles`
