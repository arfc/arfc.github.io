---
layout: manual
title: Git Large File Storage
subtitle: "Using an open source Git extension for versioning large files"
permalink: /manual/guides/git-lfs
---

[Read this page first](https://git-lfs.github.com/)

## Step 0. Make sure you have GitHub client installed
Open the terminal
```
$git --version
```
## Step 1. Download the Git command line extension
Click the [link](https://github.com/git-lfs/git-lfs/releases/download/v2.9.0/git-lfs-linux-amd64-v2.9.0.tar.gz) and download the archive.

## Step 2. Unpack the archive
Go to the directory with archive and unpack it
```
$cd ~/Downloads
$tar -xf git-lfs-linux-amd64-v2.9.0.tar.gz
```

## Step 3. Install the extension
To install, type
```
$chmod 755 install.sh
$sudo ./install.sh
```
and you will get message that the extension initialized
![alt text](/img/manual/guides/git-lfs-msg.png)

## Step 4. Add Git LFS hooks to the repository
In your repository direcotry, run
```
$git lfs install
```
You'll need to run this in your repository directory, once per repository.


## How to use Git LFS
Git LFS can be used when you want to version large files,
usually, valuable output data, which is larger than 
Github limit (100Mb). These files can be plain text or 
binaries.

ARFC Git Large File Storage is quite large, but be respectful 
to your colleagues and make sure you store only valuable data 
of reasonable (100Mb-5Gb) size. Consider using alternative storage options such as Box if version control is not necessary or if files of a larger size need to be stored.

To version large files in your repository:

1. Select the file types you would like Git LFS to manage 
(i.e., Serpent ouput files has extension .m)

   ```
   git lfs track "*.m"
   ```
Make sure .gitattributes is tracked
   ```
   git add .gitattributes
   ```
You can always check tracked file types
   ```
   vi .gitattributes
   ```
Do it from the top level directory of the repository.

2. Success! Just commit and push to GitHub as you normally would

   ```
   git add ubattery_dep.m
   git commit -am "Add isotopic composition after depletion"
   git push origin master
   ```



