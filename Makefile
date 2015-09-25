# https://github.com/phusion/baseimage-docker/blob/master/Makefile
NAME = cif
VERSION = latest # make this a version number!

.PHONY: all build docker docker-run test develop ubuntu14

all: build test

test:
	py.test

build:
	python setup.py build

develop:
	(bash ./helpers/develop.sh)

ubuntu14:
	(bash ./helpers/ubuntu14.sh)

docker:
	(cd builds/docker && make build)

docker-run:
	(cd builds/docker && make run)

run:
	supervisord
