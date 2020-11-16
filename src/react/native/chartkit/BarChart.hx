package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'BarChart')
extern class BarChart extends ReactComponentOfProps<BarChartProps> {}

typedef BarChartProps = AbstractChartProps & {
	data: ChartData,
	width: Float,
	height: Float,
	?fromZero: Bool,
	?withInnerLines: Bool,
	yAxisLabel: String,
	yAxisSuffix: String,
	chartConfig: AbstractChartConfig,
	?style: Partial<ViewStyle>,
	?horizontalLabelRotation: Float,
	?verticalLabelRotation: Float,
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
	?showBarTops: Bool,
	?showValuesOnTopOfBars: Bool,
	?withCustomBarColorFromData: Bool,
	?flatColor: Bool,
}