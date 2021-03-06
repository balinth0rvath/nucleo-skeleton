# nucleo-skeleton

Board: Nucleo-64 STM32F103RB<br/><br/>
A simple makefile based project created from generated sources of an STM32CubeIDE project.<br/>

## Toolchain setup on Ubuntu

Install STM32CubeIDE. Environment variables in setenv.sh must be modified according to the local cross compiler settings of STM32CubeIDE. Install gdb, st-link build-essential and openocd too

<pre><code>$ sudo apt-get install build-essential st-stm32cubeide-1.4.0 gdb openocd st-stlink-server st-stlink-udev-rules
</code></pre>


## Build
Executables are generated to build folder:

<pre><code>
$ . ./setenv.sh
$ make all
</code></pre>

## Flash
<pre><code>$ st-flash write build/nucleo-skeleton.bin 0x08000000
</code></pre>

## Debug
Two tabs needed, one for openocd and a second for gdb. openocd connects to gdb via localhost:1234<br>
Tab1
<pre><code>$ openocd
</code></pre>
Tab2
<pre><code>
$ . ./setenv.sh
$ ./gdb-target.sh
(gdb) tar rem :1234
</code></pre>

