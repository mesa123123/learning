# Linux Boot Process
#
## Pre-Operating System
## Firmware interface starts
### BIOS - Common Firmware Interface
Stands for Basic Input/Output System, its an Operating System independent piece of firmware that tests the underlying hardware components and loads the operating system via the boot-loader (see also UEFI a new firmware interface spec)
## Boot Loader
### What is a bootloader?
A bootloader is a piece of code that runs before any operating system is running, this is loaded by the BIOS (or equivalent firmware). 
The Primary purpose of the bootloader is to start the operating system(s) on the computer. Though theey will often include several functions to debug and modify the operating systems kernel.
### Boot Loaders on Linux
There are two main boot loaders on the Linux Systems:
* GRUB - GRand Unified Bootloader
* LILO - LInux LOader

__Note: for most linux systems in 2020 GRUB is the standard boot loader, however older systems tend to use the LILO bootloader.__

### How the boot loader works on linux
* Queries the boot config (stored in /etc/lilo.conf || /etc/grub.conf) to specify the location of the 'root' file system. Which is (simplied) the boot drive, and the kernel version to be booted 
* The kernel is then loaded (usually specified by the file, vmlinux or vmlinuv)
* The boot loader then starts the initial ramdisk
__Note: The boot loader stores itself in the /boot directory where all files within the boot process are located (including the kernel).__

## Initrd - Initial Ram Disk
The initial ram disk is a temporary file system that loads into memory when the system first boots, it runs device drivers, file system modules, and logical volume modules along with other items required to run the OS but aren't directly a part of the systems kernel'

* The mounting of the OS's File System Occurs here - on linux this is the root file system, which after mounting is then given the job of booting up the rest of the OS

## Booting the rest of the OS
This is the part which we recognize as the operating system, e.g. Ubuntu/Arch etc.
The kernel connects to the systems hardware provided by the initrd, and starts the init process (found at /sbin/init)
The Operating system will then start via two methods.

## The OS init
### Style 1: The System V Style
Here the init process determines a 'runlevel' from the file /etc/inittab ('or equivalent if you're not on linux')

_runlevel defn.
A run level is a numeric description of for the set of scripts the OS will load under any given state the machine 'inits' e.g. level 3 will provide a multiuser console environment (think tty) and level5 will open a graphical environment. (think gnome desktop)_

an entry in a runlevel is a soft link to a script that will start or stop processes based upon name and run level (in linux its in the /etc/init.d/). In linux they come under categories 'S' - for startup scripts and 'K' for kill order scripts which look at actions that start and stop services safely

__Note: Linux distros often follows the System V version__

### Style 2: The BSD Style
BSD
The BSD init process is a bit less complex. BSD init reads the script at /etc/rc to determine what system services are to be run, configuration information is read from /etc/rc.conf, and additional services to run from /etc/rc.local. This is the extent of init configuration for OpenBSD, whereas current FreeBSD and NetBSD also read additional startup scripts from the /etc/rc.d/ directory.






