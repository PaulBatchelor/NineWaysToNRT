mkfifo pipe
while (cat pipe |\
nrt -F ' ' |\
awk -vbpm=115 '
BEGIN{
	ts=60/bpm
}
{ 
	printf "i1 %g %g %d\n", $1 * ts, $2 * ts, $3 + 60
}
'
)
do 
:
done 
