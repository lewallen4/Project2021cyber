#!/bin/bash

echo "Enter Date of Lookup (4 consecutive digits only, IE: 0310 or 0312)"

read Date

echo "Enter Time of Lookup (XX:XX:XX XM, IE: 08:00:00 PM or 02:00:00 AM)"

read Time

echo "Enter Name of Seached Casino Name (BLACKJACK, ROULETTE, OR TEXAS HOLD EM only)"

read Game

echo "Searching, if found then saved to STEP 4 Bonus_Script_Output"

if [[  $Game == "BLACKJACK" ]]; then
VAR1="3"
VAR2="4"

elif [[  $Game = "ROULETTE" ]]; then
VAR1="5"
VAR2="6"

elif [[  $Game = "TEXAS HOLD EM" ]]; then
VAR1="7"
VAR2="8"
fi




cat $Date* | grep "$Time" | awk -v a=$VAR1 -v b=$VAR2 '{print $a,$b}' > "STEP4_BONUS_Script_Output"

cat "STEP4_BONUS_Script_Output"


