#!/bin/bash
add() {
    Result=$((2+3))
    return
}
add

sub() {
    minus=$((3-2))
    return
}
sub

div() {
    divi=$((5/2))
    return
}
div

mul() {
    multi=$((2*3))
    return
}
mul

echo "$Result"  
echo "$minus"
echo "$divi"
echo "$multi"
