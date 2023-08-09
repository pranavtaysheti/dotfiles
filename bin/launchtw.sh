cd ~/Programs/tiddlywiki
updatetw.sh
npx tiddlywiki ptwiki --init ptwiki
npx tiddlywiki ptwiki --build index
cp ./ptwiki/output/index.html ~/Desktop/ptwiki.html
rm -r ./ptwiki

