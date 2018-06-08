#!/bin/sh
echo "data/hora"
date "+data:%x hora:%X"

echo ""
echo "Mensagem"
sed -n "$((($RANDOM % 5)+1))p" mensagens.txt

echo ""
echo "Espaço do HD"
df -h / /home

echo ""
echo "Espaço da memória"
free -h

echo ""
echo "Arquivos da pasta Downloads"
ls -l /home/talles/Downloads | grep -v "^d"

echo ""
echo "Arquivos da pasta home"
echo "Quantidade de imagens.jpg"
ls /home/talles/*.jpg | wc -l
echo "Quantidade de músicas.mp3"
ls /home/talles/*.mp3 | wc -l
echo "Quantidade de vídeos.mp4"
ls /home/talles/*.mp4 | wc -l