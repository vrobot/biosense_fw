import sys
import datetime
import os
import struct

filename  = sys.argv[1]

filenameoformatted = "formatted_" + filename

formatcmd = 'egrep ".*ST| handle = ...... value: " ' + filename + ' | grep -v "0x0018" | grep -v "0x001b" | grep -v "0x0021" | sed \'s/^[^ ]* //\' | sed \'s/* .*ST//\' | awk \'NF==6 {print $2, $3, $4, $5, $6} NF!=6 {print $0}\' | sed \'/.*ST/,$!d\' | sed \'s/^.* value: //\' | awk \'/:/{timea=$1;timeb=$2;timec=$3;timed=$4;timee=$5} ; !/:/{print $1,$2,$3,$4,timea,timeb,timec,timed,timee ; timea=""; timeb=""; timec="";timed="";timee=""; for (i=5;i<=(NF-4);i=i+4) print $i,$(i+1),$(i+2),$(i+3)} END {print "00 00 00 00", timea,timeb,timec,timed,timee}\' | awk \'/:/{cmd="gdate -d \\"" $5 " " $6 " " $7 " " $8 " " $9"\\" +%s.%N"; cmd | getline time; close(cmd); print $1, $2, $3, $4, time}; !/:/ {print $1,$2,$3,$4}\' | awk \' NR!=1&&NF==5 {deltatime=$5-timestamp; timestamp=$5;print $0, i, deltatime; i=1} NR==1 {print $0; i=1; timestamp=$5} NF==4{i=i+1; print $0}\' | tac | awk \'NR==1{end=0} NF==7&&end==0 {end=1} end==1 {print $0}\' | awk \'NF==7 {tstart=$5; items=$6; timediff=$7; print $1, $2, $3, $4, $5} NF==4{time=(tstart-(timediff/items)); tstart=time; printf "%s %.20g\\n", $0, time} NF==5 {print $0}\' | tac | sed \'$d\' > ' + filenameoformatted


os.system(formatcmd)
#print(formatcmd)

output_fname = "processed_" + filename
norm_hex      = []
norm_out  = []
t_in      = []
t_out     = []

with open(filenameoformatted) as f:
	for line in f:
		l = line.split()
		norm_hex.append(l[3]+l[2]+l[1]+l[0])
		t_in.append(l[4])

for hex in norm_hex:
	norm_out.append(float(struct.unpack('>f', bytes.fromhex(hex))[0])/8192)
 			
for i in range(len(t_in)):
	s = float(t_in[i]) 
	t_out.append(datetime.datetime.fromtimestamp(s).strftime('%a %b %d %H:%M:%S.%f %Y %Z'))

with open(output_fname, 'w') as f:
    for i in range(len(norm_out)):
    	f.write(str(norm_out[i]) + ", " + str(t_in[i]) + ", " + str(t_out[i]) + "\n") 
