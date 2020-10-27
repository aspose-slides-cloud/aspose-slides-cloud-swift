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


/** Represents document replace result DTO. */
public class DocumentReplaceResult: Document {

    /** Gets or sets the number of matches  */
    public var matches: Int?

    private enum CodingKeys: String, CodingKey {
        case matches
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, documentProperties: ResourceUri? = nil, viewProperties: ResourceUri? = nil, slides: ResourceUri? = nil, images: ResourceUri? = nil, layoutSlides: ResourceUri? = nil, masterSlides: ResourceUri? = nil, matches: Int? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, documentProperties: documentProperties, viewProperties: viewProperties, slides: slides, images: images, layoutSlides: layoutSlides, masterSlides: masterSlides)
        self.matches = matches
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        matches = try values.decode(Int?.self, forKey: .matches)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(matches, forKey: .matches)
    }


}

