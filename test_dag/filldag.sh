#!/bin/bash

if [ $(grep RESULT *.out|wc -l) -lt 3 ]; then
	echo "DEFERRING: $(grep RESULT *.out|wc -l) DONE"
	exit 4
fi

cat <<EOF > processing.dag
NODE_STATUS_FILE node_state.processing
EOF

for i in $(seq $(grep DONE *.out|wc -l)); do
	cat <<EOF >> processing.dag
JOB job$i job.0.submit
VARS job$i count="$i"
EOF
done
