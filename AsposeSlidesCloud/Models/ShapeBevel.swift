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


/** ShapeBevel */
public class ShapeBevel: Codable {

    public enum BevelType: String, Codable { 
        case angle = "Angle"
        case artDeco = "ArtDeco"
        case circle = "Circle"
        case convex = "Convex"
        case coolSlant = "CoolSlant"
        case cross = "Cross"
        case divot = "Divot"
        case hardEdge = "HardEdge"
        case relaxedInset = "RelaxedInset"
        case riblet = "Riblet"
        case slope = "Slope"
        case softRound = "SoftRound"
        case notDefined = "NotDefined"
    }
    /** Bevel type */
    public var bevelType: BevelType?
    /** Bevel width */
    public var width: Double?
    /** Bevel height */
    public var height: Double?

    func fillValues(_ source: [String:Any]) throws {
        let bevelTypeValue = source["bevelType"] ?? source["BevelType"]
        if bevelTypeValue != nil {
            let bevelTypeStringValue = bevelTypeValue! as? String
            if bevelTypeStringValue != nil {
                let bevelTypeEnumValue = BevelType(rawValue: bevelTypeStringValue!)
                if bevelTypeEnumValue != nil {
                    self.bevelType = bevelTypeEnumValue!
                }
            }
        }
        let widthValue = source["width"] ?? source["Width"]
        if widthValue != nil {
            self.width = widthValue! as? Double
        }
        let heightValue = source["height"] ?? source["Height"]
        if heightValue != nil {
            self.height = heightValue! as? Double
        }
    }

    public init(bevelType: BevelType? = nil, width: Double? = nil, height: Double? = nil) {
        self.bevelType = bevelType
        self.width = width
        self.height = height
    }

    private enum CodingKeys: String, CodingKey {
        case bevelType
        case width
        case height
    }

}

