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


public class Operation: Codable {

    public enum Method: String, Codable { 
        case convert = "Convert"
        case downloadPresentation = "DownloadPresentation"
    }
    public enum Status: String, Codable { 
        case created = "Created"
        case enqueued = "Enqueued"
        case started = "Started"
        case failed = "Failed"
        case canceled = "Canceled"
        case finished = "Finished"
    }
    public var _id: String?
    public var method: Method?
    public var status: Status?
    public var created: Date?
    public var enqueued: Date?
    public var started: Date?
    public var failed: Date?
    public var canceled: Date?
    public var finished: Date?
    public var error: String?

    func fillValues(_ source: [String:Any]) throws {
        let _idValue = source["_id"] ?? source["Id"]
        if _idValue != nil {
            self._id = _idValue! as? String
        }
        let methodValue = source["method"] ?? source["Method"]
        if methodValue != nil {
            let methodStringValue = methodValue! as? String
            if methodStringValue != nil {
                let methodEnumValue = Method(rawValue: methodStringValue!)
                if methodEnumValue != nil {
                    self.method = methodEnumValue!
                }
            }
        }
        let statusValue = source["status"] ?? source["Status"]
        if statusValue != nil {
            let statusStringValue = statusValue! as? String
            if statusStringValue != nil {
                let statusEnumValue = Status(rawValue: statusStringValue!)
                if statusEnumValue != nil {
                    self.status = statusEnumValue!
                }
            }
        }
        let createdValue = source["created"] ?? source["Created"]
        if createdValue != nil {
            let createdDictionaryValue = createdValue! as? [String:Any]
            if createdDictionaryValue != nil {
                let (createdInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, createdDictionaryValue!)
                if error == nil && createdInstance != nil {
                    self.created = createdInstance! as? Date
                }
            }
        }
        let enqueuedValue = source["enqueued"] ?? source["Enqueued"]
        if enqueuedValue != nil {
            let enqueuedDictionaryValue = enqueuedValue! as? [String:Any]
            if enqueuedDictionaryValue != nil {
                let (enqueuedInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, enqueuedDictionaryValue!)
                if error == nil && enqueuedInstance != nil {
                    self.enqueued = enqueuedInstance! as? Date
                }
            }
        }
        let startedValue = source["started"] ?? source["Started"]
        if startedValue != nil {
            let startedDictionaryValue = startedValue! as? [String:Any]
            if startedDictionaryValue != nil {
                let (startedInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, startedDictionaryValue!)
                if error == nil && startedInstance != nil {
                    self.started = startedInstance! as? Date
                }
            }
        }
        let failedValue = source["failed"] ?? source["Failed"]
        if failedValue != nil {
            let failedDictionaryValue = failedValue! as? [String:Any]
            if failedDictionaryValue != nil {
                let (failedInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, failedDictionaryValue!)
                if error == nil && failedInstance != nil {
                    self.failed = failedInstance! as? Date
                }
            }
        }
        let canceledValue = source["canceled"] ?? source["Canceled"]
        if canceledValue != nil {
            let canceledDictionaryValue = canceledValue! as? [String:Any]
            if canceledDictionaryValue != nil {
                let (canceledInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, canceledDictionaryValue!)
                if error == nil && canceledInstance != nil {
                    self.canceled = canceledInstance! as? Date
                }
            }
        }
        let finishedValue = source["finished"] ?? source["Finished"]
        if finishedValue != nil {
            let finishedDictionaryValue = finishedValue! as? [String:Any]
            if finishedDictionaryValue != nil {
                let (finishedInstance, error) = ClassRegistry.getClassFromDictionary(Date.self, finishedDictionaryValue!)
                if error == nil && finishedInstance != nil {
                    self.finished = finishedInstance! as? Date
                }
            }
        }
        let errorValue = source["error"] ?? source["Error"]
        if errorValue != nil {
            self.error = errorValue! as? String
        }
    }

    public init(_id: String? = nil, method: Method? = nil, status: Status? = nil, created: Date? = nil, enqueued: Date? = nil, started: Date? = nil, failed: Date? = nil, canceled: Date? = nil, finished: Date? = nil, error: String? = nil) {
        self._id = _id
        self.method = method
        self.status = status
        self.created = created
        self.enqueued = enqueued
        self.started = started
        self.failed = failed
        self.canceled = canceled
        self.finished = finished
        self.error = error
    }

    private enum CodingKeys: String, CodingKey {
        case _id
        case method
        case status
        case created
        case enqueued
        case started
        case failed
        case canceled
        case finished
        case error
    }

}

