#!/usr/bin/env bash

serviceName=test-3-1
echo -e "\nstage empty message"
emptyMessage='{"appTag":null,"service":"'$serviceName'","stringMap":{"name":"testname"},"integerMap":{"testIntKey":1},"floatMap":{},"binaryMap":{},"metaData":{}}'

echo $emptyMessage

myid=$(curl -X POST -H "Content-Type:application/json" http://myliberouter.org/dyn/message/stage -d $emptyMessage)

echo -e "\n\n\n$myid\n\n\n"
echo -e "copy the id and past it to the console"
read myid
echo -e "\nupload a index zip"
curl -v -F name="scampiRest-picture-demo" -F key="main" -F id="$myid" -F file=@"./scampiRest-picture-demo.zip" http://myliberouter.org/dyn/upload


echo -e "\nupload the picture of a dog"
curl -v -F name="Hamlet-1.jpeg" -F key="picture" -F id="$myid" -F file=@"./Hamlet-1.jpg.zip" http://myliberouter.org/dyn/upload


echo -e "\npublish the message"
curl -H "Accept: application/json" http://myliberouter.org/dyn/message/publish/$myid


echo -e "\ncall subscribe to get the scampi message"
curl -H "Accept: application/json" http://myliberouter.org/dyn/subscribe/$serviceName


echo -e "\nThe dog should now be visible on myliberouter.org"