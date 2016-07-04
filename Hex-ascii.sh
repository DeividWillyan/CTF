#!/bin/bash


echo "import binascii;
print(binascii.unhexlify(\"$1\"))" > $$
python $$ | tr -d "\"b'"
rm $$

