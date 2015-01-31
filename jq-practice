Homework answers

1.
cat data-hold/legislators-current.json | jq '.[0] .name .last'
"Brown"

2.
cat data-hold/legislators-current.json | jq '.[111].id.bioguide'
"D000604"

3.
cat data-hold/legislators-current.json | jq '.[13] .terms[2] .start'
"2001-01-03"

4.
cat data-hold/legislators-current.json | \
jq '.[4] | .name .first, .name .last, .bio .birthday'
"Robert"
"Casey"
"1960-04-13"

5. 
cat data-hold/legislators-current.json | \
jq '.[] .bio .birthday' | sort -r | head -n 10 | tr -d '"'
1984-07-02
1983-03-30
1981-05-28
1981-04-12
1980-11-16
1980-10-04
1980-06-16
1980-04-18
1980-03-01
1980-01-30

6.
cat data-hold/legislators-current.json | \
jq '.[] | .bio .religion' | sort -n | uniq -c | sort -rn | tr -d '"'
 355 null
  42 Roman Catholic
  24 Baptist
  19 Methodist
  15 Jewish
  15 Episcopalian
  15 Catholic
  14 Presbyterian
   7 Latter Day Saints
   6 Protestant
   6 Lutheran
   5 Unknown
   5 Christian
3 African Methodist Episcopal
   2 Southern Baptist
   2 Christian Scientist
   1 United Methodist
   1 Seventh Day Adventist
   1 Nazarene
   1 Episcopal
   1 Church of Christ

   7.
cat data-hold/legislators-current.json | \
jq --raw-output '.[] .terms[0] .start' | sort | \
cut -d '-' -f 1 | grep -c '2015'
64

8.
cat data-hold/legislators-current.json | jq --raw-output '.[] .terms[0] .start'$
1965

9.
cat data-hold/legislators-current.json | jq --raw-output '.[] .terms[-1:][0].pa$
301

10.
cat data-hold/legislators-current.json | jq --raw-output '.[] .terms[-1:][0].pa$
3

11.
cat data-hold/legislators-current.json | jq --raw-output '.[] .terms[] .rss_url$
feed://olson.house.gov/common/rss/?rss=82
http://aderholt.house.gov/common/rss//index.cfm?rss=20
http://adriansmith.house.gov/rss.xml
http://algreen.house.gov/rss.xml
http://amash.house.gov/rss.xml
http://amodei.house.gov/common/rss//?rss=49
http://austinscott.house.gov/index.php?format=feed&amp;type=rss
http://ayotte.senate.gov/rss/?p=news
http://barletta.house.gov/common/rss//index.cfm?rss=25
http://barr.house.gov/rss.xml

12.
cat data-hold/legislators-social-media.json | jq '.[] .social .twitter' | grep $
490

13.
cat data-hold/legislators-social-media.json | jq '.[] .social .facebook' | grep$
439

14.
cat data-hold/legislators-social-media.json | jq --raw-output '.[] | [.id .biog$
"Y000064","RepToddYoung"
"Y000063","RepKevinYoder"
"Y000062","RepJohnYarmuth"
"Y000033","RepDonYoung"
"W000809","Rep_SteveWomack"
"W000808","RepWilson"
"W000806","RepWebster"
"W000805","MarkWarner"
"W000804","RobWittman"
"W000802","SenWhitehouse"

15.
cat data-hold/legislators-social-media.json | jq --raw-output '.[] | [.id .biog$
"S001177",
"M001144",
"M000689",
"D000604",
"C001049",
"C001037",
"A000368",
"B001245",
"G000546",
"W000810",
"V000127",
"C001075",
"F000457",
"K000367",
"G000555",
"G000556",

16.
cat data-hold/congress-twitter-profiles.json | jq '.[] .verified' | grep 'true'$
463

17. 
cat data-hold/congress-twitter-profiles.json | jq '.[] .followers_count' | sort$
1938080

18.
cat data-hold/congress-twitter-profiles.json | jq --raw-output '.[] | [.name, .$
"Aaron Schock","aaronschock",25383,true,"Thu Mar 12 14:04:15 +0000 2009"
"Ander Crenshaw","AnderCrenshaw",8229,true,"Fri Feb 06 01:48:11 +0000 2009"
"Rep. Austin Scott","AustinScottGA08",7326,true,"Thu Jan 06 16:01:46 +0000 2011"
"RepBThompson","BennieGThompson",4401,true,"Wed Oct 14 20:47:03 +0000 2009"
"Betty McCollum","BettyMcCollum04",5784,true,"Tue Mar 06 20:52:11 +0000 2012"
"Bill Pascrell, Jr.","BillPascrell",4201,true,"Tue Sep 15 17:54:32 +0000 2009"
"Blumenauer Media","BlumenauerMedia",2732,true,"Tue Apr 27 21:48:06 +0000 2010"
"U.S. Rep. Bob Latta","boblatta",14499,true,"Fri Jul 11 18:33:24 +0000 2008"
"Brad Sherman","BradSherman",7093,true,"Fri Apr 10 13:38:03 +0000 2009"
"Dutch Ruppersberger","Call_Me_Dutch",4983,true,"Thu May 26 14:39:08 +0000 2011"

19. 
cat data-hold/congress-twitter-profiles.json | jq --raw-output '.[] | [.screen_$
"aaronschock",2502,25383,"Wed Jan 21 02:59:48 +0000 2015"
"AnderCrenshaw",827,8229,"Tue Jan 20 21:39:51 +0000 2015"
"AustinScottGA08",1388,7326,"Wed Jan 21 02:21:25 +0000 2015"
"BennieGThompson",417,4401,"Wed Jan 21 02:52:33 +0000 2015"
"BettyMcCollum04",2449,5784,"Wed Jan 21 03:45:08 +0000 2015"
"BillPascrell",803,4201,"Tue Jan 13 16:05:11 +0000 2015"
"BlumenauerMedia",356,2732,"Wed Jul 30 20:27:37 +0000 2014"
"boblatta",4865,14499,"Wed Jan 21 03:48:27 +0000 2015"
"BradSherman",516,7093,"Wed Jan 21 02:40:53 +0000 2015"
"Call_Me_Dutch",1584,4983,"Tue Jan 20 20:51:43 +0000 2015"
