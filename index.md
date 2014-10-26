---
title       : BOM temperature explorer
subtitle    : a simple Shiny app pitch
author      : by andrekos, October 2014
framework   : io2012        # {io2012, html5slides, shower, dzslides, deck.js,landslide, Slidy ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
license     : by-nc-sa
logo        : logo.png
github      :
  user      : andrekos
  repo      : shinybom
---

## The need for the app





* As temperature variability is an important driver in many statistical analyses, it should be convenient to have an easy-to-access webpage with the graphical and tabular summaries of the useful data and statistics. Many of those are available from dedicated websites, like the Australian Bureau of Meteorology [website](http://www.bom.gov.au/), but there is no guarantee they will always have exactly what you may need next. 

* One thing they will always have is the raw data they collect to share. The number and complexity of the useful analyses that a team of skilful quantitative analysts can produce is only limited by their available time and imagination. The latest browser supported technologies (HTML5 & CSS3), the latest trends in statistical computing (R & RStudio) and the free websites for individuals' data product projects (github.io & shinyapps.io) all suggest that modern data analyses should be interactive, dynamic and reproducible.   

* To address this need, and as a proof of concept, a Shiny app was developed and deployed at [shinyapps](https://andrekos.shinyapps.io/shinybom). This [Slidify](http://slidify.org/) presentation, written to pitch the app to those interested, is available from [github.io](https://andrekos.github.io/shinybom). The source code for the app and slides is at [github.com](https://github.com/andrekos/shinybom).

--- .class #id 

## Goodbye static graphs from base, lattice and ggplot!

* Those golden standards of analytic graphics shine no more  


![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.png) 

* You can't see what years the outliers belong to? Boring. If you want this for another station, your analyst would need to modify the code, re-run it and get back to you. Inefficient.

---

## Hello nice stuff with shiny, ggvis and rmarkdown!

* googleVis, ggvis and friends bring interactive plots to R



<!-- ScatterChart generated in R 3.1.1 by googleVis 0.5.6 package -->
<!-- Sun Oct 26 18:53:53 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataScatterChartID2024b8f1606 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 1,
26.8,
12.8,
19.8,
0,
1.8 
],
[
 2,
25.8,
9.6,
17.7,
0.3,
0 
],
[
 3,
28.1,
13.8,
20.95,
0,
2.95 
],
[
 4,
28.6,
13,
20.8,
0,
2.8 
],
[
 5,
32.5,
15.9,
24.2,
0,
6.2 
],
[
 6,
39,
16.4,
27.7,
0,
9.7 
],
[
 7,
27,
16.9,
21.95,
0,
3.95 
],
[
 8,
29.7,
15.7,
22.7,
0,
4.7 
],
[
 9,
30.1,
15.6,
22.85,
0,
4.85 
],
[
 10,
35.7,
16.4,
26.05,
0,
8.05 
],
[
 11,
43.5,
20.6,
32.05,
0,
14.05 
],
[
 12,
43,
28.5,
35.75,
0,
17.75 
],
[
 13,
28.6,
20.7,
24.65,
0,
6.65 
],
[
 14,
27.8,
14.5,
21.15,
0,
3.15 
],
[
 15,
26.2,
14.5,
20.35,
0,
2.35 
],
[
 16,
25.9,
18.1,
22,
0,
4 
],
[
 17,
32.6,
15.6,
24.1,
0,
6.1 
],
[
 18,
38.2,
14.1,
26.15,
0,
8.15 
],
[
 19,
40,
19,
29.5,
0,
11.5 
],
[
 20,
38.7,
20.6,
29.65,
0,
11.65 
],
[
 21,
37.9,
19.6,
28.75,
0,
10.75 
],
[
 22,
37.1,
23.4,
30.25,
0,
12.25 
],
[
 23,
37.2,
22.6,
29.9,
0,
11.9 
],
[
 24,
32.7,
23.2,
27.95,
0,
9.95 
],
[
 25,
37.2,
24.5,
30.85,
0,
12.85 
],
[
 26,
32.3,
22.5,
27.4,
0,
9.4 
],
[
 27,
26.9,
15.5,
21.2,
0,
3.2 
],
[
 28,
31.6,
15.5,
23.55,
0,
5.55 
],
[
 29,
34.2,
16.6,
25.4,
0,
7.4 
],
[
 30,
35.5,
17.4,
26.45,
0,
8.45 
],
[
 31,
30.3,
20,
25.15,
0,
7.15 
] 
];
data.addColumn('number','Day');
data.addColumn('number','MAXT');
data.addColumn('number','MINT');
data.addColumn('number','MIDT');
data.addColumn('number','HDD');
data.addColumn('number','CDD');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartScatterChartID2024b8f1606() {
var data = gvisDataScatterChartID2024b8f1606();
var options = {};
options["allowHtml"] = true;
options["title"] = "Daily records at BOM weather site 9021 in January 2014";
options["titleTextStyle"] = {color:'green',
                              fontName:'Courier',
                              fontSize:15};
options["curveType"] = "function";
options["pointSize"] =      0;
options["lineWidth"] =      2;
options["hAxis"] = {
 "viewWindowMode": "explicit",
"viewWindow": {
 "max":     32,
"min":      0 
},
"title": "day of the month" 
};
options["vAxis"] = {
 "viewWindowMode": "explicit",
"viewWindow": {
 "max":     50,
"min":      0 
},
"title": "degree Celsius" 
};
options["width"] =    750;
options["height"] =    300;

    var chart = new google.visualization.ScatterChart(
    document.getElementById('ScatterChartID2024b8f1606')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "corechart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartScatterChartID2024b8f1606);
})();
function displayChartScatterChartID2024b8f1606() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartScatterChartID2024b8f1606"></script>
 
<!-- divChart -->
  
<div id="ScatterChartID2024b8f1606" 
  style="width: 750; height: 300;">
</div>

* The Shiny app developed allows _you_ to select the month of a year and the weather station. It will eventually allow _you_ to do many more things without your analyst touching the code 


--- &radio

## What is the next step in developing this Shiny app?

I am sure you will be able to deductively conclude that the correct answer is ...

1. Extending the app to include BOM weather data other than temperature 

2. _Exploring the Shiny app building ecosystem further_

3. Extending the app by focusing on temperature related analytics

4. Asking an expensive consultant what businesses want the most

5. Creating an interactive version of the Tukey boxplot

6. Asking around for a feedback on what has been done to date

*** .hint 
This app was a simple project completed in a very short time frame.  As one famous mathematician once mentioned, ["Getting a Ph.D. in two years left me woefully ignorant of almost everything in mathematics not connected with my thesis work."](https://www.dartmouth.edu/~chance/Doob/conversation.html)


*** .explanation 
That's right! I have had more than enough motivation to pause on the project and look around for what is possible and how to do it best. Indeed, as one famous poet once wrote, ["A little learning is a dangerous thing"](http://en.wikipedia.org/wiki/An_Essay_on_Criticism).
