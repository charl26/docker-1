#!/bin/sh

brew --version;

if [[ $? == 127 ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Tolsadus/42homebrewfix/master/install.sh)"
fi

docker --version;

if [[ $? == 127 ]]; then
	brew install docker;
fi

docker-machine --version;

if [[ $? == 127 ]]; then
    brew install docker-machine;
fi
