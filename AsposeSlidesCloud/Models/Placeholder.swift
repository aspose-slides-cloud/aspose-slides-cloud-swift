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


/** Represents placeholder */
public class Placeholder: ResourceBase {

    public enum Orientation: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
    }
    public enum Size: String, Codable { 
        case full = "Full"
        case half = "Half"
        case quarter = "Quarter"
    }
    public enum ModelType: String, Codable { 
        case title = "Title"
        case body = "Body"
        case centeredTitle = "CenteredTitle"
        case subtitle = "Subtitle"
        case dateAndTime = "DateAndTime"
        case slideNumber = "SlideNumber"
        case footer = "Footer"
        case header = "Header"
        case object = "Object"
        case chart = "Chart"
        case table = "Table"
        case clipArt = "ClipArt"
        case diagram = "Diagram"
        case media = "Media"
        case slideImage = "SlideImage"
        case picture = "Picture"
    }
    /** Index. */
    public var index: Int?
    /** Orientation. */
    public var orientation: Orientation?
    /** Size. */
    public var size: Size?
    /** Placeholder type. */
    public var type: ModelType?
    /** Shape link. */
    public var shape: ResourceUri?

    private enum CodingKeys: String, CodingKey {
        case index
        case orientation
        case size
        case type
        case shape
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, index: Int? = nil, orientation: Orientation? = nil, size: Size? = nil, type: ModelType? = nil, shape: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.index = index
        self.orientation = orientation
        self.size = size
        self.type = type
        self.shape = shape
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        index = try values.decode(Int?.self, forKey: .index)
        orientation = try values.decode(Orientation?.self, forKey: .orientation)
        size = try values.decode(Size?.self, forKey: .size)
        type = try values.decode(ModelType?.self, forKey: .type)
        shape = try values.decode(ResourceUri?.self, forKey: .shape)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(index, forKey: .index)
        try container.encode(orientation, forKey: .orientation)
        try container.encode(size, forKey: .size)
        try container.encode(type, forKey: .type)
        try container.encode(shape, forKey: .shape)
    }


}

