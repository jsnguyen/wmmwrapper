# wmmwrapper
C wrapper for the World Magnetic Model (wmm). Note that the model is only good for 2015 to 2020.

First compile the wmm2015 code:
> cd ./wmm2015_src/src
> make
> cd ../..

Then edit the source file to change to the absolute path of the WMM.COF file. Annoying, will find workaround for this.
> vim ./src/wmmwrapper.c
< do edits >

Then compile:
> make

Made minimal edits to the actual wmm source code. All I did was add an ```-fPIC``` flag to the Makefile in their source.
