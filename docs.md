### Using the app

This simple application was created in [R](href="http://www.r-project.org) with the
[Shiny](http://www.rstudio.com/shiny) framework. The app tests the Shiny framework for building interactive web application from within RStudio, using temperature related data from several Australian Bureau of Meteorology (BOM) weather stations. A script was written to automatically extract / update the data from the BOM website, and to provide an example of visualising these data using Shiny is the purpose of this application. This app was released as a proof of concept only, meaning that the layout, content and functionality of the app will change as more time has been invested in its creation.   

### Explaining variables

The data are daily observations on several temperature related weather variables: minimum overnight temperature, maximum daily temperature, mid-range (or average) daily temperature, heating degree days and cooling degree days. The last three variables have been calculated from the first two. The daily (24 hour) maximum and minimum air temperatures are nominally recorded at 9 am local time. The highest temperature for the 24 hours leading up to the observation is recorded as the maximum temperature for the previous day, while the lowest temperature over the previous 24 hours is recorded as the minimum temperature for the day on which the observation was made. Daily maximum temperatures usually occur in the afternoon and daily minimum temperatures overnight or near dawn. More details on temperature measurements are available from the BOM website: <http://www.bom.gov.au/climate/cdo/about/about-airtemp-data.shtml>

A degree-day is a measure of heating or cooling. For each day, the cooling degree-day is defined as the positive difference between the recorded mean temperature and the base temperature whether neither cooling nor heating is required. When this difference is negative, the cooling degree-day is set to zero. The heating degree-day is defined as the difference between the base temperature and the recorded mean temperature for each day. If this difference is negative, the heating degree-day is set to zero. The base temperature is set to 18 degrees Celsius, for both cooling and heating degree days. See <http://en.wikipedia.org/wiki/Degree_day> and <http://en.wikipedia.org/wiki/Heating_degree_day>

### Explaining scatterplots

A scatterplot displays the data as a collection of points, each having the value of one variable determining the position on the horizontal axis and the value of the other variable determining the position on the vertical axis (see <http://en.wikipedia.org/wiki/Scatter_plot>). It is often used do display a linear or otherwise relationship between two variables. We have used it for a slightly different purpose, namely to display the dynamics of several related variables over time, which essentially makes it a time series plot. 

### Explaining boxplots

A boxplot is a convenient way of showing groups of numerical data through their quartiles graphically. Boxplots may also have lines extending vertically from the boxes (whiskers) indicating variability outside the upper and lower quartiles, hence the terms box-and-whisker plot. Outliers may be plotted as individual points. For more details, see <http://en.wikipedia.org/wiki/Box_plot>

The bottom and top of the box are always the first and third quartiles, and the band inside the box is always the second quartile (the median). The ends of the whiskers can represent several possible alternative values, including the minimum and maximum of all the data variable. Another popular option, often called the Tukey boxplot, is when the lowest datum still within 1.5 times IQR of the lower quartile, and the highest datum is still within 1.5 time IQR of the upper quartile. 

The base **R** function **boxplot** has parameter **range**, which determines how far the plot whiskers extend out from the box. If this parameter is positive, the whiskers extend to the most extreme data point which is no more than *range* times the inter-quartile range from the box. A value of zero causes the whiskers to extend to the data extremes. With the default value of *range* set to 1.5, R produces the Tukey boxplot by default.

### Explaining the tables
The tables is a gVis table, which is automatically sortable and can be paginated. If you want to see the first 15 days with the highest (lowest) of a variable, just click the name of the variable in the column header. You can see that the day with the second highest value of the maximum daily temperature need not be the day with the second highest value of the cooling degree days - the daily minimums matter. 

