#for columbia clic machine connection
#must have $UNI environment variable
function clic() {
	if [ -n "$1" ];
	then
		ssh $UNI@"$1"".clic.cs.columbia.edu"
	else
		ssh $UNI@clic.cs.columbia.edu
	fi
}

function clicpush() {
	scp $1 $UNI@clic.cs.columbia.edu:~/$2
}

function clicpull() {
	scp $UNI@clic.cs.columbia.edu:~/$1 $2
}

