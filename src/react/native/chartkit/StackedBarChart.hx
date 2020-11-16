package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'StackedBarChart')
extern class StackedBarChart extends ReactComponentOfProps<StackedBarChartProps> {}

typedef StackedBarChartProps = AbstractChartProps & {
	/**
	 * E.g.
	 * ```javascript
	 * const data = {
	 *   labels: ["Test1", "Test2"],
	 *   legend: ["L1", "L2", "L3"],
	 *   data: [[60, 60, 60], [30, 30, 60]],
	 *   barColors: ["#dfe4ea", "#ced6e0", "#a4b0be"]
	 * };
	 * ```
	 */
	data: StackedBarChartData,
	width: Float,
	height: Float,
	chartConfig: AbstractChartConfig,
	hideLegend: Bool,
	?style: Partial<ViewStyle>,
	barPercentage?: Float,
	decimalPlaces?: Float,
	/**
	 * Show vertical labels - default: True.
	 */
	?withVerticalLabels: Bool,
	/**
	 * Show horizontal labels - default: True.
	 */
	?withHorizontalLabels: Bool,
	/**
	 * The Float of horizontal lines
	 */
	?segments: Float,

	?percentile: Bool,
}


typedef StackedBarChartData = {
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
