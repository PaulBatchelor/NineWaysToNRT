nrt_string="d4. r8 m s t4 s m r2 t4 (D2. m s)"
echo $nrt_string | nrt -F' ' | sort -n | ./nrt2xm out.xm 120 70 
