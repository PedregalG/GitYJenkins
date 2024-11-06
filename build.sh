#!/usr/bin/bash
echo "Comprobando la existencia de la hoja de estilo"
if [[ -e css/w3.css ]]
then
echo "Si existe la hoja de estilo"
else
echo "No existe la hoja de estilo.Se va a descargar"
wget https://www.w3schools.com/w3css/4/w3.css
if [[ $? -ne 0 ]]
then
echo "ERROR EN LA DESCARGA DE LA HOJA DE ESTILO"
exit 1
else
mkdir css
mv w3.css css/w3.css
fi
fi


echo "Creando las páginas web"
./index.sh "Índice"
rm -rf paginas
mkdir paginas
./paginas.sh "pagina1">paginas/pagina1.html
./paginas.sh "pagina2">paginas/pagina2.html
./paginas.sh "pagina3">paginas/pagina3.html
echo "FIN"
