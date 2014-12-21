echo "d4. r8 m s t4 s m r2 m4 d2." | nrt | awk -F ',' \
-v scaleX=30 -v scaleY=10 -v offset=12 -v width=400 -v height=300 \
-f gen_ps.awk \
| convert - output.png
