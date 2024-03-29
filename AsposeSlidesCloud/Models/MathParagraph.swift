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


/** Mathematical paragraph that is a container for mathematical blocks */
public class MathParagraph: Codable {

    public enum Justification: String, Codable { 
        case leftJustified = "LeftJustified"
        case rightJustified = "RightJustified"
        case centered = "Centered"
        case centeredAsGroup = "CenteredAsGroup"
    }
    /** List of math blocks */
    public var mathBlockList: [BlockElement]?
    /** Justification of the math paragraph */
    public var justification: Justification?

    func fillValues(_ source: [String:Any]) throws {
        let mathBlockListValue = source["mathBlockList"] ?? source["MathBlockList"]
        if mathBlockListValue != nil {
            var mathBlockListArray: [BlockElement] = []
            let mathBlockListDictionaryValue = mathBlockListValue! as? [Any]
            if mathBlockListDictionaryValue != nil {
                mathBlockListDictionaryValue!.forEach { mathBlockListAnyItem in
                    let mathBlockListItem = mathBlockListAnyItem as? [String:Any]
                    var added = false
                    if mathBlockListItem != nil {
                        let (mathBlockListInstance, error) = ClassRegistry.getClassFromDictionary(BlockElement.self, mathBlockListItem!)
                        if error == nil && mathBlockListInstance != nil {
                            let mathBlockListArrayItem = mathBlockListInstance! as? BlockElement
                            if mathBlockListArrayItem != nil {
                                mathBlockListArray.append(mathBlockListArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        mathBlockListArray.append(BlockElement())
                    }
                }
            }
            self.mathBlockList = mathBlockListArray
        }
        let justificationValue = source["justification"] ?? source["Justification"]
        if justificationValue != nil {
            let justificationStringValue = justificationValue! as? String
            if justificationStringValue != nil {
                let justificationEnumValue = Justification(rawValue: justificationStringValue!)
                if justificationEnumValue != nil {
                    self.justification = justificationEnumValue!
                }
            }
        }
    }

    public init(mathBlockList: [BlockElement]? = nil, justification: Justification? = nil) {
        self.mathBlockList = mathBlockList
        self.justification = justification
    }

    private enum CodingKeys: String, CodingKey {
        case mathBlockList
        case justification
    }

}

