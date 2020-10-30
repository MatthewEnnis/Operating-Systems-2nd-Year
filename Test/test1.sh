#!/bin/sh

function() {
echo "$1 and $2" >> example.txt
}

read xcx
read charli
function $charli $xcx
