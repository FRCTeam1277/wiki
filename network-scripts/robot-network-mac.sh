#!/bin/bash

setup_robot()
{
	networksetup -setmanual Wi-Fi 10.12.77.7 255.255.0.0 10.12.77.2
}

setup_internet()
{
	networksetup -setdhcp Wi-Fi
}

case "$1" in
	robot)
		setup_robot
		;;
	internet)
		setup_internet
		;;
	*)
		echo "Usage: $0 robot|internet"
		exit 1
esac
		