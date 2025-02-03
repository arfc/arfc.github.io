
# ARFC Homepage

This is the repository that holds the hompage for the Advanced Reactors and 
Fuel Cycles group.  

## Building This Website

It should be sufficient to do the following:

Clone the repo:
`git clone git@github.com:arfc/arfc.github.io`

Make your way to the top level of the source branch:
`cd arfc.github.io && git checkout source`

Install the gems:
`bundle install`

Build and serve the site locally
`bundle exec jekyll serve`

The terminal will report that your website is being served at localhost:4000. 
Navigate your browser there and you should see the webpage.

## Advanced build and push
Do everything in the previous section. If everything looks ok on preview, 
execute:
`rake publish`

The built site will be committed to master and force pushed up to the website.
