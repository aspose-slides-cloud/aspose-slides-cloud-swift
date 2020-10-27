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


/** Add slide task. */
public class AddSlide: Task {

    /** File to clone a slide from. */
    public var cloneFromFile: InputFile?
    /** Position of the slide to clone. */
    public var cloneFromPosition: Int?
    /** Position at which to insert the slide. */
    public var position: Int?
    /** Alias of layout (href, index or type). If value is null a blank slide is added. */
    public var layoutAlias: String?

    private enum CodingKeys: String, CodingKey {
        case cloneFromFile
        case cloneFromPosition
        case position
        case layoutAlias
    }

    public init(type: ModelType? = nil, cloneFromFile: InputFile? = nil, cloneFromPosition: Int? = nil, position: Int? = nil, layoutAlias: String? = nil) {
        super.init(type: type)
        self.cloneFromFile = cloneFromFile
        self.cloneFromPosition = cloneFromPosition
        self.position = position
        self.layoutAlias = layoutAlias
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        cloneFromFile = try values.decode(InputFile?.self, forKey: .cloneFromFile)
        cloneFromPosition = try values.decode(Int?.self, forKey: .cloneFromPosition)
        position = try values.decode(Int?.self, forKey: .position)
        layoutAlias = try values.decode(String?.self, forKey: .layoutAlias)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cloneFromFile, forKey: .cloneFromFile)
        try container.encode(cloneFromPosition, forKey: .cloneFromPosition)
        try container.encode(position, forKey: .position)
        try container.encode(layoutAlias, forKey: .layoutAlias)
    }


}

