AmCharts.makeChart("chartdiv",
{
"type": "gauge",
"theme": "light",
"arrows": [
{
"id": "GaugeArrow-1"
},
{
"id": "GaugeArrow-2"
},
{
"id": "GaugeArrow-3"
}
],
"axes": [
{
"axisThickness": 1,
"bottomText": overall +" %",
"bottomTextYOffset": -20,
"endValue": 100,
"id": "GaugeAxis-1",
"valueInterval": 10,
"bands": [
{
"color": "#ea3838",
"endValue": 75,
"id": "GaugeBand-1",
"startValue": 0
},
{
"color": "#ffac29",
"endValue": 90,
"id": "GaugeBand-2",
"startValue": 75
},
{
"color": "#00CC00",
"endValue": 100,
"id": "GaugeBand-3",
"innerRadius": "95%",
"startValue": 90
}
]
}
],
"allLabels": [],
"balloon": {},
"titles": [
{
"id": "Title-1",
"size": 15,
"text": "Over All Code Coverage"
}
],
"arrows": [
{
"value": overall
}
]
}
);
