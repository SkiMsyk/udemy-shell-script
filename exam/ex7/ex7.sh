#!/bin/bash

# function to remove lock file
function stop_exam7(){
	rm exam7.lock
	exit 0
}

# argument check: number of arguments must be 1
if [ $# -ne 1 ];
then
	echo 'argument error'
	exit 1
fi

# main process
if [ $1 = 'start' ];
then
	# check process-status
	if [ -f 'exam7.lock' ];
	then
		echo 'Process si already running'
		exit 0
	else
		# create lock file
		echo $$ > exam7.lock
		trap "stop_exam7" 2 15
		for i in `seq 1 1000`;
		do
			echo $i >> output_$$.txt
			sleep 0.2
		done
		rm exam7.lock
		exit 0
	fi
elif [ $1 = 'stop' ];
then
	if [ -f 'exam7.lock' ];
	then
		PID=-1
		while read p;
		do
			PID=$p
		done < 'exam7.lock'
		kill -15 $PID
	else
		echo 'process is not runnning'
		exit 0
	fi
elif [ $1 = 'status' ];
then
	if [ -f 'exam7.lock' ];
	then
		PID=-1
		while read p;
		do
			PID=$p
		done < 'exam7.lock'
		echo Process is running pid=$PID
	else
		echo 'Process is no running'
	fi
else
	echo 'wrong argument'
	exit 1
fi
