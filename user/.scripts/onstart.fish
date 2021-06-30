#!/bin/fish
# starts all files in onstart dir

for file in ~/.scripts/onstart/*
    $file
end
