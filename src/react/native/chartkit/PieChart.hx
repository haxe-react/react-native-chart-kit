package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'PieChart')

extern class PieChart extends ReactComponentOfProps<PieChartProps> {}

typedef PieChartProps = {
	> BaseChartProps,

	accessor:String,					//Property in the data object from which the number values are taken
	bgColor:String,						//background color - if you want to set transparent, input transparent or none.
	paddingLeft:String,					//left padding of the pie chart
	absolute:Bool						//shows the values as absolute numbers
}