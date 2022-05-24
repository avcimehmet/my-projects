#! /bin/bash

echo "Serdar's terminate instance activities." > result.txt
cat event_history.csv | head -n 1 >> result.txt
awk '/serdar.*TerminateInstances/ {print}' event_history.csv >> result.txt

echo "Serdar's terminate instance activities on 'i-0c127ab5cdf997cf4' instance." >> result.txt
cat event_history.csv | head -n 1 >> result.txt
awk '/serdar.*TerminateInstances.*i-0c127ab5cdf997cf4/ {print $4}' event_history.csv >> result.txt


