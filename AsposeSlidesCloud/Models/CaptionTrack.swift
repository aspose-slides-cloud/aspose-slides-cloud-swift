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


/** Represents list of Links to Paragraphs resources */
public class CaptionTrack: ResourceBase {

    /** Caption ID. */
    public var captionId: String?
    /** Label. */
    public var label: String?
    /** Caption track data as string. */
    public var dataAsString: String?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let captionIdValue = source["captionId"] ?? source["CaptionId"]
        if captionIdValue != nil {
            self.captionId = captionIdValue! as? String
        }
        let labelValue = source["label"] ?? source["Label"]
        if labelValue != nil {
            self.label = labelValue! as? String
        }
        let dataAsStringValue = source["dataAsString"] ?? source["DataAsString"]
        if dataAsStringValue != nil {
            self.dataAsString = dataAsStringValue! as? String
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, captionId: String? = nil, label: String? = nil, dataAsString: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.captionId = captionId
        self.label = label
        self.dataAsString = dataAsString
    }

    private enum CodingKeys: String, CodingKey {
        case captionId
        case label
        case dataAsString
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        captionId = try? values.decode(String.self, forKey: .captionId)
        label = try? values.decode(String.self, forKey: .label)
        dataAsString = try? values.decode(String.self, forKey: .dataAsString)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (captionId != nil) {
            try? container.encode(captionId, forKey: .captionId)
        }
        if (label != nil) {
            try? container.encode(label, forKey: .label)
        }
        if (dataAsString != nil) {
            try? container.encode(dataAsString, forKey: .dataAsString)
        }
    }

}

