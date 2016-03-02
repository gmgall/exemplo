# Contador de ocorrências de espécies

O script `occ_counter.sh` recebe um arquivo com ocorrências de espécies no
formato

```
"109","Aburria jacutinga",-48.4059,-24.1647
"118","Aburria jacutinga",-48.4181,-24.3013
"1823","Agelasticus cyanopus",-56.662,-16.3834
"1845","Agelasticus cyanopus",-56.9292,-17.1174
"2145","Agelasticus cyanopus",-56.9431,-17.1025
"2319","Alopochelidon fucata",-46.775,-20.3338
"2415","Alopochelidon fucata",-47.8945,-15.9383
"3042","Amaurospiza moesta",-57.2309,-19.2545
```

e informa uma lista com o número de ocorrências por espécie na saída padrão.

Exemplo de saída:

```
     63 Agelasticus cyanopus
     49 Alopochelidon fucata
     20 Aburria jacutinga
     15 Amaurospiza moesta

Total de espécies: 163 
```
