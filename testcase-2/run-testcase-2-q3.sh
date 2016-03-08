#!/usr/bin/env bash


serviceName=test-3-1

echo -e "\ncall subscribe to get the scampi message"
curl -H "Accept: application/json" http://myliberouter.org/dyn/subscribe/$serviceName