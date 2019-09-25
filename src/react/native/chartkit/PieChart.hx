package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'PieChart')

extern class PieChart extends ReactComponentOfProps<PieChartProps> {}

typedef PieChartProps = {
	> BaseChartProps,

	data:PieChartData,					//Data for the chart - see example
	accessor:String,					//Property in the data object from which the number values are taken (in this case it's 'value')
	
	?bgColor:String,						//background color - if you want to set transparent, input transparent or none.
	?paddingLeft:Int,					//left padding of the pie chart
	?absolute:Bool						//shows the values as absolute numbers
}

typedef PieChartData = Array<PieChartDataSet>;

typedef PieChartDataSet = {
	value:Float,
	name:String,
	color:String,
	legendFontColor:String,
	legendFontSize:Int,
}

/*

final data = [
  { name: 'Seoul', value: 21500000, color: 'rgba(131, 167, 234, 1)', legendFontColor: '#7F7F7F', legendFontSize: 15 },
  { name: 'Toronto', value: 2800000, color: '#F00', legendFontColor: '#7F7F7F', legendFontSize: 15 },
  { name: 'Beijing', value: 527612, color: 'red', legendFontColor: '#7F7F7F', legendFontSize: 15 },
  { name: 'New York', value: 8538000, color: '#ffffff', legendFontColor: '#7F7F7F', legendFontSize: 15 },
  { name: 'Moscow', value: 11920000, color: 'rgb(0, 0, 255)', legendFontColor: '#7F7F7F', legendFontSize: 15 }
]
*/