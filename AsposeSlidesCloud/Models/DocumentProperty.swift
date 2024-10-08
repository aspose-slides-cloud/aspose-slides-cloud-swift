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


/** Document property. */
public class DocumentProperty: ResourceBase {

    /** Name. */
    public var name: String?
    /** Value. */
    public var value: String?
    /** True for builtin property. */
    public var builtIn: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let nameValue = source["name"] ?? source["Name"]
        if nameValue != nil {
            self.name = nameValue! as? String
        }
        let valueValue = source["value"] ?? source["Value"]
        if valueValue != nil {
            self.value = valueValue! as? String
        }
        let builtInValue = source["builtIn"] ?? source["BuiltIn"]
        if builtInValue != nil {
            self.builtIn = builtInValue! as? Bool
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, value: String? = nil, builtIn: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.name = name
        self.value = value
        self.builtIn = builtIn
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case value
        case builtIn
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try? values.decode(String.self, forKey: .name)
        value = try? values.decode(String.self, forKey: .value)
        builtIn = try? values.decode(Bool.self, forKey: .builtIn)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (name != nil) {
            try? container.encode(name, forKey: .name)
        }
        if (value != nil) {
            try? container.encode(value, forKey: .value)
        }
        if (builtIn != nil) {
            try? container.encode(builtIn, forKey: .builtIn)
        }
    }

}

