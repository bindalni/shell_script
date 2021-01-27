echo "Total Memory" $(awk '{ print $2 }' <(free -h))

awk '/root/{ print $2 }' <(df -m)

#Test only - sum of gb and mb - weird
awk '/[0-9]/ { sum += $2} END  { print sum }' <(df -h)


echo "Filters Alphanumeric from output/2nd column and thus only left is numeric"
awk ' { if($2 !~ /[A-Z]/) print $2 }' <(df -m)

#filters output column 2nd and removed alphanumeric and adds the rest of 2nd column and divide by 1024 to make it GB
awk '$2 !~ /[A-Z]/ { sum += $2 } END { print sum/1024 }' <(df -m)

