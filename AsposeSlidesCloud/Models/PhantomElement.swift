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


/** Specifies an instance of mathematical text that contained within a MathParagraph and starts on its own line. */
public class PhantomElement: MathElement {

    /** Base element */
    public var base: MathElement?
    /** true if the base element is displayed. */
    public var show: Bool?
    /** true if the the width of the base element should be treated as zero. */
    public var zeroWidth: Bool?
    /** true if the the ascent (height above baseline) of the base element should be treated as zero. */
    public var zeroAsc: Bool?
    /** true if the the descent (depth below baseline) of the base element should be treated as zero. */
    public var zeroDesc: Bool?
    /** true if operators and symbols inside the phantom still affect mathematical spacing around the phantom (as if visible). */
    public var transp: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let baseValue = source["base"] ?? source["Base"]
        if baseValue != nil {
            let baseDictionaryValue = baseValue! as? [String:Any]
            if baseDictionaryValue != nil {
                let (baseInstance, error) = ClassRegistry.getClassFromDictionary(MathElement.self, baseDictionaryValue!)
                if error == nil && baseInstance != nil {
                    self.base = baseInstance! as? MathElement
                }
            }
        }
        let showValue = source["show"] ?? source["Show"]
        if showValue != nil {
            self.show = showValue! as? Bool
        }
        let zeroWidthValue = source["zeroWidth"] ?? source["ZeroWidth"]
        if zeroWidthValue != nil {
            self.zeroWidth = zeroWidthValue! as? Bool
        }
        let zeroAscValue = source["zeroAsc"] ?? source["ZeroAsc"]
        if zeroAscValue != nil {
            self.zeroAsc = zeroAscValue! as? Bool
        }
        let zeroDescValue = source["zeroDesc"] ?? source["ZeroDesc"]
        if zeroDescValue != nil {
            self.zeroDesc = zeroDescValue! as? Bool
        }
        let transpValue = source["transp"] ?? source["Transp"]
        if transpValue != nil {
            self.transp = transpValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, base: MathElement? = nil, show: Bool? = nil, zeroWidth: Bool? = nil, zeroAsc: Bool? = nil, zeroDesc: Bool? = nil, transp: Bool? = nil) {
        super.init(type: type)
        self.base = base
        self.show = show
        self.zeroWidth = zeroWidth
        self.zeroAsc = zeroAsc
        self.zeroDesc = zeroDesc
        self.transp = transp
        self.type = ModelType.phantom
    }

    private enum CodingKeys: String, CodingKey {
        case base
        case show
        case zeroWidth
        case zeroAsc
        case zeroDesc
        case transp
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        base = try? values.decode(MathElement.self, forKey: .base)
        show = try? values.decode(Bool.self, forKey: .show)
        zeroWidth = try? values.decode(Bool.self, forKey: .zeroWidth)
        zeroAsc = try? values.decode(Bool.self, forKey: .zeroAsc)
        zeroDesc = try? values.decode(Bool.self, forKey: .zeroDesc)
        transp = try? values.decode(Bool.self, forKey: .transp)
        self.type = ModelType.phantom
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (base != nil) {
            try? container.encode(base, forKey: .base)
        }
        if (show != nil) {
            try? container.encode(show, forKey: .show)
        }
        if (zeroWidth != nil) {
            try? container.encode(zeroWidth, forKey: .zeroWidth)
        }
        if (zeroAsc != nil) {
            try? container.encode(zeroAsc, forKey: .zeroAsc)
        }
        if (zeroDesc != nil) {
            try? container.encode(zeroDesc, forKey: .zeroDesc)
        }
        if (transp != nil) {
            try? container.encode(transp, forKey: .transp)
        }
    }

}

