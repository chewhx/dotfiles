res=$(/opt/homebrew/Cellar/blueutil/2.9.1/bin/blueutil --is-connected 18-3f-70-f4-0f-67)
if [[ "$res" = '1' ]]
then
/opt/homebrew/Cellar/blueutil/2.9.1/bin/blueutil --unpair 18-3f-70-f4-0f-67
echo "Keyboard disconnected"
else
/opt/homebrew/Cellar/blueutil/2.9.1/bin/blueutil --unpair 18-3f-70-f4-0f-67
sleep 1
/opt/homebrew/Cellar/blueutil/2.9.1/bin/blueutil --pair 18-3f-70-f4-0f-67
sleep 1
/opt/homebrew/Cellar/blueutil/2.9.1/bin/blueutil --connect 18-3f-70-f4-0f-67
echo "Keyboard connected"
fi