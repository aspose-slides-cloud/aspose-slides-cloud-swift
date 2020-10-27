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


/** Represents comments collection of slide */
public class SlideAnimation: ResourceBase {

    /** Main sequence. */
    public var mainSequence: [Effect]?
    /** Interactive sequence list. */
    public var interactiveSequences: [InteractiveSequence]?

    private enum CodingKeys: String, CodingKey {
        case mainSequence
        case interactiveSequences
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, mainSequence: [Effect]? = nil, interactiveSequences: [InteractiveSequence]? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.mainSequence = mainSequence
        self.interactiveSequences = interactiveSequences
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        mainSequence = try values.decode([Effect]?.self, forKey: .mainSequence)
        interactiveSequences = try values.decode([InteractiveSequence]?.self, forKey: .interactiveSequences)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(mainSequence, forKey: .mainSequence)
        try container.encode(interactiveSequences, forKey: .interactiveSequences)
    }


}

