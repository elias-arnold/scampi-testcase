#!/usr/bin/env bash
serviceName='TestDemoService'

echo -e "\nstage empty message"

message='{"appTag":null,"service":"'$serviceName'","stringMap":{"name":"Testname"},"integerMap":{"testIntKey":1},"floatMap":{},"binaryMap":{},"metaData":{}}'

echo $message

myid=$(curl -X POST -H "Content-Type:application/json" http://myliberouter.org/dyn/message/stage -d $message)

echo -e "\n\n\n$myid\n\n\n"
read myid

echo -e "\nUpload a interpreter script"
curl -v -F name="scampiRest-picture-demo" -F key="main" -F id="$myid" -F file=@"./scampiRest-picture-demo.zip" http://myliberouter.org/dyn/upload

echo -e "\nNow we can use the browser. Cheers!"