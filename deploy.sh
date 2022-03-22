#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
#Stop any instance of the application currently running.
pm2 stop simple_app
#Change directory into the folder where the application was downloaded.
cd SimpleApplication/
#Install the dependencies of the application.
npm install
#Start the application with the process name example_app using pm2
pm2 start ./bin/www --name simple_app