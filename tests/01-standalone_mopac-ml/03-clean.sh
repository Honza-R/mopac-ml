#!/bin/bash

# Files produced by MOPAC
rm -f  mopac.in.arc  mopac.in.aux  mopac.in.den  mopac.in.out  run.log 
# Interface pipes, may be left after a failed run
rm -f fifo_in.tmp  fifo_out.tmp 
