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
public class WaterfallSeries: OneValueSeries {

    /** True if inner points are shown. */
    public var showConnectorLines: Bool?

    private enum CodingKeys: String, CodingKey {
        case showConnectorLines
    }

    public init(type: ModelType? = nil, name: String? = nil, isColorVaried: Bool? = nil, invertedSolidFillColor: String? = nil, smooth: Bool? = nil, plotOnSecondAxis: Bool? = nil, order: Int? = nil, numberFormatOfYValues: String? = nil, numberFormatOfXValues: String? = nil, numberFormatOfValues: String? = nil, numberFormatOfBubbleSizes: String? = nil, invertIfNegative: Bool? = nil, explosion: Int? = nil, marker: SeriesMarker? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, dataPointType: DataPointType? = nil, dataPoints: [OneValueChartDataPoint]? = nil, showConnectorLines: Bool? = nil) {
        super.init(type: type, name: name, isColorVaried: isColorVaried, invertedSolidFillColor: invertedSolidFillColor, smooth: smooth, plotOnSecondAxis: plotOnSecondAxis, order: order, numberFormatOfYValues: numberFormatOfYValues, numberFormatOfXValues: numberFormatOfXValues, numberFormatOfValues: numberFormatOfValues, numberFormatOfBubbleSizes: numberFormatOfBubbleSizes, invertIfNegative: invertIfNegative, explosion: explosion, marker: marker, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, dataPointType: dataPointType, dataPoints: dataPoints)
        self.showConnectorLines = showConnectorLines
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        showConnectorLines = try values.decode(Bool?.self, forKey: .showConnectorLines)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(showConnectorLines, forKey: .showConnectorLines)
    }


}

