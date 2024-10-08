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


/** Represents notes slide DTO. */
public class NotesSlide: ResourceBase {

    /** Get or sets text of notes slide. */
    public var text: String?
    /** Get or sets the  link to list notes slide shapes. */
    public var shapes: ResourceUri?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let textValue = source["text"] ?? source["Text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let shapesValue = source["shapes"] ?? source["Shapes"]
        if shapesValue != nil {
            let shapesDictionaryValue = shapesValue! as? [String:Any]
            if shapesDictionaryValue != nil {
                let (shapesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, shapesDictionaryValue!)
                if error == nil && shapesInstance != nil {
                    self.shapes = shapesInstance! as? ResourceUri
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, text: String? = nil, shapes: ResourceUri? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.text = text
        self.shapes = shapes
    }

    private enum CodingKeys: String, CodingKey {
        case text
        case shapes
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        text = try? values.decode(String.self, forKey: .text)
        shapes = try? values.decode(ResourceUri.self, forKey: .shapes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (text != nil) {
            try? container.encode(text, forKey: .text)
        }
        if (shapes != nil) {
            try? container.encode(shapes, forKey: .shapes)
        }
    }

}

