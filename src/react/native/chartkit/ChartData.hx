package react.native.chartkit;

typedef ChartData = {
	labels: Array<String>,
	datasets: Array<ChartDataSet>
}

typedef ChartDataSet = {
	> ChartConfig,
	data: Array<Float>
}

/*
Sample data
final data = {
  labels: ['January', 'February', 'March', 'April', 'May', 'June'],
  datasets: [{
    data: [ 20, 45, 28, 80, 99, 43 ],
    color: () -> 'rgba(134, 65, 244, ${opacity})' // optional
    strokeWidth: 2 // optional
  }]
}
*/
