#!/bin/bash

# Gender Reveal Script with Color and Animation

# Colors
BLUE='\033[1;34m'
BOLD='\033[1m'
NC='\033[0m' # No Color

echo "${BOLD}Initializing baby reveal protocol...${NC}"
sleep 3

echo ">> ${BLUE}Syncing heartbeat monitor...${NC}"
sleep 3

echo ">> ${BLUE}Analyzing kick frequency...${NC}"
sleep 3

echo ">> ${BLUE}Running final genome sequence check...${NC}"
sleep 3

# Animation dots
echo "\nFinalizing reveal"
for i in {1..3}; do
echo "."
sleep 0.5
done
echo "\n"

sleep 3

# Big Reveal
echo -e "${BLUE}"
# Delay before each character
delay=1

# Delay between each letter
delay=1

# Each letter in "ITS A BOY", drawn in 5 rows, side-by-side
lines=(
"  *****   *******   *****         ***  "   
"    *       ***    *            *   *  "  
"    *       ***    *****        *****  "
"    *       ***        *      *     *  "
"  *****     ***    *****      *     *  "
)

# Prepare empty frame
for ((i=0; i<5; i++)); do
  frame[i]=""
done

# Each letter block is 8 characters wide
char_width=8

# Total letters in "ITS A" = 5
total_letters=5

# Animate letters one by one
for ((l=0; l<total_letters; l++)); do
  for ((row=0; row<5; row++)); do
    frame[row]+="${lines[row]:l*char_width:char_width}"
  done
clear
  for ((row=0; row<5; row++)); do
    echo "${frame[row]}"
  done
  sleep $delay
done

echo "" 
echo ""
echo ""
echo ""

# Big ASCII art for B, O, Y (each line of each letter)
B=(
"********  "
"*       * "
"*       * "
"********  "
"*       * "
"*       * "
"********  "
)

O=(
"  ******  "
" *      * "
"*        *"
"*        *"
"*        *"
" *      * "
"  ******  "
)

Y=(
"*       * "
" *     *  "
"  *   *   "
"   ***    "
"    *     "
"    *     "
"    *     "
)

# Animate row by row
for ((i=0; i<7; i++)); do
  echo "${B[$i]}   ${O[$i]}   ${Y[$i]}"
  sleep 0.5
done

echo ""
echo ""
# Baby face
sleep 1
echo ""
echo "        (•‿•)"
echo "       /     \\"
echo "      __(   )__"
echo "     /  |___|  \\"
echo "     |   BOY!  |"
echo "      \\_______/"
echo ""



sleep 1
echo "Estimated arrival: 09-21-2025"

