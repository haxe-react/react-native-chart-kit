package react.native.chartkit;

typedef AbstractChartProps = {
	?fromZero: Bool,
	?chartConfig: AbstractChartConfig,
	?yAxisLabel: String,
	?yAxisSuffix: String,
	?yLabelsOffset: Float,
	?yAxisInterval: Float,
	?xAxisLabel: String,
	?xLabelsOffset: Float,
	?hidePointsAtIndex: Array<Float>,
}

typedef AbstractChartConfig = ChartConfig & {
	?count: Float,
	?data: Array<Dataset>,
	?width: Float,
	?height: Float,
	?paddingTop: Float,
	?paddingRight: Float,
	?horizontalLabelRotation: Float,
	?formatYLabel: String -> String,
	?labels: Array<String>,
	?horizontalOffset: Float,
	?stackedBar: Bool,
	?verticalLabelRotation: Float,
	?formatXLabel: String -> String,
}
