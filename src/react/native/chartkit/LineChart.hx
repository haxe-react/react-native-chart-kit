package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'LineChart')
extern class LineChart extends ReactComponentOfProps<LineChartProps> {}

typedef LineChartProps = {
	> BaseChartProps,

	?bezier:Bool,						//Add this prop to make the line chart smooth and curvy
	?withDots:Bool,						//Show dots on the line - default: True
	?withShadow:Bool,					//Show shadow for line - default: True
	?withInnerLines:Bool,				//Show inner dashed lines - default: True
	?withOuterLines:Bool,				//Show outer dashed lines - default: True
	?withVerticalLabels:Bool,			//Show vertical labels - default: True
	?withHorizontalLabels:Bool,			//Show horizontal labels - default: True
	?fromZero:Bool,						//Render charts from 0 not from the minimum value. - default: False
	?yAxisLabel:String,					//Prepend text to horizontal labels -- default: ''
	?decorator:Function,				//This function takes a whole bunch of stuff and can render extra elements, such as data point info or additional markup.
	?onDataPointClick:Function,			//Callback that takes {value, dataset, getColor}
	?horizontalLabelRotation:Float, 	//(degree)	Rotation angle of the horizontal labels - default 0
	?verticalLabelRotation:Float, 		//(degree)	Rotation angle of the vertical labels - default 0
	?getDotColor:Function			//Defines the dot color function that is used to calculate colors of dots in a line chart and takes (dataPoint, dataPointIndex)
}
