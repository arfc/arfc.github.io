---
layout: manual
title: Dual Booting Windows and Ubuntu
subtitle: "A Helpful List of Resources"
permalink: /manual/guides/dualboot
---


## Why Dual Boot

Dual booting simply means installing two operating systems on one hard drive.

In your career as a computational scientist, you will
quickly outgrow the limited capabilities of Windows command prompt.
Why Linux is better for programming:

1. Compiling code like C++ or FORTRAN is difficult in Windows.
2. The Linux terminal is much more powerful than the Windows command prompt
3. Native support for SSH and bash
4. Linux is "light-weight" and therefore faster than Windows.

## Why Not Dual Boot

If your preferred device is UNIX-based, like an apple macbook, there is often no need
to dual boot, since everything that can be done on a Linux machine is usually also
possible on a mac. Such an approach has the benefit of also supporting the 
Microsoft Office Suite (which works on a mac too).

If you don't think you'll ever need the Microsoft Office Suite, or the small number
of other commercial software applications which are a challenge to install on a Linux 
machine, you can certainly abandon Windows entirely and install Linux alone.
## How to Dual Boot

You will need:
- An empty flash drive with at least 5 GB of storage
- At least 25 GB of available hard drive space on the computer you wish to dual
boot (recommended: 50 GB)
- Some patience

Once you have those things, you will be able to dual boot. This 
[dual booting video tutorial](https://www.youtube.com/watch?v=Z-Hv9hOaKso) is
very clear and will walk you through each step.

A key step is downloading a recent version of the Ubuntu Linux distribution. 
You can find that download page [here](https://ubuntu.com/download/desktop). 

## After You've Installed Linux

When you boot up Linux for the first time you will have very few applications
available. A graduate student, Sam Dotson, wrote a bash script that quickly installs some essential
applications, as well as some helpful productivity tools. 
The script is available on GitHub, [here](https://github.com/samgdotson/ubuntu-post-installer). 
All you need to do
in order to execute this script is the following

```bash
wget https://raw.githubusercontent.com/samgdotson/ubuntu-post-installer/master/ubuntu-post-installer.sh

bash ubuntu-post-installer.sh
```

### Alternatives to Dual Booting


#### Windows Linux Subsystem
If you don't want to dual boot and just want to use the Linux terminal, Windows
offers an application called "Windows Linux Subsystem." It works, but you will
probably be frustrated because the Linux subsystem doesn't interface well with
the Windows graphical user interface.

For example, it is challenging and beyond the scope of this tutorial to 
open a graphical user interface from within the Windows Linux subsystem.
However, if that is the path you would like to take you can follow this
[tutorial](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

#### Virtual Box

A somewhat more robust approach is to create a virtual machine using [VirtualBox](https://www.virtualbox.org/).
To do this, you'll need to:

1. Boot up Windows (or any other OS)
2. Download Ubuntu
3. Download and install VirtualBox
4. Open VirtualBox
5. Following the [instructions on the VirtualBox site](https://www.virtualbox.org/manual/UserManual.html#gui-createvm) to create a linux virtual machine using the Ubuntu image file you downloaded in step 2.
6. Now you have a fully functional Ubuntu operating system that you can open as an application while booted into your Windows operating system.


### Obstacles and Challenges

_Caution_:
New Windows computers with Intel 9th Generation (or higher) CPUs use "Rapid Storage Technology" which must be disabled before installing
your chosen Linux distribution.
This process is non-trivial and users are warned that there is a risk of data loss.
Consider using alternatives to dual booting. 
If you are determined to dual boot, there is a [video tutorial](https://www.youtube.com/watch?v=2uXgbF3P2F8&ab_channel=VincentT)
that walks you through the steps.

