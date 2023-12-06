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
        ("testStartConvertAndSave", testStartConvertAndSave),
        ("testStartConvertAndSaveInvalidDocument", testStartConvertAndSaveInvalidDocument),
        ("testStartConvertAndSaveInvalidFormat", testStartConvertAndSaveInvalidFormat),
        ("testStartConvertAndSaveInvalidOutPath", testStartConvertAndSaveInvalidOutPath),
        ("testStartConvertAndSaveInvalidPassword", testStartConvertAndSaveInvalidPassword),
        ("testStartConvertAndSaveInvalidStorage", testStartConvertAndSaveInvalidStorage),
        ("testStartConvertAndSaveInvalidFontsFolder", testStartConvertAndSaveInvalidFontsFolder),
        ("testStartConvertAndSaveInvalidSlides", testStartConvertAndSaveInvalidSlides),
        ("testStartConvertAndSaveInvalidOptions", testStartConvertAndSaveInvalidOptions),
        ("testStartDownloadPresentation", testStartDownloadPresentation),
        ("testStartDownloadPresentationInvalidName", testStartDownloadPresentationInvalidName),
        ("testStartDownloadPresentationInvalidFormat", testStartDownloadPresentationInvalidFormat),
        ("testStartDownloadPresentationInvalidOptions", testStartDownloadPresentationInvalidOptions),
        ("testStartDownloadPresentationInvalidPassword", testStartDownloadPresentationInvalidPassword),
        ("testStartDownloadPresentationInvalidFolder", testStartDownloadPresentationInvalidFolder),
        ("testStartDownloadPresentationInvalidStorage", testStartDownloadPresentationInvalidStorage),
        ("testStartDownloadPresentationInvalidFontsFolder", testStartDownloadPresentationInvalidFontsFolder),
        ("testStartDownloadPresentationInvalidSlides", testStartDownloadPresentationInvalidSlides),
        ("testStartMerge", testStartMerge),
        ("testStartMergeInvalidFiles", testStartMergeInvalidFiles),
        ("testStartMergeInvalidRequest", testStartMergeInvalidRequest),
        ("testStartMergeInvalidStorage", testStartMergeInvalidStorage),
        ("testStartMergeAndSave", testStartMergeAndSave),
        ("testStartMergeAndSaveInvalidOutPath", testStartMergeAndSaveInvalidOutPath),
        ("testStartMergeAndSaveInvalidFiles", testStartMergeAndSaveInvalidFiles),
        ("testStartMergeAndSaveInvalidRequest", testStartMergeAndSaveInvalidRequest),
        ("testStartMergeAndSaveInvalidStorage", testStartMergeAndSaveInvalidStorage),
        ("testStartSavePresentation", testStartSavePresentation),
        ("testStartSavePresentationInvalidName", testStartSavePresentationInvalidName),
        ("testStartSavePresentationInvalidFormat", testStartSavePresentationInvalidFormat),
        ("testStartSavePresentationInvalidOutPath", testStartSavePresentationInvalidOutPath),
        ("testStartSavePresentationInvalidOptions", testStartSavePresentationInvalidOptions),
        ("testStartSavePresentationInvalidPassword", testStartSavePresentationInvalidPassword),
        ("testStartSavePresentationInvalidFolder", testStartSavePresentationInvalidFolder),
        ("testStartSavePresentationInvalidStorage", testStartSavePresentationInvalidStorage),
        ("testStartSavePresentationInvalidFontsFolder", testStartSavePresentationInvalidFontsFolder),
        ("testStartSavePresentationInvalidSlides", testStartSavePresentationInvalidSlides),
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

    func testStartConvertAndSave() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let paramDocument : Data = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "document", type: "Data")
        let paramFormat : String = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "format", type: "String")
        let paramOutPath : String = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "outPath", type: "String")
        let paramPassword : String = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "password", type: "String")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "storage", type: "String")
        let paramFontsFolder : String = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "fontsFolder", type: "String")
        let paramSlides : [Int] = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "slides", type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValue(functionName: "startConvertAndSave", name: "options", type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave") { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidDocument() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "document"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "document", "Data", paramDocument) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "document", parameterType: "Data", parameterValue: paramDocument as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidFormat() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "format"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "format", "String", paramFormat) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "format", parameterType: "String", parameterValue: paramFormat as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidOutPath() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "outPath"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "outPath", "String", paramOutPath) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "outPath", parameterType: "String", parameterValue: paramOutPath as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidPassword() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "password"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "password", "String", paramPassword) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "password", parameterType: "String", parameterValue: paramPassword as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidStorage() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "storage"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidFontsFolder() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "fontsFolder"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "fontsFolder", "String", paramFontsFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "fontsFolder", parameterType: "String", parameterValue: paramFontsFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidSlides() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "slides"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "slides", "[Int]", paramSlides) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "slides", parameterType: "[Int]", parameterValue: paramSlides as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartConvertAndSaveInvalidOptions() {
        let expectation = self.expectation(description: "teststartConvertAndSave")
        let invalidFieldName = "options"
        let paramDocument : Data = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "document", invalidFieldName: invalidFieldName, type: "Data")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startConvertAndSave", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        TestUtils.initialize("startConvertAndSave", "options", "ExportOptions", paramOptions) { (response, error) -> Void in
            SlidesAsyncAPI.startConvertAndSave(paramDocument, paramFormat, paramOutPath, paramPassword, paramStorage, paramFontsFolder, paramSlides, paramOptions) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startConvertAndSave", parameterName: "options", parameterType: "ExportOptions", parameterValue: paramOptions as Any)
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

    func testStartMerge() {
        let expectation = self.expectation(description: "teststartMerge")
        let paramFiles : [Data] = TestUtils.getTestValue(functionName: "startMerge", name: "files", type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValue(functionName: "startMerge", name: "request", type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startMerge", name: "storage", type: "String")
        TestUtils.initialize("startMerge") { (response, error) -> Void in
            SlidesAsyncAPI.startMerge(paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeInvalidFiles() {
        let expectation = self.expectation(description: "teststartMerge")
        let invalidFieldName = "files"
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMerge", "files", "[Data]", paramFiles) { (response, error) -> Void in
            SlidesAsyncAPI.startMerge(paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMerge", parameterName: "files", parameterType: "[Data]", parameterValue: paramFiles as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeInvalidRequest() {
        let expectation = self.expectation(description: "teststartMerge")
        let invalidFieldName = "request"
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMerge", "request", "OrderedMergeRequest", paramRequest) { (response, error) -> Void in
            SlidesAsyncAPI.startMerge(paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMerge", parameterName: "request", parameterType: "OrderedMergeRequest", parameterValue: paramRequest as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeInvalidStorage() {
        let expectation = self.expectation(description: "teststartMerge")
        let invalidFieldName = "storage"
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMerge", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMerge", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startMerge(paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMerge", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeAndSave() {
        let expectation = self.expectation(description: "teststartMergeAndSave")
        let paramOutPath : String = TestUtils.getTestValue(functionName: "startMergeAndSave", name: "outPath", type: "String")
        let paramFiles : [Data] = TestUtils.getTestValue(functionName: "startMergeAndSave", name: "files", type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValue(functionName: "startMergeAndSave", name: "request", type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startMergeAndSave", name: "storage", type: "String")
        TestUtils.initialize("startMergeAndSave") { (response, error) -> Void in
            SlidesAsyncAPI.startMergeAndSave(paramOutPath, paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeAndSaveInvalidOutPath() {
        let expectation = self.expectation(description: "teststartMergeAndSave")
        let invalidFieldName = "outPath"
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMergeAndSave", "outPath", "String", paramOutPath) { (response, error) -> Void in
            SlidesAsyncAPI.startMergeAndSave(paramOutPath, paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMergeAndSave", parameterName: "outPath", parameterType: "String", parameterValue: paramOutPath as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeAndSaveInvalidFiles() {
        let expectation = self.expectation(description: "teststartMergeAndSave")
        let invalidFieldName = "files"
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMergeAndSave", "files", "[Data]", paramFiles) { (response, error) -> Void in
            SlidesAsyncAPI.startMergeAndSave(paramOutPath, paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMergeAndSave", parameterName: "files", parameterType: "[Data]", parameterValue: paramFiles as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeAndSaveInvalidRequest() {
        let expectation = self.expectation(description: "teststartMergeAndSave")
        let invalidFieldName = "request"
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMergeAndSave", "request", "OrderedMergeRequest", paramRequest) { (response, error) -> Void in
            SlidesAsyncAPI.startMergeAndSave(paramOutPath, paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMergeAndSave", parameterName: "request", parameterType: "OrderedMergeRequest", parameterValue: paramRequest as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartMergeAndSaveInvalidStorage() {
        let expectation = self.expectation(description: "teststartMergeAndSave")
        let invalidFieldName = "storage"
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramFiles : [Data] = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "files", invalidFieldName: invalidFieldName, type: "[Data]")
        let paramRequest : OrderedMergeRequest = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "request", invalidFieldName: invalidFieldName, type: "OrderedMergeRequest")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startMergeAndSave", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        TestUtils.initialize("startMergeAndSave", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startMergeAndSave(paramOutPath, paramFiles, paramRequest, paramStorage) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startMergeAndSave", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentation() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let paramName : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "name", type: "String")
        let paramFormat : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "format", type: "String")
        let paramOutPath : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "outPath", type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValue(functionName: "startSavePresentation", name: "options", type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "password", type: "String")
        let paramFolder : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "folder", type: "String")
        let paramStorage : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "storage", type: "String")
        let paramFontsFolder : String = TestUtils.getTestValue(functionName: "startSavePresentation", name: "fontsFolder", type: "String")
        let paramSlides : [Int] = TestUtils.getTestValue(functionName: "startSavePresentation", name: "slides", type: "[Int]")
        TestUtils.initialize("startSavePresentation") { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                XCTAssertNotNil(response)
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidName() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "name"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "name", "String", paramName) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "name", parameterType: "String", parameterValue: paramName as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidFormat() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "format"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "format", "String", paramFormat) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "format", parameterType: "String", parameterValue: paramFormat as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidOutPath() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "outPath"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "outPath", "String", paramOutPath) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "outPath", parameterType: "String", parameterValue: paramOutPath as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidOptions() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "options"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "options", "ExportOptions", paramOptions) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "options", parameterType: "ExportOptions", parameterValue: paramOptions as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidPassword() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "password"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "password", "String", paramPassword) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "password", parameterType: "String", parameterValue: paramPassword as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidFolder() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "folder"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "folder", "String", paramFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "folder", parameterType: "String", parameterValue: paramFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidStorage() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "storage"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "storage", "String", paramStorage) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "storage", parameterType: "String", parameterValue: paramStorage as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidFontsFolder() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "fontsFolder"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "fontsFolder", "String", paramFontsFolder) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "fontsFolder", parameterType: "String", parameterValue: paramFontsFolder as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testStartSavePresentationInvalidSlides() {
        let expectation = self.expectation(description: "teststartSavePresentation")
        let invalidFieldName = "slides"
        let paramName : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "name", invalidFieldName: invalidFieldName, type: "String")
        let paramFormat : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "format", invalidFieldName: invalidFieldName, type: "String")
        let paramOutPath : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "outPath", invalidFieldName: invalidFieldName, type: "String")
        let paramOptions : ExportOptions = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "options", invalidFieldName: invalidFieldName, type: "ExportOptions")
        let paramPassword : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "password", invalidFieldName: invalidFieldName, type: "String")
        let paramFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "folder", invalidFieldName: invalidFieldName, type: "String")
        let paramStorage : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "storage", invalidFieldName: invalidFieldName, type: "String")
        let paramFontsFolder : String = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "fontsFolder", invalidFieldName: invalidFieldName, type: "String")
        let paramSlides : [Int] = TestUtils.getTestValueForInvalid(functionName: "startSavePresentation", name: "slides", invalidFieldName: invalidFieldName, type: "[Int]")
        TestUtils.initialize("startSavePresentation", "slides", "[Int]", paramSlides) { (response, error) -> Void in
            SlidesAsyncAPI.startSavePresentation(paramName, paramFormat, paramOutPath, paramOptions, paramPassword, paramFolder, paramStorage, paramFontsFolder, paramSlides) { (response, error) -> Void in
                TestUtils.assertError(error: error, functionName: "startSavePresentation", parameterName: "slides", parameterType: "[Int]", parameterValue: paramSlides as Any)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
