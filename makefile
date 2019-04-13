#!/bin/bash

# this makefile can be used to create
# and remove the virtual environment
# for the pyDist package.

pip_install:
	sudo apt-get install python3-pip

build_env:
	@echo "\033[92m-* Installing the virtualenv package using pip\033[0m"
	python3 -m pip install --user virtualenv
	@echo "\033[92m-* Creating the env virtual environment for development\033[0m"
	python3 -m virtualenv -p python3 env
	@echo "\033[92m-* Installing dependencies\033[0m"
	bash shellScripts/install_requirements.sh
	@echo "\033[92m-* The development environment has been setup\033[0m"

build_env_no_pip:
	@echo "\033[92m-* Creating the env virtual environment for development\033[0m"
	python3 -m virtualenv -p python3 env

remove_env:
	@rm -r env
