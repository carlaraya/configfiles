#!/bin/bash
REASON=$(zenity --forms --text="Why do you wanna use firefox" --add-entry="")
echo "Started: $(date)" >> ~/reasons.txt
echo "Reason:  $REASON" >> ~/reasons.txt

MYPASSWORD="whatislove"
RANDSTR=$(cat /dev/urandom | tr -dc "a-zA-Z0-9" | fold -w 32 | head -n 1)
USERINPUT=$(zenity --forms --no-markup --text="Now type this: $RANDSTR plus your password" --add-password="")
if [ "$RANDSTR$MYPASSWORD" == "$USERINPUT" ]      
then
    ./ReallyOpenFox.sh &
    MINS=15
    while :
    do
        sleep $((15*60))
        if [[ $(tail -1l reasons.txt) == "Stopped"* ]]
        then
            break
        else
            echo "$MINS mins" >> ~/reasons.txt
            ((MINS+=15))
        fi
    done
else
    zenity --info --text="Wrong input"
    printf "Wrong input\n" >> ~/reasons.txt
fi
