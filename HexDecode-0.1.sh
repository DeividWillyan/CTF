#!/bin/bash

###################
# Deivid Willyan  #
# Hex to ascii    #
# Versão: 0.1     #
# 03/07/2016      #
###################

# Criando o hexadecimal

a="LHC{Pal4vrA_0R1ginal}"

hex=$(echo "$a" | od -t x1 | tr -d ' '| head -n1 | sed 's/0.*00//')

dump=$(echo "$hex" | awk 'gsub(".{2}", "\\x&")')

echo "Palavra Original : $a"
echo "Hexadecimal : $hex"
echo "HexConvertida : $dump"
printf "ASCII : $dump"
