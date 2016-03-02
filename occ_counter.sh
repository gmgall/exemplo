#!/bin/bash
#
# occ_counter.sh - Conta as ocorrências de espécies num CSV no formato:
#
# "2","Aburria jacutinga",-45.4167,-23.8
# "3","Aburria jacutinga",-47.98,-24.1756
# "18","Aburria jacutinga",-54.44626,-25.68337

# Verifica se o arquivo de ocorrências pode ser lido
[ ! -e "$1" ] && { echo "Não consigo ler $1"; exit 1; }

# Gera lista com a contagem das ocorrências
LISTA="$(sed -n '1,$p' "$1" |
	cut -f4 -d\" |
	sort |
	uniq -c |
	sort -n -r)"

echo "$LISTA"

# Mostra o total de espécies
echo
echo Total de espécies $(wc -l <<< "$LISTA")
