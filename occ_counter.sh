#!/bin/bash
#
# occ_counter.sh - Conta as ocorrências de espécies num CSV no formato:
#
# "2","Aburria jacutinga",-45.4167,-23.8
# "3","Aburria jacutinga",-47.98,-24.1756
# "18","Aburria jacutinga",-54.44626,-25.68337

sed -n '1,$p' "$1" |
	cut -f4 -d\" |
	sort |
	uniq -c |
	sort -n -r
