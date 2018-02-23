#!/bin/sh
cp Dockerfile.template Dockerfile

echo "\n#\n# Java\n#\n" >> Dockerfile
curl -sSL --compressed  https://raw.githubusercontent.com/docker-library/openjdk/415b0cc42d91ef5d70597d8a24d942967728242b/8-jre/Dockerfile | tail -n +8  >> Dockerfile

echo "\n#\n# Ruby\n#\n" >> Dockerfile
curl -sSL --compressed  https://raw.githubusercontent.com/docker-library/ruby/bfc7a48724ceb1917ddbcb713b24c835eca584c8/2.4/Dockerfile | tail -n +3 | tail -r | tail -n +2 | tail -r >> Dockerfile

echo "RUN gem install rake html-proofer" >> Dockerfile
