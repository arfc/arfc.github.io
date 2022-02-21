
require "rubygems"
require "tmpdir"

require "jekyll"
require "jekyll/scholar"

# Change your GitHub reponame
GITHUB_REPONAME = "arfc/arfc.github.io"


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r "_site/.", tmp
    system "rm -r _site"

    pwd = Dir.pwd

    system "git checkout master"
    system "rm -r *"
    cp_r "#{tmp}/.", "."
    system "git add ."
    message = "Site updated at #{Time.now.utc}"
    system "git commit -am #{message.inspect}"
    system "git remote add upstream git@github.com:#{GITHUB_REPONAME}.git"
    system "git push upstream master --force"

    Dir.chdir pwd
    system "git checkout source"
    system "git push upstream source"
  end
end
