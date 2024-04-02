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


/** Handout layouting options */
public class HandoutLayoutingOptions: SlidesLayoutOptions {

    public enum Handout: String, Codable { 
        case handouts1 = "Handouts1"
        case handouts2 = "Handouts2"
        case handouts3 = "Handouts3"
        case handouts4Horizontal = "Handouts4Horizontal"
        case handouts4Vertical = "Handouts4Vertical"
        case handouts6Horizontal = "Handouts6Horizontal"
        case handouts6Vertical = "Handouts6Vertical"
        case handouts9Horizontal = "Handouts9Horizontal"
        case handouts9Vertical = "Handouts9Vertical"
    }
    /** Specified how many pages and in what sequence will be placed on the page. */
    public var handout: Handout?
    /** True to print the displayed slide numbers. */
    public var printSlideNumbers: Bool?
    /** True to display comments on slide. */
    public var printComments: Bool?
    /** True to draw frames around the displayed slides. */
    public var printFrameSlide: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let handoutValue = source["handout"] ?? source["Handout"]
        if handoutValue != nil {
            let handoutStringValue = handoutValue! as? String
            if handoutStringValue != nil {
                let handoutEnumValue = Handout(rawValue: handoutStringValue!)
                if handoutEnumValue != nil {
                    self.handout = handoutEnumValue!
                }
            }
        }
        let printSlideNumbersValue = source["printSlideNumbers"] ?? source["PrintSlideNumbers"]
        if printSlideNumbersValue != nil {
            self.printSlideNumbers = printSlideNumbersValue! as? Bool
        }
        let printCommentsValue = source["printComments"] ?? source["PrintComments"]
        if printCommentsValue != nil {
            self.printComments = printCommentsValue! as? Bool
        }
        let printFrameSlideValue = source["printFrameSlide"] ?? source["PrintFrameSlide"]
        if printFrameSlideValue != nil {
            self.printFrameSlide = printFrameSlideValue! as? Bool
        }
    }

    public init(layoutType: LayoutType? = nil, handout: Handout? = nil, printSlideNumbers: Bool? = nil, printComments: Bool? = nil, printFrameSlide: Bool? = nil) {
        super.init(layoutType: layoutType)
        self.handout = handout
        self.printSlideNumbers = printSlideNumbers
        self.printComments = printComments
        self.printFrameSlide = printFrameSlide
        self.layoutType = LayoutType.handout
    }

    private enum CodingKeys: String, CodingKey {
        case handout
        case printSlideNumbers
        case printComments
        case printFrameSlide
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        handout = try? values.decode(Handout.self, forKey: .handout)
        printSlideNumbers = try? values.decode(Bool.self, forKey: .printSlideNumbers)
        printComments = try? values.decode(Bool.self, forKey: .printComments)
        printFrameSlide = try? values.decode(Bool.self, forKey: .printFrameSlide)
        self.layoutType = LayoutType.handout
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (handout != nil) {
            try? container.encode(handout, forKey: .handout)
        }
        if (printSlideNumbers != nil) {
            try? container.encode(printSlideNumbers, forKey: .printSlideNumbers)
        }
        if (printComments != nil) {
            try? container.encode(printComments, forKey: .printComments)
        }
        if (printFrameSlide != nil) {
            try? container.encode(printFrameSlide, forKey: .printFrameSlide)
        }
    }

}

