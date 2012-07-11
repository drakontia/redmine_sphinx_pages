#!/bin/bash

# create a link to cucumber features
ln -sf $PATH_TO_PLUGIN/features/ .
ln -sf $PATH_TO_PLUGIN/spec/ .

mkdir -p coverage
ln -sf `pwd`/coverage $TESTSPACE

# patch fixtures
#bundle exec rake redmine:backlogs:prepare_fixtures

# run rspec
bundle exec rake spec

# run cucumber
if [ ! -n "${CUCUMBER_FLAGS}" ];
then
    export CUCUMBER_FLAGS="--format progress"
fi
bundle exec cucumber $CUCUMBER_FLAGS features
