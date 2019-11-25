CURRENT_SONG=$(curl -s 'https://rocknfolk-app.respawn.fr/get-nowplaying.php' |jq -r ".artist+\" - \"+.title")

LAST_SONG=$(cat /tmp/rnfradio 2> /dev/null)


if [ "$CURRENT_SONG" != "$LAST_SONG" ]
then
 echo $CURRENT_SONG >  /tmp/rnfradio
 echo $CURRENT_SONG
 notify-send -t 20000 "$CURRENT_SONG"
fi




