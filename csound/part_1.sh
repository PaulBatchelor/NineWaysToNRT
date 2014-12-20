echo "drm" | nrt | awk -F',' '{print "i1",$1,$2,$3}'
