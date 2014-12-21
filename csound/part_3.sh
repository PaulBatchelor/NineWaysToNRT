echo "[drm2tsd]" | nrt | awk -F',' -vTEMPO=120 -vBASE=60 \
    'BEGIN{ts=60/TEMPO} {print "i1",$1*ts,$2*ts,$3 + BASE} ' |\
    csound -Lstdin -odac:system:playback_ -+rtaudio="jack" -b 2048 pluckrev.csd

