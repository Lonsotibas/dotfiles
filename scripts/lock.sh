#!/bin/sh

BACKGROUND="/home/matitis/Imágenes/4530945.jpg"

BLANK='#00000000'
CLEAR='#00000000'
DEFAULT='#ffffff80'
TEXT='#ffffff'
WRONG='#ffa69ebb'
VERIFYING='#ffd6a5'

i3lock \
--image="$BACKGROUND" \
--insidever-color=$BLANK     \
--ringver-color=$VERIFYING   \
--insidewrong-color=$WRONG   \
--ringwrong-color=$WRONG     \
--inside-color=$BLANK    \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--keyhl-color=$TEXT  \
--bshl-color=$WRONG  \
--indicator                  \
--verif-text="" \
--wrong-text="" \
--wrong-size=40 \
--noinput-text="" \
--no-modkey-text \
--scale \
--date-pos=100:100

