import sys
import datetime
import os
import math


filename  = sys.argv[1]
sensitivity = float(sys.argv[2])

filenameoformatted = "formatted_" + filename

formatcmd = 'egrep "ST| handle = ...... value: " ' + filename + ' | grep -v "0x0025" | sed \'s/^[^ ]* //\' | sed \'s/* .*ST//\' | awk \'NF==6 {print $2, $3, $4, $5, $6} NF!=6 {print $0}\' | sed \'/.*ST/,$!d\' | sed \'s/^.* value: //\' | awk \'/:/{timea=$1;timeb=$2;timec=$3;timed=$4;timee=$5} ; !/:/{print $1,$2,$3,$4,$5,$6,timea,timeb,timec,timed,timee ; timea=""; timeb=""; timec="";timed="";timee=""; for (i=7;i<=(NF-6);i=i+6) print $i,$(i+1),$(i+2),$(i+3),$(i+4),$(i+5)} END {print "00 00 00 00 00 00", timea,timeb,timec,timed,timee}\' | awk \'/:/{cmd="gdate -d \\"" $7 " " $8 " " $9 " " $10 " " $11"\\" +%s.%N"; cmd | getline time; close(cmd); print $1, $2, $3, $4, $5, $6, time}; !/:/ {print $1,$2,$3,$4,$5,$6}\' | awk \' NR!=1&&NF==7 {deltatime=$7-timestamp; timestamp=$7;print $0, i, deltatime; i=1} NR==1 {print $0; i=1; timestamp=$7} NF==6{i=i+1; print $0}\' | tac | awk \'NR==1{end=0} NF==9&&end==0 {end=1} end==1 {print $0}\' | awk \'NF==9 {tstart=$7; items=$8; timediff=$9; print $1, $2, $3, $4, $5, $6, $7} NF==6{time=(tstart-(timediff/items)); tstart=time; printf "%s %.20g\\n", $0, time} NF==7 {print $0}\' | tac | sed \'$d\' > ' + filenameoformatted

os.system(formatcmd)
#print(formatcmd)

output_fname = "processed_" + filename

xlsb = []
xmsb = []
ylsb = []
ymsb = []
zlsb = []
zmsb = []

x = []
y = []
z = []

x_out = []
y_out = []
z_out = []
t_in = []
t_out = []

with open(filenameoformatted) as f:
	for line in f:
		l = line.split()
		xlsb.append(l[0])
		xmsb.append(l[1])
		ylsb.append(l[2])
		ymsb.append(l[3])
		zlsb.append(l[4])
		zmsb.append(l[5])
		t_in.append(l[6])


for i in range(len(xlsb)):
	a = xmsb[i]
	x.append(a + xlsb[i])
	b = ymsb[i]
	y.append(b + ylsb[i])
	c = zmsb[i]
	z.append(c + zlsb[i])

for i in range(len(xlsb)):
	hex_str_x = x[i]
	hex_int_x = int(hex_str_x, 16)
	if hex_int_x >= 0x8000:
    		hex_int_x -= 0x10000
	hex_out_x = hex_int_x
	hex_out_x *= sensitivity
	x_out.append(hex_out_x)

for i in range(len(ylsb)):
	hex_str_y = y[i]
	hex_int_y = int(hex_str_y, 16)
	if hex_int_y >= 0x8000:
    		hex_int_y -= 0x10000
	hex_out_y = hex_int_y
	hex_out_y *= sensitivity
	y_out.append(hex_out_y)

for i in range(len(zlsb)):
	hex_str_z = z[i]
	hex_int_z = int(hex_str_z, 16)
	if hex_int_z >= 0x8000:
    		hex_int_z -= 0x10000
	hex_out_z = hex_int_z
	hex_out_z *= sensitivity
	z_out.append(hex_out_z)

for i in range(len(t_in)):
	s = float(t_in[i]) 
	t_out.append(datetime.datetime.fromtimestamp(s).strftime('%a %b %d %H:%M:%S.%f %Y %Z'))

with open(output_fname, 'w') as f:
    for i in range(len(xlsb)):
    	f.write(str(x_out[i]) + ", " + str(y_out[i]) + ", " + str(z_out[i]) + ", " + str(math.sqrt((x_out[i]**2)+(y_out[i]**2)+(z_out[i]**2))) + ", " + str(t_in[i]) + ", " + str(t_out[i]) + "\n")
