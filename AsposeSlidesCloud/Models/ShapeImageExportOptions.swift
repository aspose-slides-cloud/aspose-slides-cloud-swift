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


/** Provides options that control how a shape is saved in thumbnail. */
public class ShapeImageExportOptions: Codable {

    public enum ThumbnailBounds: String, Codable { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }
    /** Get or sets scaling ratio by X axis. */
    public var scaleX: Double?
    /** Get or sets scaling ratio by Y axis. */
    public var scaleY: Double?
    /** Get or sets thumbnail bounds */
    public var thumbnailBounds: ThumbnailBounds?
    /** Gets export format. */
    public var format: String?

    private enum CodingKeys: String, CodingKey {
        case scaleX
        case scaleY
        case thumbnailBounds
        case format
    }

    public init(scaleX: Double? = nil, scaleY: Double? = nil, thumbnailBounds: ThumbnailBounds? = nil, format: String? = nil) {
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.thumbnailBounds = thumbnailBounds
        self.format = format
    }


}

