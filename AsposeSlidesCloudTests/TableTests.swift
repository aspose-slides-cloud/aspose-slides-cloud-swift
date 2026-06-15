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

class TableTests : XCTestCase {
    static var allTests : [(String, (TableTests) -> () -> ())] = [
        ("testImportTableFromWorkbook", testImportTableFromWorkbook),
        ("testImportTableFromWorkbookByPath", testImportTableFromWorkbookByPath),
    ];

    internal let testTimeout: TimeInterval = 200.0

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    override func tearDown() {
        super.tearDown()
    }

    func testImportTableFromWorkbook() {
        let expectation = self.expectation(description: "testImportTableFromWorkbook")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/oleObject.xlsx")
            XCTAssertNotNil(document)
            SlidesAPI.importTableFromWorkbook("test.pptx", 9, "Sheet1", "A1:B5", document, nil, nil, "", "",
                "password", "TempSlidesSDK") { (shape, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(shape)
                XCTAssertEqual(ShapeBase.ModelType.table, shape!.type)
                expectation.fulfill()
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testImportTableFromWorkbookByPath() {
        let expectation = self.expectation(description: "testImportTableFromWorkbookByPath")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/oleObject.xlsx")
            XCTAssertNotNil(document)
            SlidesAPI.uploadFile("TempSlidesSDK/oleObject.xlsx", document!) { (result, error) -> Void in
                XCTAssertNil(error)
                SlidesAPI.importTableFromWorkbook("test.pptx", 9, "Sheet1", "A1:B5", nil, nil, nil,
                    "TempSlidesSDK/oleObject.xlsx", "", "password", "TempSlidesSDK") { (shape, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(shape)
                    XCTAssertEqual(ShapeBase.ModelType.table, shape!.type)
                    expectation.fulfill()
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
