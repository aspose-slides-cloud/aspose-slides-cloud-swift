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


/** Operation progress. */
public class OperationProgress: Codable {

    /** Description. */
    public var description: String?
    /** Current Step Index. */
    public var stepIndex: Int?
    /** Current Step Index. */
    public var stepCount: Int?

    func fillValues(_ source: [String:Any]) throws {
        let descriptionValue = source["description"] ?? source["Description"]
        if descriptionValue != nil {
            self.description = descriptionValue! as? String
        }
        let stepIndexValue = source["stepIndex"] ?? source["StepIndex"]
        if stepIndexValue != nil {
            self.stepIndex = stepIndexValue! as? Int
        }
        let stepCountValue = source["stepCount"] ?? source["StepCount"]
        if stepCountValue != nil {
            self.stepCount = stepCountValue! as? Int
        }
    }

    public init(description: String? = nil, stepIndex: Int? = nil, stepCount: Int? = nil) {
        self.description = description
        self.stepIndex = stepIndex
        self.stepCount = stepCount
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case stepIndex
        case stepCount
    }

}

