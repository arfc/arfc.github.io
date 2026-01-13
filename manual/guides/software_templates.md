---
layout: manual
title: Software Templates
subtitle: "A few tools and templates for building a software project"
permalink: /manual/guides/software_templates
---

Software projects are often unique with specifications that 
exceed the capabilities of a single template. However, there are some cases 
where a template can save a lot of time and overhead. This document will 
hopefully provide ARFC members with the individual tools to mix and match as 
they create software projects.

# Existing Templates
There are some open source projects that provide high quality templates
that can be useful in software development. If your project falls under the 
range of capabilities they have you can save a lot of time by using them or 
adapting them to start your project.

## Scientific Python Development Tools
[learnscientificpython.org](https://learn.scientific-python.org/development/guides/packaging-simple/) 
has templates and tutorials guiding development of python packages using the 
most updated standards and norms in the scientific python community. 

## Shablona 
[Shablona](https://github.com/uwescience/shablona) is a template repository that 
is designed for scientific python projects. The template comes with everything a 
small-scale project might need, and can be easily adapted for python projects.

To get a sense of whether or not using the Shablona template is appropriate for 
your project, check out the 
[example](https://github.com/uwescience/shablona/tree/master/examples) provided.

## Cookiecutter
[Cookiecutter](https://github.com/cookiecutter/cookiecutter) is not a template 
repository like Shablona, instead it is a command-line utility that
allows you to build a repository from a "pantry" of templates. This project has 
an extensive 
[Read the Docs](https://cookiecutter.readthedocs.io/en/1.7.2/index.html), and 
it's definitely worth a review before you decide. 

Additional documents that will give you a sense of whether or not to use this 
utility:
1. [Getting to Know Cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.2/tutorial1.html) 
2. [Usage](https://cookiecutter.readthedocs.io/en/1.7.2/usage.html)
3. [Building a Cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.2/first_steps.html)

# Software Project Parts
Even if neither of the above templates fit your requirements, there are still 
some pieces that might benefit your project. JOSS (The Journal of Open Source 
Software) has 
a useful [review checklist](https://joss.readthedocs.io/en/latest/review_checklist.html) 
for reviewers that you should review before beginning your project. 

## Make Files
Makefile is a scripting tool that
compiles or re-compiles a program or process through a user-defined command in the command-line: ``make``. Makefiles streamline the build process for project contributors or reviewers.

### Resources:
- [Introduction](https://www.gnu.org/software/make/manual/html_node/Introduction.html)
- [Writing Makefiles](https://www.gnu.org/software/make/manual/html_node/Makefiles.html#Makefiles)
- [Tutorial](https://makefiletutorial.com/)

## CMake Files
CMake generates makefiles, similar Make or a makefile, except that it is much 
more compatible with C++.

### Resources:
- [Overview](https://cmake.org/overview/)
- [Step-by-step Tutorial](https://cmake.org/cmake/help/latest/guide/tutorial/index.html)
- [Wiki](https://gitlab.kitware.com/cmake/community/-/wikis/Home)

## Snakemake Files
Snakemake is a workflow engine with a python-based language and an optimizing 
execution environment. It allows developers to write human-readable workflows that 
document themselves.

### Resources:
- [Tutorial](https://snakemake.readthedocs.io/en/stable/tutorial/tutorial.html)
- [Examples](https://github.com/snakemake/snakemake/tree/master/examples)
- [Wiki](https://snakemake.readthedocs.io/en/stable/index.html)

## Docker Files
A Dockerfile is a text file that contains commands that can be used from the 
command line to generate images. 
Like a Makefile, docker build can automate a series of command line 
instructions. Several links have been 
provided as informational resources, and there exists a template file. 

Here is a 
[template dockerfile](https://gist.github.com/ju2wheels/3d1a1dfa498977874d03), 
which also has a lot of useful information on what different components do.

### Resources:
- Information on [Dockerfiles](https://docs.docker.com/engine/reference/builder/)
- A [Quickstart Guide](https://docs.docker.com/get-started/)
- A [Best Practices Guide](https://docs.docker.com/develop/dev-best-practices/)

## Automated Testing
Continuous integration with CircleCI allows users to verify that their contributions do not break any software functionality.
CircleCI automatically builds environments and executes tests before every pull request. An example repository 
is [PyNE](https://github.com/pyne/pyne), which employs CircleCI to run multiple 
tests on every pull request. Prof. Huff's book gives an overview of testing approaches.

### Resources:
- [Getting Started](https://circleci.com/docs/2.0/hello-world/)
- [Tutorial](https://circleci.com/docs/2.0/tutorials/)
- [Examples](https://circleci.com/docs/2.0/sample-config/)

## Licensing
Every repository that is a part of the ARFC Github Organization should have some 
form of license. Choosing a license can seem daunting but for 
a simple 
[BSD-3 Clause](https://spdx.org/licenses/BSD-3-Clause.html) will cover many
software projects. If your project uses pieces of code under a different license, there are 
many ways you can address it. 

One suggestion is that you create separate directories for the code that is 
under the other license. In the separate directory, you can then include the 
license that covers the code in that directory. 

Another suggestion is that you add all the licenses to the docs 
folder and then indicate which files or directories are covered under the 
respective licenses in the README.md files in the directory covered by it, or in 
the file itself.

There are many other ways to abide by differing licenses, the above are simply 
suggestions and should not be taken as legal advice. 
Regardless of the method you use, make sure you are following the 
requirements of any software you are using or adapting.

### Resources:
- [List of open source licenses](https://opensource.org/licenses/alphabetical)
- [What is copyleft?](https://opensource.org/faq#copyleft)
- [Using open source code](https://www.linuxfoundation.org/resources/open-source-guides/using-open-source-code/)

## Labels and Projects
Make sure that your repository has the ability to add all of the ARFC labels 
and projects. The labels and projects are an important part of the workflow in 
the organization, and they help categorize issues and pull requests.
