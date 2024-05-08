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


/** One value chart data point. */
public class OneValueChartDataPoint: DataPoint {

    /** Value. */
    public var value: Double?
    /** Spreadsheet formula in A1-style. */
    public var valueFormula: String?
    /** SetAsTotal. Applied to Waterfall data points only. */
    public var setAsTotal: Bool?
    /** True if the data point shall invert its colors if the value is negative. Applies to bar, column and bubble series. */
    public var invertIfNegative: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let valueValue = source["value"] ?? source["Value"]
        if valueValue != nil {
            self.value = valueValue! as? Double
        }
        let valueFormulaValue = source["valueFormula"] ?? source["ValueFormula"]
        if valueFormulaValue != nil {
            self.valueFormula = valueFormulaValue! as? String
        }
        let setAsTotalValue = source["setAsTotal"] ?? source["SetAsTotal"]
        if setAsTotalValue != nil {
            self.setAsTotal = setAsTotalValue! as? Bool
        }
        let invertIfNegativeValue = source["invertIfNegative"] ?? source["InvertIfNegative"]
        if invertIfNegativeValue != nil {
            self.invertIfNegative = invertIfNegativeValue! as? Bool
        }
    }

    public init(fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, marker: SeriesMarker? = nil, type: ModelType? = nil, value: Double? = nil, valueFormula: String? = nil, setAsTotal: Bool? = nil, invertIfNegative: Bool? = nil) {
        super.init(fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, marker: marker, type: type)
        self.value = value
        self.valueFormula = valueFormula
        self.setAsTotal = setAsTotal
        self.invertIfNegative = invertIfNegative
        self.type = ModelType.oneValue
    }

    private enum CodingKeys: String, CodingKey {
        case value
        case valueFormula
        case setAsTotal
        case invertIfNegative
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        value = try? values.decode(Double.self, forKey: .value)
        valueFormula = try? values.decode(String.self, forKey: .valueFormula)
        setAsTotal = try? values.decode(Bool.self, forKey: .setAsTotal)
        invertIfNegative = try? values.decode(Bool.self, forKey: .invertIfNegative)
        self.type = ModelType.oneValue
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (value != nil) {
            try? container.encode(value, forKey: .value)
        }
        if (valueFormula != nil) {
            try? container.encode(valueFormula, forKey: .valueFormula)
        }
        if (setAsTotal != nil) {
            try? container.encode(setAsTotal, forKey: .setAsTotal)
        }
        if (invertIfNegative != nil) {
            try? container.encode(invertIfNegative, forKey: .invertIfNegative)
        }
    }

}

