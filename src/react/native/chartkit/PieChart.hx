package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'PieChart')

extern class PieChart extends ReactComponentOfProps<PieChartProps> {}

typedef PieChartProps = AbstractChartProps & {
	data: PieChartData,
	width: Float,
	height: Float,
	accessor: String,
	backgroundColor: String,
	paddingLeft: String,
	?center: Array<Float>,
	?absolute: Bool,
	?hasLegend: Bool,
	?style: Partial<ViewStyle>,
	?avoidFalseZero?: Bool,
}

typedef PieChartData = Array<PieChartDataSet>;

typedef PieChartDataSet = {
	value:Float,
	name:String,
	color:String,
	?legendFontColor:String,
	?legendFontSize:Int,
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