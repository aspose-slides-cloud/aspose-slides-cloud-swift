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


public class OperationError: Codable {

    public var code: String?
    public var description: String?
    public var httpStatusCode: Int?
    public var message: String?

    func fillValues(_ source: [String:Any]) throws {
        let codeValue = source["code"] ?? source["Code"]
        if codeValue != nil {
            self.code = codeValue! as? String
        }
        let descriptionValue = source["description"] ?? source["Description"]
        if descriptionValue != nil {
            self.description = descriptionValue! as? String
        }
        let httpStatusCodeValue = source["httpStatusCode"] ?? source["HttpStatusCode"]
        if httpStatusCodeValue != nil {
            self.httpStatusCode = httpStatusCodeValue! as? Int
        }
        let messageValue = source["message"] ?? source["Message"]
        if messageValue != nil {
            self.message = messageValue! as? String
        }
    }

    public init(code: String? = nil, description: String? = nil, httpStatusCode: Int? = nil, message: String? = nil) {
        self.code = code
        self.description = description
        self.httpStatusCode = httpStatusCode
        self.message = message
    }

    private enum CodingKeys: String, CodingKey {
        case code
        case description
        case httpStatusCode
        case message
    }

}

