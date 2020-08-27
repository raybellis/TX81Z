This is a (currently mostly unannotated) disassembly of the firmware
of the Yamaha TX81Z synthesizer.

I believe I've identified and separated most of the code and data
blocks.

The files are designed to be assembled using the
[A09](https://github.com/Arakula/A09/)  assembler
maintained by Hermann Sieb.

The firmware is split into two halves, both of which are mapped
from $8000 - $ffff in the memory space, with the bank selected
via GPIO pin P63.

Generating a new firmware image requires that the two resulting
32kB binaries be concatenated and burned to a single 27C512
(64kB) EPROM.
