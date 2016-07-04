#!/bin/bash

echo "import binascii;
print(binascii.unhexlify(\"$(echo "$1" | base64 -d)\"))" > $$
	python $$ | tr -d "\"b'"
	rm $$


# python -c "import binascii; print (binascii.unhexlify(\"4c48437b50616c347672415f30523167\"))"
