#!/bin/bash

echo This script automatically connect to Lursun kafka.

#git clone https://github.com/hyperledger/fabric-sdk-rest.git
#cd fabric-sdk-rest
pwd
#git checkout dev

cd packages/loopback-connector-fabric
pwd
sudo npm link

cd ../fabric-rest/
pwd
echo should edit package.json here 
sed -i 's/"loopback-connector-fabric": "^1.0.0",/"loopback-connector-fabric": "",/g' package.json
npm install

cd ../..
pwd
sudo chown -R $USER:$USER *

cd packages
pwd
npm install loopback-connector-fabric
npm install fabric-rest

cd ..
#./setup.sh -f ~/fabric-samples/basic-network/ -dukas
./setup.sh -f ~/fabric-samples/balance-transfer/artifacts/channel/ -dukas 


exit;
TODO:
get kafka settings
