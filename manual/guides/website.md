---
layout: manual
title: Website
subtitle: "Editing this website."
permalink: /manual/guides/website
---

This website should be maintained collectively by the members of the group. 
Please remember that the [Code of Conduct](/manual/coc) applies to content on 
the website, including blog posts and comments. 

## Set Up 

1. Install the build dependencies for the website. These include ruby, jekyll, 
   and jekyll-scholar. Get started [here.](https://jekyllrb.com/docs/installation/).
2. [Fork](https://github.com/arfc/arfc.github.io#fork-destination-box) the website repository. 
3. Clone your fork. If you have [your ssh keys set up](https://help.github.com/articles/generating-an-ssh-key/) 
   and your username is USERNAME, the command is `git clone 
   git@github.com:USERNAME/arfc.github.io`
4. Add the group fork as a remote. `cd arfc.github.io && git remote add 
   upstream git@github.com:arfc/arfc.github.io`

Now, you're ready to make changes to the website. There are a few types of 
changes that are common:

- Edits to the text
- Adding yourself to the people page
- Creating a blog post

See below for directions on all of these.

## Add Yourself

1. Once you have done the set up steps, enter the source branch of the repository. `git checkout source`
2. Add your photo to the repository (in img/people). If your name is Jane Doe, call it `doej.png`.
3. Don't forget to git add and git commit the photo `git add img/people/doej.png` and `git commit -am "adds a photo of Jane Doe"`
4. Open the file `_data/people.yml` and add your details.
5. Close the file and commit your changes (`git commit -am "added Jane Doe details to people data"`)
6. Check whether your changes succeeded by typing `jekyll serve` from the top 
   level directory of the website repository. Then, open a browser to 
   `localhost:4000`.
7. When you're satisfied, push your changes to your own fork. 
8. Finally make a pull request from your source branch to the arfc source 
   branch. 

If you're feeling confident, you can skip the pull request. Instead, you can 
just push changes to the website directly with the command `rake publish`. Only 
do this if you don't need anyone to double check your work. 

## Creating a Blog Post


1. Once you have done the set up steps, enter the source branch of the repository. `git checkout source`
2. Create a blog post file in `_posts`. Use the proper naming convention. (e.g. 
   2100-12-31-century-end.md`
3. Don't forget to git add and git commit the post `git add _posts/2100-12-31-century-end.md` and `git commit -am "adds a photo of Jane Doe"`
4. Close the file and commit your changes (`git commit -am "added Jane Doe details to people data"`)
5. Check whether your changes succeeded by typing `jekyll serve` from the top 
   level directory of the website repository. Then, open a browser to 
   `localhost:4000`.
6. When you're satisfied, push your changes to your own fork. 
7. Finally make a pull request from your source directory to mine. 

If you're feeling confident, you can skip the pull request. Instead, you can 
just push changes to the website directly with the command `rake publish`. Only 
do this if you don't need anyone to double check your work. 

## Edits to the text

Much like both of the above options, you'll:

- enter the source branch of the repository
- make changes to either yml or md files
- check your work with `jekyll serve`
- and git commit, git push
- finally, you'll make a pull request to the arfc branch.


