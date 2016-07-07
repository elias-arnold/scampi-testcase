#!/usr/bin/env bash
serviceName='TestDemoService'

echo -e "\n\n\nPlease enter the id again!\n\n\n"
read myid

echo -e "\nupload my dogs pic\n\n"
curl -v -F name="Hamlet-1.jpeg" -F key="picture-dog" -F id="$myid" -F file=@"./Hamlet-1.jpg.zip" http://myliberouter.org/dyn/upload
echo -e "\nupload sucessfull"

echo -e "\nupload my cats pic\n\n"
curl -v -F name="Emilio-1.jpeg" -F key="picture-cat" -F id="$myid" -F file=@"./Emilio-1.jpg.zip" http://myliberouter.org/dyn/upload
echo -e "\nupload sucessfull"
