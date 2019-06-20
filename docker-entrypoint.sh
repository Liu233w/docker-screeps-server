#!/bin/bash
set -e

function init_srv(){
	echo "===== SETTING UP SCREEPS ====="
	cp -ar /screeps-dist* /screeps
	npx screeps init
}

function run_srv(){
	cd /screeps
	exec npx screeps start
}

case $1 in
	init)
		init_srv
		;;
	run)
		run_srv
		;;
	*)
		exec "$@"
		;;
esac
