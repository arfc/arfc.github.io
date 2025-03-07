---
layout: manual
title: OpenMC
subtitle: "OpenMC - Installing from source for development"
permalink: /manual/guides/openmc
---

# Recommendation 0. Read the Installation Guide
OpenMC has an [excellent installation
guide](https://docs.openmc.org/en/stable/usersguide/install.html#installing-from-source)
that covers the dependencies. Several practices, discussed below, may 
make the whole process easier, cleaner, and more self-contained.

# Recommendation 1. Set up a Conda Environment
When building OpenMC from source, using a conda environment to install
dependencies allows different versions of various dependencies to co-exist on
the same machine. It also eases installation of OpenMC's Python API. 
To create an environment with the  name `openmc-env`, run:

```
conda create -n openmc-env
```

# Recommendation 2. Install Dependencies
Install all the dependencies listed in the installation guide using conda in your new environment. For
example, to install the Python dependencies, run:
```
conda install numpy scipy pandas pytest matplotlib lxml
uncertainties
```
This _should_ install the required compilers and HDF5 libraries needed for
OpenMC.
> [!NOTE] 
> The recommendations for installing `h5py` in 
> [development mode](https://docs.openmc.org/en/stable/usersguide/install.html#installing-in-development-mode)
> are in the installation guide. If you chose to do this, you should set
> `HDF5_DIR=$CONDA_PREFIX` (for building `h5py`) and `HDF5_ROOT=$CONDA_PREFIX`(for
> building OpenMC).
