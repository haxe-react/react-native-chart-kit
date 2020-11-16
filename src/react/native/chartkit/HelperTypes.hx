package react.native.chartkit;

typedef Dataset = {
	/** The data corresponding to the x-axis label. */
	data: Array<Float>,

	/** A function returning the color of the stroke given an input opacity value. */
	?color: Float -> String,

	/** A function returning array of the colors of the stroke given an input opacity value for each data value. */
	?colors: Array<Float> -> String,

	/** The width of the stroke. Defaults to 2. */
	?strokeWidth: Float,

	/** A Bool indicating whether to render dots for this line */
	?withDots: Bool,

	/** Override of LineChart's withScrollableDot property just for this dataset */
	?withScrollableDot: Bool,
}

typedef ChartData = {
	/** The x-axis labels */
	labels: Array<String>,
	datasets: Array<Dataset>,
}

typedef ChartConfig = {
	?backgroundColor: String,
	/**
	 * Defines the first color in the linear gradient of a chart's background
	 */
	?backgroundGradientFrom: String,
	/**
	 * Defines the first color opacity in the linear gradient of a chart's background
	 */
	?backgroundGradientFromOpacity: Float,
	/**
	 * Defines the second color in the linear gradient of a chart's background
	 */
	?backgroundGradientTo: String,
	/**
	 * Defines the second color opacity in the linear gradient of a chart's background
	 */
	?backgroundGradientToOpacity: Float,
	?fillShadowGradient: String,
	?fillShadowGradientOpacity: Float,
	/**
	 * Defines the option to use color from dataset to each chart data
	 */
	?useShadowColorFromDataset: Bool,
	/**
	 * Defines the base color function that is used to calculate colors of labels and sectors used in a chart
	 */
	?color: Float -> Float -> String,
	/**
	 * Defines the function that is used to calculate the color of the labels used in a chart.
	 */
	?labelColor: Float -> String,
	/**
	 * Defines the base stroke width in a chart
	 */
	?strokeWidth: Float,
	/**
	 * Defines the percent (0-1) of the available width each bar width in a chart
	 */
	?barPercentage: Float,
	?barRadius: Float,
	/**
	 * Override styles of the background lines, refer to react-native-svg's Line documentation
	 */
	?propsForBackgroundLines: Partial<SvgViewStyle>,
	/**
	 * Override styles of the labels, refer to react-native-svg's Text documentation
	 */
	?propsForLabels: SvgTextProps,
	/**
	 * Override styles of vertical labels, refer to react-native-svg's Text documentation
	 */
	?propsForVerticalLabels: SvgTextProps,

	/**
	 * Override styles of horizontal labels, refer to react-native-svg's Text documentation
	 */
	?propsForHorizontalLabels: SvgTextProps,
	/**
	 * Override styles of the dots, refer to react-native-svg's Text documentation
	 */
	?propsForDots: SvgCircleProps,
	?decimalPlaces: Float,
	?style: Partial<ViewStyle>,

	/**
	 * Define stroke line join type
	 */
	?linejoinType: LineJoinType,

	/**
	 * Define fill color for scrollable dot
	 */
	?scrollableDotFill: String,

	/**
	 * Define stroke color for scrollable dot
	 */
	?scrollableDotStrokeColor: String,

	/**
	 * Define stroke width for scrollable dot
	 */
	?scrollableDotStrokeWidth: Float,

	/**
	 * Define radius for scrollable dot
	 */
	?scrollableDotRadius: Float,

	/**
	 * Override style for additional info view upper scrollable dot
	 */
	?scrollableInfoViewStyle: Partial<ViewStyle>,

	/**
	 * Override text style for additional info view upper scrollable dot
	 */
	?scrollableInfoTextStyle: Partial<TextStyle>,
	?scrollableInfoTextDecorator: Float -> String,

	/**
	 * Set Info View offset
	 */
	?scrollableInfoOffset: Float,

	/**
	 * Set Info View size
	 */
	?scrollableInfoSize: Size,
}

typedef Size = {
	width: Float,
	height: Float,
}

enum abstract LineJoinType(String) {
	var miter;
	var bevel;
	var round;
}

typedef SvgViewStyle = Dynamic;
typedef SvgCircleProps = Dynamic;
typedef SvgTextProps = Dynamic;

typedef Partial<T> = haxe.extern.EitherType<T, Array<T>>;