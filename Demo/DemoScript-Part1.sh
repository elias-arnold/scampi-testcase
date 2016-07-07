#!/usr/bin/env bash
serviceName='DemoService'

echo -e "\nstage empty message"

message='{"appTag":null,"service":"'$serviceName'","stringMap":{"name":"Testname"},"integerMap":{"testIntKey":1},"floatMap":{},"binaryMap":{},"metaData":{}}'

echo $message

myid=$(curl -X POST -H "Content-Type:application/json" http://myliberouter.org/dyn/message/stage -d $message)

echo -e "\n\n\n$myid\n\n\n"
read myid

echo -e "\nUpload a interpreter script"
# curl -v -F name="main" -F key="main" -F id="$myid" -F file=@"./main.zip" http://myliberouter.org/dyn/upload

echo -e "\nNow we can use the browser. Cheers!"

# curl -H "Accept: application/json" http://myliberouter.org/dyn/subscribe/DemoService
# curl -H "Accept: application/json" http://myliberouter.org/dyn/message/publish/57613fbe37ccdf7f2588b600