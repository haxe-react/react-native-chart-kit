package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'StackedBarChart')
extern class StackedBarChart extends ReactComponentOfProps<StackedBarChartProps> {}

typedef StackedBarChartProps = {
	> BaseChartProps,
	data:StackedBarData,				//Data for the chart - see example

	?withVerticalLabels:Bool,			//Show vertical labels - default: True
	?withHorizontalLabels:Bool,			//Show horizontal labels - default: True
}

typedef StackedBarData = {
	labels: Array<String>,
	legend: Array<String>,
	data: Array<StackedBarDataSet>,
	barColors: Array<String>
}

typedef StackedBarDataSet = Array<Float>;

/*
Sample data
final data ={
  labels: ['Test1', 'Test2'],
  legend: ['L1', 'L2', 'L3'],
  data: [
    [60, 60, 60],
    [30,30,60],
  ],
  barColors: ['#dfe4ea', '#ced6e0', '#a4b0be'],
 }
*/
