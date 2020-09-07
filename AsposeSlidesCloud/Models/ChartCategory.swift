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


/** Represents chart category resource */

public struct ChartCategory: Codable {

    /** Gets or sets the categories for chart data */
    public var categories: [ChartCategory]?
    /** Category value */
    public var value: String?
    /** Get or sets the fill format. */
    public var fillFormat: FillFormat?
    /** Get or sets the effect format. */
    public var effectFormat: EffectFormat?
    /** Get or sets the line format. */
    public var lineFormat: LineFormat?
    /** Gets or sets the data points for chart data */
    public var dataPoints: [OneValueChartDataPoint]?

    public init(categories: [ChartCategory]?, value: String?, fillFormat: FillFormat?, effectFormat: EffectFormat?, lineFormat: LineFormat?, dataPoints: [OneValueChartDataPoint]?) {
        self.categories = categories
        self.value = value
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.dataPoints = dataPoints
    }


}

