#!/usr/bin/make -f

bindir := $(shell go env GOPATH)/bin

all: build

deps:
	go install github.com/homegrew/grew/tools/grew-genrepo@main

build: deps
	$(bindir)/grew-genrepo -v --debug formula 
	$(bindir)/grew-genrepo -v --debug cask
