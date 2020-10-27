#!/bin/bash

if ( $1 == 'true' )
then
    tsc --watch
else
    echo 0;
fi

while :; do
  continue
done