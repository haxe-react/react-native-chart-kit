package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'LineChart')
extern class LineChart extends ReactComponentOfProps<LineChartProps> {}

typedef LineChartData = ChartData & {
	?legend: Array<String>
}

typedef LineChartProps = AbstractChartProps & {
	/**
	 * Data for the chart.
	 *
	 * Example from [docs](https://github.com/indiespirit/react-native-chart-kit#line-chart):
	 *
	 * ```javascript
	 * const data = {
	 *   labels: ['January', 'February', 'March', 'April', 'May', 'June'],
	 *   datasets: [{
	 *     data: [ 20, 45, 28, 80, 99, 43 ],
	 *     color: (opacity = 1) => `rgba(134, 65, 244, ${opacity})`, // optional
	 *     strokeWidth: 2 // optional
	 *   }],
	 *   legend: ["Rainy Days", "Sunny Days", "Snowy Days"] // optional
	 * }
	 * ```
	 */
	data: LineChartData,
	/**
	 * Width of the chart, use 'Dimensions' library to get the width of your screen for responsive.
	 */
	width: Float,
	/**
	 * Height of the chart.
	 */
	height: Float,
	/**
	 * Show dots on the line - default: True.
	 */
	?withDots: Bool,
	/**
	 * Show shadow for line - default: True.
	 */
	?withShadow: Bool,
	/**
	 * Show inner dashed lines - default: True.
	 */

	?withScrollableDot: Bool,
	?withInnerLines: Bool,
	/**
	 * Show outer dashed lines - default: True.
	 */
	?withOuterLines: Bool,
	/**
	 * Show vertical lines - default: True.
	 */
	?withVerticalLines: Bool,
	/**
	 * Show horizontal lines - default: True.
	 */
	?withHorizontalLines: Bool,
	/**
	 * Show vertical labels - default: True.
	 */
	?withVerticalLabels: Bool,
	/**
	 * Show horizontal labels - default: True.
	 */
	?withHorizontalLabels: Bool,
	/**
	 * Render charts from 0 not from the minimum value. - default: False.
	 */
	?fromZero: Bool,
	/**
	 * Prepend text to horizontal labels -- default: ''.
	 */
	?yAxisLabel: String,
	/**
	 * Append text to horizontal labels -- default: ''.
	 */
	?yAxisSuffix: String,
	/**
	 * Prepend text to vertical labels -- default: ''.
	 */
	?xAxisLabel: String,
	/**
	 * Configuration object for the chart, see example:
	 *
	 * ```javascript
	 * const chartConfig = {
	 *   backgroundGradientFrom: "#1E2923",
	 *   backgroundGradientFromOpacity: 0,
	 *   backgroundGradientTo: "#08130D",
	 *   backgroundGradientToOpacity: 0.5,
	 *   color: (opacity = 1) => `rgba(26, 255, 146, ${opacity})`,
	 *   labelColor: (opacity = 1) => `rgba(26, 255, 146, ${opacity})`,
	 *   strokeWidth: 2, // optional, default 3
	 *   barPercentage: 0.5
	 * };
	 * ```
	 */
	?chartConfig: AbstractChartConfig,

	/**
	 * Divide axis quantity by the input Float -- default: 1.
	 */
	?yAxisInterval: Float,

	/**
	 * Defines if chart is transparent
	 */
	?transparent: Bool,
	/**
	 * This function takes a [whole bunch](https://github.com/indiespirit/react-native-chart-kit/blob/master/src/line-chart.js#L266)
	 * of stuff and can render extra elements,
	 * such as data point info or additional markup.
	 */
	?decorator: Function,
	/**
	 * Callback that is called when a data point is clicked.
	 */
	?onDataPointClick: {
	  index: Float,
	  value: Float,
	  dataset: Dataset,
	  x: Float,
	  y: Float,
	  getColor: Float -> String
	} -> Void,
	/**
	 * Style of the container view of the chart.
	 */
	?style: Partial<ViewStyle>,
	/**
	 * Add this prop to make the line chart smooth and curvy.
	 *
	 * [Example](https://github.com/indiespirit/react-native-chart-kit#bezier-line-chart)
	 */
	?bezier: Bool,
	/**
	 * Defines the dot color function that is used to calculate colors of dots in a line chart.
	 * Takes `(dataPoint, dataPointIndex)` as arguments.
	 */
	?getDotColor: Any->Float->String,
	/**
	 * Renders additional content for dots in a line chart.
	 * Takes `({x, y, index})` as arguments.
	 */
	?renderDotContent: {
	  x: Float,
	  y: Float,
	  index: Float,
	  indexData: Float,
	} -> ReactComponent,
	/**
	 * Rotation angle of the horizontal labels - default 0 (degrees).
	 */
	?horizontalLabelRotation: Float,
	/**
	 * Rotation angle of the vertical labels - default 0 (degrees).
	 */
	?verticalLabelRotation: Float,
	/**
	 * Offset for Y axis labels.
	 */
	?yLabelsOffset: Float,
	/**
	 * Offset for X axis labels.
	 */
	?xLabelsOffset: Float,
	/**
	 * Array of indices of the data points you don't want to display.
	 */
	?hidePointsAtIndex: Array<Float>,
	/**
	 * This function change the format of the display value of the Y label.
	 * Takes the y value as argument and should return the desirable String.
	 */
	?formatYLabel: String -> String,
	/**
	 * This function change the format of the display value of the X label.
	 * Takes the X value as argument and should return the desirable String.
	 */
	?formatXLabel: String -> String,
	/**
	 * Provide props for a data point dot.
	 */
	?getDotProps: Any->Float->Any,
	/**
	 * The Float of horizontal lines
	 */
	?segments: Float,
}