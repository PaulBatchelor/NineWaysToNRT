tempo=120 

#collection of NRT fragments
cluster=(
    d4rm
    m4.f8s4
    t8Ds2. 
    m4rd
);

#randomly string NRT fragments together, and generate score
for i in $(seq 1 4)
do 
   nrt=$nrt${cluster[$RANDOM % 4]} 
done

echo $nrt | nrt -F ' ' |\
awk -vtempo=$tempo '
BEGIN{
ts = 60 / tempo
max = 0
}
{
    print "i1",$1 * ts,$2 * ts,$3 + 60;
    if($1 * ts + $2 * ts > max) {
        max = $1 * ts + $2 * ts
    }
}
' > score.sco

#render wav file
csound -o out.wav plucker.orc score.sco
rm score.sco
