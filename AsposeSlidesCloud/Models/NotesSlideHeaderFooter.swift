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


/** Represents header/footer info of notes slide */
public class NotesSlideHeaderFooter: ResourceBase {

    /** True if date is displayed in the footer */
    public var isDateTimeVisible: Bool?
    /** Text to be displayed as date in the footer */
    public var dateTimeText: String?
    /** True if footer is displayed */
    public var isFooterVisible: Bool?
    /** Text to be displayed in the footer */
    public var footerText: String?
    /** True if header is displayed */
    public var isHeaderVisible: Bool?
    /** Text to be displayed in the header */
    public var headerText: String?
    /** True if slide number is displayed in the footer */
    public var isSlideNumberVisible: Bool?

    private enum CodingKeys: String, CodingKey {
        case isDateTimeVisible
        case dateTimeText
        case isFooterVisible
        case footerText
        case isHeaderVisible
        case headerText
        case isSlideNumberVisible
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, isDateTimeVisible: Bool? = nil, dateTimeText: String? = nil, isFooterVisible: Bool? = nil, footerText: String? = nil, isHeaderVisible: Bool? = nil, headerText: String? = nil, isSlideNumberVisible: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.isDateTimeVisible = isDateTimeVisible
        self.dateTimeText = dateTimeText
        self.isFooterVisible = isFooterVisible
        self.footerText = footerText
        self.isHeaderVisible = isHeaderVisible
        self.headerText = headerText
        self.isSlideNumberVisible = isSlideNumberVisible
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isDateTimeVisible = try values.decode(Bool?.self, forKey: .isDateTimeVisible)
        dateTimeText = try values.decode(String?.self, forKey: .dateTimeText)
        isFooterVisible = try values.decode(Bool?.self, forKey: .isFooterVisible)
        footerText = try values.decode(String?.self, forKey: .footerText)
        isHeaderVisible = try values.decode(Bool?.self, forKey: .isHeaderVisible)
        headerText = try values.decode(String?.self, forKey: .headerText)
        isSlideNumberVisible = try values.decode(Bool?.self, forKey: .isSlideNumberVisible)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isDateTimeVisible, forKey: .isDateTimeVisible)
        try container.encode(dateTimeText, forKey: .dateTimeText)
        try container.encode(isFooterVisible, forKey: .isFooterVisible)
        try container.encode(footerText, forKey: .footerText)
        try container.encode(isHeaderVisible, forKey: .isHeaderVisible)
        try container.encode(headerText, forKey: .headerText)
        try container.encode(isSlideNumberVisible, forKey: .isSlideNumberVisible)
    }


}

