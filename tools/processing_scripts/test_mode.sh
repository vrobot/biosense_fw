fn=`basename $1 .csv`
grep -v "0x0025" $1 | grep -v "0x001e" | grep -v "0x001b"> ${fn}_rawdata.csv
grep -v "0x0025" $1 | grep -v "0x0015" | grep -v "0x0018" | grep -v "0x0021" > ${fn}_actavg.csv
python3 raw_data.py ${fn}_rawdata.csv $2
python3 act_avg.py ${fn}_actavg.csv
