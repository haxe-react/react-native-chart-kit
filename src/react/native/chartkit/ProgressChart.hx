package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'ProgressChart')
extern class ProgressChart extends ReactComponentOfProps<ProgressChartProps> {}

typedef ProgressChartProps = AbstractChartProps & {
	data: ProgressChartData,
	width: Float,
	height: Float,
	accessor: String,
	backgroundColor: String,
	paddingLeft: String,
	?center: Array<Float>,
	?absolute: Bool,
	?hasLegend: Bool,
	?style: Partial<ViewStyle>,
	?chartConfig: AbstractChartConfig,
	?hideLegend: Bool,
	?strokeWidth: Float,
	?radius: Float,
	?withCustomBarColorFromData: Bool,
}

typedef ProgressChartData = {
	?labels:Array<String>,
	?colors: Array<String>,
	data:Array<Float>
}
/*
// each value represents a goal ring in Progress chart

final data = {
    labels: ['Swim', 'Bike', 'Run'], // optional
    data: [0.4, 0.6, 0.8]
}
*/