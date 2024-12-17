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


/** Slide view properties. */
public class CommonSlideViewProperties: Codable {

    /** The view scaling ratio (percentage). */
    public var scale: Int?
    /** True if the view content should automatically scale to best fit the current window size. */
    public var variableScale: Bool?
    /** Drawing guides */
    public var drawingGuides: [DrawingGuide]?

    func fillValues(_ source: [String:Any]) throws {
        let scaleValue = source["scale"] ?? source["Scale"]
        if scaleValue != nil {
            self.scale = scaleValue! as? Int
        }
        let variableScaleValue = source["variableScale"] ?? source["VariableScale"]
        if variableScaleValue != nil {
            self.variableScale = variableScaleValue! as? Bool
        }
        let drawingGuidesValue = source["drawingGuides"] ?? source["DrawingGuides"]
        if drawingGuidesValue != nil {
            var drawingGuidesArray: [DrawingGuide] = []
            let drawingGuidesDictionaryValue = drawingGuidesValue! as? [Any]
            if drawingGuidesDictionaryValue != nil {
                drawingGuidesDictionaryValue!.forEach { drawingGuidesAnyItem in
                    let drawingGuidesItem = drawingGuidesAnyItem as? [String:Any]
                    var added = false
                    if drawingGuidesItem != nil {
                        let (drawingGuidesInstance, error) = ClassRegistry.getClassFromDictionary(DrawingGuide.self, drawingGuidesItem!)
                        if error == nil && drawingGuidesInstance != nil {
                            let drawingGuidesArrayItem = drawingGuidesInstance! as? DrawingGuide
                            if drawingGuidesArrayItem != nil {
                                drawingGuidesArray.append(drawingGuidesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        drawingGuidesArray.append(DrawingGuide())
                    }
                }
            }
            self.drawingGuides = drawingGuidesArray
        }
    }

    public init(scale: Int? = nil, variableScale: Bool? = nil, drawingGuides: [DrawingGuide]? = nil) {
        self.scale = scale
        self.variableScale = variableScale
        self.drawingGuides = drawingGuides
    }

    private enum CodingKeys: String, CodingKey {
        case scale
        case variableScale
        case drawingGuides
    }

}

