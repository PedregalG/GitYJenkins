#!/usr/bin/bash
./cabecera.sh $1>paginas/$1.html
./navegacion.sh $1>>paginas/$1.html
./pie.sh>>paginas/$1.html
