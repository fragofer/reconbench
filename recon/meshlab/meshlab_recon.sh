#!/bin/bash

# format: ./meshlab_recon.sh in_file out_file remaining params
in_file=$1
out_file=$2

meshlab_args="meshlabserver -i $in_file -o $out_file"

arg_ind=0
for arg in $@
do
	let arg_ind=$arg_ind+1
	if [[ $arg_ind -lt 3 ]]
	then
		continue
	fi
	meshlab_args="$meshlab_args $arg"
done

meshlab_args="$meshlab_args -om vc vf vq vn vt fc ff fq fn wc wn wt"

std_out=${out_file%.ply}.out
std_err=${out_file%.ply}.err

echo "meshlab reconstruction..."
echo $meshlab_args
$meshlab_args > $std_out 2> $std_err
echo "... meshlab reconstruction done"
