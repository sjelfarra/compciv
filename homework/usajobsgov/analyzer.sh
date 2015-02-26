cd data-hold
date=$(date +%Y-%m-%d_%H00)
mkdir -p $date
curl -o OccupationalSeries.xml http://stash.compciv.org/usajobs.gov/OccupationalSeries.xml
jobfamily=$(cat OccupationalSeries.xml | grep '<JobFamily>' | grep -o '[0-9]*' | sort | uniq )

cd $date
mkdir -p temp
cd temp

for jobfamily in $jobfamily;do
url="https://data.usajobs.gov/api/jobs?page=1&NumberOfJobs=250&series"
fname="$jobfamily-1.json"
curl -s "$url=$jobfamily" -o $fname
echo "downloading to find page numbers for job $jobfamily"
total_pages=$(cat $fname | ~/bin_compciv/jq -r '.Pages')

for pnum in $(seq 2 $total_pages); do
url="https://data.usajobs.gov/api/jobs?page=$pnum&NumberOfJobs=250&series"
fname="$jobfamily-$pnum.json"
curl -s "$url=$jobfamily" -o "$fname"
done
done

cd data-hold
cd $@
cd temp
yearly_jobs=$(cat *.json | ~/bin_compciv/jq '.JobData[] | select(.SalaryBasis == "Per Year")')
simple_rows=$(echo $yearly_jobs | ~/bin_compciv/jq '. | {JobTitle, SalaryMin, SalaryMax}')

while read line; do 
title=$(echo $line | grep -oE '[[:alpha:]].+'); 
filtered_rows=$(echo $simple_rows | ~/bin_compciv/jq "select(.JobTitle == \"$title\")" ); 
min=$(echo $filtered_rows |  ~/bin_compciv/jq -r '.SalaryMin' | tr -d '$' | tr -d ',' | sort -n | head -n 1); 
max=$(echo $filtered_rows |  ~/bin_compciv/jq -r '.SalaryMax' | tr -d '$' | tr -d ',' | sort -n | head -n 1); 
echo "$title | $min | $max";  
done < <(echo $simple_rows | ~/bin_compciv/jq -r '.JobTitle' | sort | uniq -c | sort -rn | head -n 25)
