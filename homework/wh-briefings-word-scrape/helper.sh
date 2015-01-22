cat data-hold/* |pup '.legacy-para text{}' | grep -oE '[[:alpha:]]{7,}+' >> totalwords.txt

cat data-hold/* |pup 'p text{}' | grep -oE '[[:alpha:]]{7,}+' >> totalwords.txt  

cat totalwords.txt | sort | uniq -c | sort -rn | head -n 10 

rm totalwords.txt
