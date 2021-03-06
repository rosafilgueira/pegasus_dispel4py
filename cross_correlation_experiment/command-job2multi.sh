#!/bin/bash
set -x
export PYTHON_PATH=.


rm -rf /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/DATA/
rm -rf /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/XCORR/


mkdir -p /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/DATA/
mkdir -p /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/XCORR/

cp `pwd`/preprocess_data.zip /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/DATA/
cd /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/DATA/
unzip preprocess_data.zip

rm -rf /home/tutorial/dispel4py/tc_cross_correlation/OUTPUT/DATA/preprocess_data.zip

cd /home/tutorial/dispel4py

#python -m dispel4py.new.processor multi tc_cross_correlation/realtime_xcorr.py -n 4

python -m dispel4py.new.processor multi tc_cross_correlation/xcorr_storm.py -n 4
