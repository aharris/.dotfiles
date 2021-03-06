NUM_LINES=10
TOP=`top -l 1 | head -n 4 | tail -n 1 | awk '{printf "%3d%%\n", $3}'`
CPU=${TOP%\%*}
ACTIVE_LINES=$(($CPU/$NUM_LINES))
LINES=""
BAR_CHARACTER="█"
for (( i = 0; i < $NUM_LINES; i++ )); do
  if [[ $i < $ACTIVE_LINES ]]; then
    LINES="$LINES$BAR_CHARACTER"
  else
    LINES="$LINES "
  fi
done
FREE=`vm_stat | grep free | awk '{ print $3 }' | sed 's/\\.//'`
TOTAL=`vm_stat | grep " active" | awk '{ print $3 }' | sed 's/\\.//'`
FREE_MEM=$(( $TOTAL-$FREE ))
USED_MEM=`awk 'BEGIN{printf("%0.1f", '$FREE_MEM' / 100000)}'`
TOTAL_MEM=`awk 'BEGIN{printf("%0.1f", '$TOTAL' / 100000)}'`
MEM_SUFFIX="G"
echo "$USED_MEM/$TOTAL_MEM$MEM_SUFFIX |${LINES}|"

