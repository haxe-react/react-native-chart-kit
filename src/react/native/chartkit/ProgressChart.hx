package react.native.chartkit;

@:jsRequire('react-native-chart-kit', 'ProgressChart')
extern class ProgressChart extends ReactComponentOfProps<ProgressChartProps> {}

typedef ProgressChartProps = {
	>BaseChartProps,
	data:ProgressChartData,						//Data for the chart - see example
}

typedef ProgressChartData = {
	?labels:Array<String>,
	data:Array<Float>
}
/*
// each value represents a goal ring in Progress chart

final data = {
    labels: ['Swim', 'Bike', 'Run'], // optional
    data: [0.4, 0.6, 0.8]
}
*/