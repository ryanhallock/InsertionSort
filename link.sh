#!/bin/bash

function createDictLink() {
    ln -s "/home/$(whoami)/Projects/dicts/$1" "$1"
}

function createSharedLink() {
   ln -s "/home/$(whoami)/Projects/SortShared/$1" "$1"

}

for x in 0 1 2 3 4 5
do
  createDictLink "ordered-10e$x.txt"
  createDictLink "reversed-ordered-10e$x.txt"
  createDictLink "random-10e$x.txt"
done

createSharedLink 'shared.swift'
createSharedLink '.gitignore'
