/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */


import Foundation


/** One value series. */
public class OneValueSeries: Series {

    public enum QuartileMethod: String, Codable { 
        case exclusive = "Exclusive"
        case inclusive = "Inclusive"
    }
    /** Gets or sets the values. */
    public var dataPoints: [OneValueChartDataPoint]?
    /** The number format for the series values. */
    public var numberFormatOfValues: String?
    /** True if inner points are shown. Applied to Waterfall series only. */
    public var showConnectorLines: Bool?
    /** Quartile method. Applied to BoxAndWhisker series only. */
    public var quartileMethod: QuartileMethod?
    /** True if inner points are shown. Applied to BoxAndWhisker series only. */
    public var showInnerPoints: Bool?
    /** True if mean line is shown. Applied to BoxAndWhisker series only. */
    public var showMeanLine: Bool?
    /** True if mean markers are shown. Applied to BoxAndWhisker series only. */
    public var showMeanMarkers: Bool?
    /** True if outlier points are shown. Applied to BoxAndWhisker series only. */
    public var showOutlierPoints: Bool?

    private enum CodingKeys: String, CodingKey {
        case dataPoints
        case numberFormatOfValues
        case showConnectorLines
        case quartileMethod
        case showInnerPoints
        case showMeanLine
        case showMeanMarkers
        case showOutlierPoints
    }

    public init(type: ModelType? = nil, name: String? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil, dataPoints: [OneValueChartDataPoint]? = nil, numberFormatOfValues: String? = nil, showConnectorLines: Bool? = nil, quartileMethod: QuartileMethod? = nil, showInnerPoints: Bool? = nil, showMeanLine: Bool? = nil, showMeanMarkers: Bool? = nil, showOutlierPoints: Bool? = nil) {
        super.init(type: type, name: name, isColorVaried: isColorVaried, invertedSolidFillColor: invertedSolidFillColor, smooth: smooth, plotOnSecondAxis: plotOnSecondAxis, order: order, invertIfNegative: invertIfNegative, explosion: explosion, marker: marker, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, dataPointType: dataPointType)
        self.dataPoints = dataPoints
        self.numberFormatOfValues = numberFormatOfValues
        self.showConnectorLines = showConnectorLines
        self.quartileMethod = quartileMethod
        self.showInnerPoints = showInnerPoints
        self.showMeanLine = showMeanLine
        self.showMeanMarkers = showMeanMarkers
        self.showOutlierPoints = showOutlierPoints
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dataPoints = try values.decode([OneValueChartDataPoint]?.self, forKey: .dataPoints)
        numberFormatOfValues = try values.decode(String?.self, forKey: .numberFormatOfValues)
        showConnectorLines = try values.decode(Bool?.self, forKey: .showConnectorLines)
        quartileMethod = try values.decode(QuartileMethod?.self, forKey: .quartileMethod)
        showInnerPoints = try values.decode(Bool?.self, forKey: .showInnerPoints)
        showMeanLine = try values.decode(Bool?.self, forKey: .showMeanLine)
        showMeanMarkers = try values.decode(Bool?.self, forKey: .showMeanMarkers)
        showOutlierPoints = try values.decode(Bool?.self, forKey: .showOutlierPoints)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dataPoints, forKey: .dataPoints)
        try container.encode(numberFormatOfValues, forKey: .numberFormatOfValues)
        try container.encode(showConnectorLines, forKey: .showConnectorLines)
        try container.encode(quartileMethod, forKey: .quartileMethod)
        try container.encode(showInnerPoints, forKey: .showInnerPoints)
        try container.encode(showMeanLine, forKey: .showMeanLine)
        try container.encode(showMeanMarkers, forKey: .showMeanMarkers)
        try container.encode(showOutlierPoints, forKey: .showOutlierPoints)
    }


}

