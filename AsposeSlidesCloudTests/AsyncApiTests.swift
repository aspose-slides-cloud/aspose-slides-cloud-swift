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

class AsyncApiTests : XCTestCase {
    static var allTests : [(String, (AsyncApiTests) -> () -> ())] = [
        ("testAsyncConvert", testAsyncConvert),
        ("testAsyncDownloadPresentation", testAsyncDownloadPresentation),
        ("testAsyncBadOperation", testAsyncBadOperation),
    ];
    
    internal let testTimeout: TimeInterval = 200.0 

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testAsyncConvert() {
        let expectation = self.expectation(description: "testAsyncConvert")
        TestUtils.initialize("") { (response, error) -> Void in
            let document = FileManager.default.contents(atPath: "TestData/test.pptx")
            XCTAssertNotNil(document)
            SlidesAsyncAPI.startConvert(document!, "pdf", "password") { (operationId, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(operationId)
                sleep(20)
                SlidesAsyncAPI.getOperationStatus(operationId) { (operation, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(operation)
                    XCTAssertEqual(Operation.Status.finished, operation.status)
                    XCTAssertNil(operation.error)
                    SlidesAsyncAPI.getOperationResult(operationId) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }

    func testAsyncDownloadPresentation() {
        let expectation = self.expectation(description: "testAsyncDownloadPresentation")
        TestUtils.initialize("") { (response, error) -> Void in
            SlidesAsyncAPI.startDownloadPresentation("test.pptx", "pdf", nil, "password", "TempSlidesSDK") { (operationId, error) -> Void in
                XCTAssertNil(error)
                XCTAssertNotNil(operationId)
                sleep(20)
                SlidesAsyncAPI.getOperationStatus(operationId) { (operation, error) -> Void in
                    XCTAssertNil(error)
                    XCTAssertNotNil(operation)
                    XCTAssertEqual(Operation.Status.finished, operation.status)
                    XCTAssertNil(operation.error)
                    SlidesAsyncAPI.getOperationResult(operationId) { (result, error) -> Void in
                        XCTAssertNil(error)
                        XCTAssertNotNil(result)
                        expectation.fulfill()
                    }
                }
            }
        }
        self.waitForExpectations(timeout: testTimeout, handler: nil)
    }
}
