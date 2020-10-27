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


/** Represents Slide&#39;s theme  */
public class Theme: ResourceBase {

    /** Name. */
    public var name: String?
    /** Color scheme. */
    public var colorScheme: ResourceUri?
    /** Font scheme. */
    public var fontScheme: ResourceUri?
    /** Format scheme. */
    public var formatScheme: ResourceUri?

    private enum CodingKeys: String, CodingKey {
        case name
        case colorScheme
        case fontScheme
        case formatScheme
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, colorScheme: ResourceUri? = nil, fontScheme: ResourceUri? = nil, formatScheme: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.colorScheme = colorScheme
        self.fontScheme = fontScheme
        self.formatScheme = formatScheme
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String?.self, forKey: .name)
        colorScheme = try values.decode(ResourceUri?.self, forKey: .colorScheme)
        fontScheme = try values.decode(ResourceUri?.self, forKey: .fontScheme)
        formatScheme = try values.decode(ResourceUri?.self, forKey: .formatScheme)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(colorScheme, forKey: .colorScheme)
        try container.encode(fontScheme, forKey: .fontScheme)
        try container.encode(formatScheme, forKey: .formatScheme)
    }


}

