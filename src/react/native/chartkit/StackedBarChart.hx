package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'StackedBarChart')
extern class StackedBarChart extends ReactComponentOfProps<StackedBarChartProps> {}

typedef StackedBarChartProps = {
	> BaseChartProps,
	?withVerticalLabels:Bool,			//Show vertical labels - default: True
	?withHorizontalLabels:Bool,			//Show horizontal labels - default: True
}