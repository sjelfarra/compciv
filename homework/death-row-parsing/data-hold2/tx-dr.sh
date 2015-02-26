cat data-hold2/txdr.html | pup 'td:nth-of-type(7) text{}' | sed s/Hispanic/Hispanic/ | sed s/White/White/ | sed s/Other/Other/ | sed s/Black/Black/
cat data-hold2/txdrold.html | pup 'td:nth-of-type(4) text{}' | sed s/Hispanic/Hispanic/ | sed s/White/White/ | sed s/Other/Other/ | sed s/Black/Black/
