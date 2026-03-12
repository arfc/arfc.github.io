#!/bin/bash
set -e

# Check if the curl executable is found in the system's PATH
CURL_PATH=$(type -p curl)

if [ -n "$CURL_PATH" ]; then
    if [[ "$CURL_PATH" == /snap/* ]]; then
	echo "Please run `snap remove curl` and use `apt install curl`"
	exit 1
    fi
else
    echo "Please install curl with `apt install curl`."
    exit 1
fi


# Install rbenv if not already installed
if ! command -v rbenv &> /dev/null; then
  echo "rbenv not found, installing..."
  curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
else
  echo "rbenv already installed, skipping..."
fi

# Install Ruby 3.1.6 if not already installed
if ! rbenv versions | grep -q "3.1.6"; then
  echo "Installing Ruby 3.1.6..."
  rbenv install 3.1.6
fi

# Set local Ruby version
rbenv local 3.1.6

# Install bundler and dependencies
gem install bundler -v 2.3.26
bundle install

# Serve site
bundle exec jekyll serve

