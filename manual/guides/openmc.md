---
layout: manual
title: OpenMC
subtitle: "OpenMC - Installing from source for development"
permalink: /manual/guides/openmc
---

## Step 0. Read the Installation Guide
OpenMC has an [excellent installation
guide](https://docs.openmc.org/en/stable/usersguide/install.html#installing-from-source)
that covers the dependencies. You should read this guide and understand it.
I have installed OpenMC from source many many times and I have found several
practices make the whole process easier, cleaner, and more self-contained.

## Step 1. Set up a Conda environment
When building OpenMC from source, using a conda environment to install
dependencies rather than `apt` allows different versions of software to exist on
the same machine. It also allows you to easily install OpenMC's Python API. 
I like to use the name `openmc-env` for my environment, so I run

```
conda create -n openmc-env
```

## Step 2. Install dependencies
Install all the dependencies listed in the installation guide using conda. For
example, to install the Python dependencies, run
```
conda install numpy scipy pandas pytest matplotlib lxml
uncertainties
```
This _should_ install the required compilers and HDF5 libraries needed for
OpenMC.
Note the recommendations for installing `h5py` in [development
mode](https://docs.openmc.org/en/stable/usersguide/install.html#installing-in-development-mode)
in the installation guide. If you chose to do this, you should set
`HDF5_DIR=$CONDA_PREFIX` (for building `h5py`) and `HDF5_ROOT=$CONDA_PREFIX`(for
building OpenMC).
