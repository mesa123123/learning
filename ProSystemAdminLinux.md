# Linux System Administration - Notes
## Introduction
What is essentially Linux on Linux systems is the Kernel (the piece of software that interacts with the underlying firmware and hardware, kind of creating a translation between the applicationcs and hardware layers of the system ).
Distros of Linux are essentially the bigger more complicated parts of the Operating System, what someone would generally think when they use the word 'Operating System.'
Linux to Distro is like Windows to NT, or Mac to XNU/Darwin (NT is the kernel that windows systems uses, because its proprietary its less well known than its open source alternatives)
Distros are mostly open source and community maintained, apart from a few such as Ubuntu and RHEL which are backed by commercial entities (which have tricky licensing, google it, I'm not making notes onthe nuancies of open source law I'm making notes on sysadmin nuancies...)


## Startup
### Startup in a nutshell
See more in the notes I put in startup [here](<./Linux Boot Loader Notes.md>)

Basically many modern operating systems follow similar patterns:

* The BIOS or UEFI initiates and checks hardware
* The bootloader lets you select and operating system (in the case of more than one on the system)
* The operating system is then loaded

Older Systems use BIOS and most modern computers have support for UEFI.

### Powering On

The BIOS is the thing that starts up the hardware. The BIOS is a piece of software hosted on a physical component of the motherboard (It is a small chip that is built into the motherboard)

### The BIOS - Basic Input/Output System

Performs what is called the POST (power-on self-test) which checks the availability of the different pieces of hardware that make up the computer system. The BIOS' software is also able to change certain things about the hardware configuration, this is achieved through a BIOS screen which you reach whilst pressing a certain key combination on startup.
Part of the BIOS' processes the software polls hard drive controllers and their onboard chips.

_Note: In the BIOS' screen you are also able to set up a RAID system (Redundant Array of Inexpensive Disks)_
_Note: Mess with these settings with caution, you can do some REAL damage to the computers data here_


### UEFI - Unified Extensible Firmware Interface

#### Why?
UEFI was created to overcome the very real limitations of the BIOS software processes, for instance BIOS was designed, and runs on, a 16-bit processor (modern processors are 32 or 64bit).
BIOS was designed to run with a limited amount of RAM (and continues to do so). UEFI was designed with no upper limit on the RAM in mind. 

#### Differences
The BIOS reads from a MBR (master boot record) to load the operating system, where the UEFI enabled operating systems create a disk partition at installation that uses a FAT32 File Format (Similar to the one used in game consoles). Where the master boot record is limited to 512 bytes the UEFI has no such limit as FAT32 file systems can be as big as they need.
UEFI reqiures that the partition table on the fisc is GPT (GUID Partition Table), which allows the UEFI to boot systems over 2TB in size.
UEFI can also be run through a graphic interface with a mouse and keyboard. 
UEFI also offers 'Secure Boot'

#### What?
Though from the outside performs a very similar process to BIOS software, things under the hood are different:






