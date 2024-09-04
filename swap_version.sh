#!/bin/bash

if grep ':v1' p3/deployment.yaml ; then
	sed -i 's/wil42\/playground\:v1/wil42\/playground\:v2/g' p3/deployment.yaml
else
	sed -i 's/wil42\/playground\:v2/wil42\/playground\:v1/g' p3/deployment.yaml
fi

git add . && git commit -m "test" && git push
