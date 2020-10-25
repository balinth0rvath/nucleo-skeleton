# nucleo-skeleton

Board: Nucleo-64 STM32F103RB<br/><br/>
A simple makefile based project created from generated sources of an STM32CubeIDE project.<br/>
Makefile has not been simplified and refactored yet.<br/>

## Toolchain setup on Ubuntu

Install STM32CubeIDE. PATH and CC variables of setenv.sh must be modified according to the local cross compiler settings of STM32CubeIDE. Install gdb, st-link and openocd too

<pre><code>$ sudo apt-get install st-stm32cubeide-1.4.0 gdb openocd 
</code></pre>


## Build
Executables are generated to build folder:
<pre><code>$ make clean
</code></pre>

<pre><code>$ make all
</code></pre>


## Debug
Two tabs needed, one for openocd and a second for gdb<br>
Tab1
<pre><code>$ openocd
</code></pre>
Tab2
<pre><code>$ ./gdb-target.sh
(gdb) tar rem :1234
</code></pre>

