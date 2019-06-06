# wmmwrapper
C wrapper for the World Magnetic Model (wmm). Note that the model is only good for 2015 to 2020.

## How to Compile
First compile the wmm2015 code:
> cd ./wmm2015_src/src
> make
> cd ../..

Then edit the source file to change to the absolute path of the WMM.COF file. Annoying, will find workaround for this.
> vim ./src/wmmwrapper.c
< do edits >

Then compile:
> make

## Notes
Made minimal edits to the actual wmm source code. All I did was add an ```-fPIC``` flag to the Makefile in their source.
You will also have to include both the ```include``` folder and the ```wmm2015_src/src``` folder in your program. Also need to add the ```lib``` folder to your library sources.
