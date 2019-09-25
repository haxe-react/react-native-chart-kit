package react.native.chartkit;
import react.native.component.props.ViewStyle;

typedef BaseChartProps = {
	data:ChartData,						//Data for the chart - see example above
	width:Float,						//Width of the chart, use 'Dimensions' library to get the width of your screen for responsive
	height:Float,						//Height of the chart
	chartConfig:ChartConfig,			//Configuration object for the chart, see example config object above
	?style:haxe.extern.EitherType<ViewStyle, Array<ViewStyle>>,
}