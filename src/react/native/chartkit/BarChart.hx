package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'BarChart')
extern class BarChart extends ReactComponentOfProps<BarChartProps> {}

typedef BarChartProps = {
	> BaseChartProps,

	data:ChartData,						//Data for the chart - see example
	
	?withVerticalLabels:Bool,			//Show vertical labels - default: True
	?withHorizontalLabels:Bool,			//Show horizontal labels - default: True
	?fromZero:Bool,						//Render charts from 0 not from the minimum value. - default: False
	?yAxisLabel:String,					//Prepend text to horizontal labels -- default: ''
	?horizontalLabelRotation:Float, 	//(degree)	Rotation angle of the horizontal labels - default 0
	?verticalLabelRotation:Float, 		//(degree)	Rotation angle of the vertical labels - default 0
}