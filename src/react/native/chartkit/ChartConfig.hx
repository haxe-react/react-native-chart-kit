package react.native.chartkit;

typedef ChartConfig = {
	?backgroundGradientFrom: String,		//Defines the first color in the linear gradient of a chart's background
	?backgroundGradientFromOpacity:Float,	//Defines the first color opacity in the linear gradient of a chart's background
	?backgroundGradientTo:String,			//Defines the second color in the linear gradient of a chart's background
	?backgroundGradientToOpacity:Float,		//Defines the second color opacity in the linear gradient of a chart's background
	?color:Void->String,					//Defines the base color function that is used to calculate colors of labels and sectors used in a chart
	?strokeWidth:Float,						//Defines the base stroke width in a chart
	?barPercentage:Float,					//Defines the percent (0-1) of the available width each bar width in a chart
}

typedef ChartData = {
	labels: Array<String>,
	datasets: Array<DataSet>
}

typedef DataSet = {
	> ChartConfig,
	data: Array<Float>
}

/*
Sample config:

final chartConfig = {
  backgroundGradientFrom: '#1E2923',
  backgroundGradientFromOpacity: 0,
  backgroundGradientTo: '#08130D',
  backgroundGradientToOpacity: 0.5,
  color: () -> 'rgba(26, 255, 146, ${opacity})',
  strokeWidth: 2 // optional, default 3
  barPercentage:0.5
}
*/

/*
Sample data
final data = {
  labels: ['January', 'February', 'March', 'April', 'May', 'June'],
  datasets: [{
    data: [ 20, 45, 28, 80, 99, 43 ],
    color: () -> 'rgba(134, 65, 244, ${opacity})' // optional
    strokeWidth: 2 // optional
  }]
}
*/