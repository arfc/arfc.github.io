---
layout: manual
title: Blue Waters
subtitle: "Blue Waters - From Access to Utilization"
permalink: /manual/guides/bluewaters
---

[Read this page first](https://bluewaters.ncsa.illinois.edu/getting-started)

## Step 0. Get a license for Serpent
Register for Serpent through RSICC and deposit your license documentation in 
the Google Drive software licenses directory.

## Step 1. Communication
Have Prof Huff get you approved for Blue Waters!

## Step 2. Apply for Blue Waters
You should recieve an email with a link to continue your validation process.
Follow the link and fill out the application.
        You can either receive a virtual token or a physical token.
        A Virutal token is done through your mobile device,
        and a physical token looks like this:
 
![alt text](/img/manual/guides/bw-token.jpg)

Or, if you chose a soft token, install the RSA SecurID app and 
follow the instruction sent to you by email.


## Step 3. Wait
Wait patiently for the token to arrive.

## Step 4. Activating Token
For activating the token, instructions should be contained within the emails recieved. Extra information can be found [here](https://wiki.ncsa.illinois.edu/display/cybersec/Duo+at+NCSA).



## Step 5. Logging In
Open terminal, type
```
$ssh [username]@h2ologin.ncsa.illinois.edu
```
You will then be prompted for your password, followed by an option to select from a list of your 
registered tokens. After selecting the token you will use (if you only have one token, simply 
type 1), either enter your pin and token number or approve the login request with Duo, 
depending on what token type you are using.




#### tip) you can shortname your ssh command:
Open the terminal

```
$cd
$cd .ssh
$vim config
```

write:

```
        Host [desired_name]
        HostName h2ologin.ncsa.illinois.edu
        User [Blue_Waters_User_Name] 
```


Then you'd just have to type in
```
$ssh [desired_name]
```

For example, you might have named Blue Waters "bw".
In that case, you simply type
```
$ssh bw
```

## Step 6. Congratz!
You're in! :)

![alt text](/img/manual/guides/bw-welcome.png)

#### tip) running jobs
To start running jobs on Blue Waters, it is useful to look at what other people use as well as the documentation:
1. Create a [file_name].pbs script (which contains an aprun command).
 A good way to find example job scripts is to search through the arfc repo for code containing ".pbs".
 More information can be found [here](https://bluewaters.ncsa.illinois.edu/running-your-jobs) to understand how these job scripts function.
2. Use qsub [file_name].pbs to submit the job.


## Step 7. Module Loading
Various modules can be loaded and the available modules can be listed using the following commands:

| Command               |   Suffix  |  Action                              |
|:----------------------|:---------------------------|-----------------------------------:|
| `module avail `          |                       | List all available modules    |
| `module avail `          | ` \|grep -r [keyword] `   | Search module with keywords   |
| `module load `           |                       | Load module onto environment  |
| `module swap `           | ` [original] [new] `      | replace [orignal] with [new]  |


#### tip) ~/.bashrc
If you don't want to load your modules every time, edit ~/.bashrc 
and have all your 'module load/swap' commands.
```
$vim ~/.bashrc
```
after editing the bashrc, you must source it:
```
$source ~/.bashrc
```


## The Group Directory
```
/projects/sciteam/bbcc
```

## How to Download Source Code
Because Blue Waters is an HPC machine, it does
not have a package manager (like Ubuntu's apt-get).
This is the reason why one has to build from source.

Also, one does not have sudo, which means that
the packages should be built either in your
home directory(~) or in the group directory (bahg) 

Get source codes by:

1. Github

   ```
   git clone [clone_link]
   ```


2. wget

   ```
   wget [link to source code tar.xz or zip file]
   ```

   Expand the archive with the tar or the unzip command.

## Using Moltres
Navigate to 
```
 /projects/sciteam/bbcc/projects/
```
 and read the readme file located there. It provides useful information to properly setup a pbs script and run Moltres.


## Using Serpent
To use Serpent, one can use the command
```
 qsub serpent_pbs_script.pbs
```

 where an example of a pbs script for using Serpent can be seen below.

```
 #!/bin/bash
 #PBS -l nodes=4:ppn=32:xe
 #PBS -l walltime=08:00:00
 #PBS -N name_of_Serpent_run
 #PBS -j oe
 #PBS -q normal

 module swap PrgEnv-cray PrgEnv-gnu

 export OMP_NUM_THREADS=32

 cd $PBS_O_WORKDIR
 aprun -n 4 -d 32 /projects/sciteam/bbcc/serpent/src2.1.32/sss2 -omp 32 ./serpent_file > output_file
```

Step 6 contains a link for more information on pbs scripts. The "module swap" is required in order to run Serpent since it uses the gnu compiler. The "export" line is used to set the thread count which has a default value of 1.

#### Tip) Cross Sections
When making your Serpent input deck, you can use the following for your cross section data
```
set acelib "/projects/sciteam/bbcc/serpent/xsdata/jeff312/sss_jeff312.xsdata"
set declib "/projects/sciteam/bbcc/serpent/xsdata/jeff312/sss_jeff33.dec"
set nfylib "/projects/sciteam/bbcc/serpent/xsdata/jeff312/sss_jeff33.nfy"
```

#### Tip) Viewing Progress

While you wait for your script to complete, you can run the command
```
 qstat | grep "name_of_Serpent_run"
```

 which will display how long your script has been running. Once your script is done running, it should return nothing (unless someone else is running a script with the same name as yours).
