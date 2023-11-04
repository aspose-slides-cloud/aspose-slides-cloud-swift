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


import XCTest
@testable import AsposeSlidesCloud

class SlidesAsyncAPITests : XCTestCase {
    static var allTests : [(String, (SlidesAPITests) -> () -> ())] = [
        ("testGetOperationResult", testGetOperationResult),
        ("testGetOperationResultInvalid_id", testGetOperationResultInvalid_id),
        ("testGetOperationStatus", testGetOperationStatus),
        ("testGetOperationStatusInvalid_id", testGetOperationStatusInvalid_id),
        ("testStartConvert", testStartConvert),
        ("testStartConvertInvalidDocument", testStartConvertInvalidDocument),
        ("testStartConvertInvalidFormat", testStartConvertInvalidFormat),
        ("testStartConvertInvalidPassword", testStartConvertInvalidPassword),
        ("testStartConvertInvalidStorage", testStartConvertInvalidStorage),
        ("testStartConvertInvalidFontsFolder", testStartConvertInvalidFontsFolder),
        ("testStartConvertInvalidSlides", testStartConvertInvalidSlides),
        ("testStartConvertInvalidOptions", testStartConvertInvalidOptions),
        ("testStartDownloadPresentation", testStartDownloadPresentation),
        ("testStartDownloadPresentationInvalidName", testStartDownloadPresentationInvalidName),
        ("testStartDownloadPresentationInvalidFormat", testStartDownloadPresentationInvalidFormat),
        ("testStartDownloadPresentationInvalidOptions", testStartDownloadPresentationInvalidOptions),
        ("testStartDownloadPresentationInvalidPassword", testStartDownloadPresentationInvalidPassword),
        ("testStartDownloadPresentationInvalidFolder", testStartDownloadPresentationInvalidFolder),
        ("testStartDownloadPresentationInvalidStorage", testStartDownloadPresentationInvalidStorage),
        ("testStartDownloadPresentationInvalidFontsFolder", testStartDownloadPresentationInvalidFontsFolder),
        ("testStartDownloadPresentationInvalidSlides", testStartDownloadPresentationInvalidSlides),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }    

    func testGetOperationResult() {
        let expectation = self.expectation(description: "testgetOperationResult")
        let param_id : String = TestUtils.getTestValue(functionName: "getOperationResult", name: "_id", type: "String")
        TestUtils.initialize("getOperationResult") { (response, error) -> Void in
            SlidesAsyncAPI.getOperationResult(param_id) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGetOperationResultInvalid_id() {
        let expectation = self.expectation(description: "testgetOperationResult")
        let invalidFieldName = "_id"
        let param_id : String = TestUtils.getTestValueForInvalid(functionName: "getOperationResult", name: "_id", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("getOperationResult", "_id", "String", param_id) { (response, error) -> Void in
            SlidesAsyncAPI.getOperationResult(param_id) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "getOperationResult", parameterName: "_id", parameterType: "String", parameterValue: param_id as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGetOperationStatus() {
        let expectation = self.expectation(description: "testgetOperationStatus")
        let param_id : String = TestUtils.getTestValue(functionName: "getOperationStatus", name: "_id", type: "String")
        TestUtils.initialize("getOperationStatus") { (response, error) -> Void in
            SlidesAsyncAPI.getOperationStatus(param_id) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testGetOperationStatusInvalid_id() {
        let expectation = self.expectation(description: "testgetOperationStatus")
        let invalidFieldName = "_id"
        let param_id : String = TestUtils.getTestValueForInvalid(functionName: "getOperationStatus", name: "_id", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("getOperationStatus", "_id", "String", param_id) { (response, error) -> Void in
            SlidesAsyncAPI.getOperationStatus(param_id) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "getOperationStatus", parameterName: "_id", parameterType: "String", parameterValue: param_id as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvert() {
        let expectation = self.expectation(description: "teststartConvert")
        let paramDocument : Data = TestUtils.getTestValue(functionName: "startConvert", name: "document", type: "Data")
        let paramFormat : String = TestUtils.getTestValue(functionName: "startConvert", name: "format", type: "String")
        let paramPassword : String = TestUtils.getTestValue(functionName: "startConvert", name: "password", type: "String")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startConvert", name: "storage", type: "String")
        let paramFontsFolder : String = TestUtils.getTestValue(functionName: "startConvert", name: "fontsFolder", type: "String")
        let paramSlides : [Int] = TestUtils.getTestValue(functionName: "startConvert", name: "slides", type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValue(functionName: "startConvert", name: "options", type: "ExportOptions")
        TestUtils.initialize("startConvert") { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidDocument() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "document"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "document", "Data", paramDocument) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "document", parameterType: "Data", parameterValue: paramDocument as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidFormat() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "format"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "format", "String", paramFormat) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "format", parameterType: "String", parameterValue: paramFormat as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidPassword() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "password"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "password", "String", paramPassword) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "password", parameterType: "String", parameterValue: paramPassword as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidStorage() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "storage"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidFontsFolder() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "fontsFolder"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "fontsFolder", "String", paramFontsFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "fontsFolder", parameterType: "String", parameterValue: paramFontsFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidSlides() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "slides"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "slides", "[Int]", paramSlides) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "slides", parameterType: "[Int]", parameterValue: paramSlides as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertInvalidOptions() {
        let expectation = self.expectation(description: "teststartConvert")
        let invalidFieldName = "options"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvert", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvert", "options", "ExportOptions", paramOptions) { (response, error) -> Void in
            SlidesAsyncAPI.startConvert(paramDocument, paramFormat, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvert", parameterName: "options", parameterType: "ExportOptions", parameterValue: paramOptions as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentation() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let paramName : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "name", type: "String")
        let paramFormat : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "format", type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "options", type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "password", type: "String")
        let paramFolder : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "folder", type: "String")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "storage", type: "String")
        let paramFontsFolder : String = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "fontsFolder", type: "String")
        let paramSlides : [Int] = TestUtils.getTestValue(functionName: "startDownloadPresentation", name: "slides", type: "[Int]")
        TestUtils.initialize("startDownloadPresentation") { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidName() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "name"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "name", "String", paramName) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "name", parameterType: "String", parameterValue: paramName as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidFormat() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "format"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "format", "String", paramFormat) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "format", parameterType: "String", parameterValue: paramFormat as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidOptions() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "options"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "options", "ExportOptions", paramOptions) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "options", parameterType: "ExportOptions", parameterValue: paramOptions as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidPassword() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "password"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "password", "String", paramPassword) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "password", parameterType: "String", parameterValue: paramPassword as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidFolder() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "folder"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "folder", "String", paramFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "folder", parameterType: "String", parameterValue: paramFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidStorage() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "storage"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidFontsFolder() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "fontsFolder"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "fontsFolder", "String", paramFontsFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "fontsFolder", parameterType: "String", parameterValue: paramFontsFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartDownloadPresentationInvalidSlides() {
        let expectation = self.expectation(description: "teststartDownloadPresentation")
        let invalidFieldName = "slides"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startDownloadPresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startDownloadPresentation", "slides", "[Int]", paramSlides) { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation(paramName, paramFormat, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startDownloadPresentation", parameterName: "slides", parameterType: "[Int]", parameterValue: paramSlides as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
