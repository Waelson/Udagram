#!/bin/bash
read -p "Enter with text: " var
echo "***********************************"
echo -n $var | base64
echo "***********************************"