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


/** Represents chart axes */
public class Axes: Codable {

    /** Gets or sets the horizontal axis. */
    public var horizontalAxis: Axis?
    /** Gets or sets the vertical axis. */
    public var verticalAxis: Axis?
    /** Gets or sets the secondary horizontal axis. */
    public var secondaryHorizontalAxis: Axis?
    /** Gets or sets the secondary vertical axis. */
    public var secondaryVerticalAxis: Axis?

    private enum CodingKeys: String, CodingKey {
        case horizontalAxis
        case verticalAxis
        case secondaryHorizontalAxis
        case secondaryVerticalAxis
    }

    public init(horizontalAxis: Axis? = nil, verticalAxis: Axis? = nil, secondaryHorizontalAxis: Axis? = nil, secondaryVerticalAxis: Axis? = nil) {
        self.horizontalAxis = horizontalAxis
        self.verticalAxis = verticalAxis
        self.secondaryHorizontalAxis = secondaryHorizontalAxis
        self.secondaryVerticalAxis = secondaryVerticalAxis
    }


}

