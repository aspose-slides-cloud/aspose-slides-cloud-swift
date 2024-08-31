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



open class SlidesAsyncAPI {
    /**
     - parameter _id: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOperationResult(_ _id: String, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        getOperationResultWithRequestBuilder(_id).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /slides/async/{id}/result
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter _id: 
     - returns: RequestBuilder<Data> 
     */
    open class func getOperationResultWithRequestBuilder(_ _id: String) -> RequestBuilder<Data> {
        var methodPath = "/slides/async/{id}/result"
        methodPath = APIHelper.replacePathParameter(methodPath, "_id", _id)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     - parameter _id: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getOperationStatus(_ _id: String, completion: @escaping ((_ data: Operation?,_ error: Error?) -> Void)) {
        getOperationStatusWithRequestBuilder(_id).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /slides/async/{id}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter _id: 
     - returns: RequestBuilder<Operation> 
     */
    open class func getOperationStatusWithRequestBuilder(_ _id: String) -> RequestBuilder<Operation> {
        var methodPath = "/slides/async/{id}"
        methodPath = APIHelper.replacePathParameter(methodPath, "_id", _id)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Operation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startConvert: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case html5 = "Html5"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case mpeg4 = "Mpeg4"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter document: Document data.
     - parameter format: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter options: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startConvert(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startConvertWithRequestBuilder(document, format, password, storage, fontsFolder, slides, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /slides/async/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter document: Document data.
     - parameter format: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter options: 
     - returns: RequestBuilder<String> 
     */
    open class func startConvertWithRequestBuilder(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil) -> RequestBuilder<String> {
        var methodPath = "/slides/async/convert/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "slides": slides
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startConvertAndSave: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case html5 = "Html5"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case mpeg4 = "Mpeg4"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter document: Document data.
     - parameter format: 
     - parameter outPath: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter options: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startConvertAndSave(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startConvertAndSaveWithRequestBuilder(document, format, outPath, password, storage, fontsFolder, slides, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /slides/async/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter document: Document data.
     - parameter format: 
     - parameter outPath: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter options: 
     - returns: RequestBuilder<String> 
     */
    open class func startConvertAndSaveWithRequestBuilder(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil) -> RequestBuilder<String> {
        var methodPath = "/slides/async/convert/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "slides": slides
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startDownloadPresentation: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case html5 = "Html5"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case mpeg4 = "Mpeg4"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter name: 
     - parameter format: 
     - parameter options: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startDownloadPresentation(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startDownloadPresentationWithRequestBuilder(name, format, options, password, folder, storage, fontsFolder, slides).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /slides/async/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: 
     - parameter format: 
     - parameter options: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - returns: RequestBuilder<String> 
     */
    open class func startDownloadPresentationWithRequestBuilder(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil) -> RequestBuilder<String> {
        var methodPath = "/slides/async/{name}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "slides": slides
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     - parameter files: Files to merge
     - parameter request: 
     - parameter storage: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startMerge(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "", completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startMergeWithRequestBuilder(files, request, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /slides/async/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter files: Files to merge
     - parameter request: 
     - parameter storage: 
     - returns: RequestBuilder<String> 
     */
    open class func startMergeWithRequestBuilder(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "") -> RequestBuilder<String> {
        let methodPath = "/slides/async/merge"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)


        var fileParams = [Data]()
        fileParams.removeAll()
        if files != nil {
            fileParams = files!
        }

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storage": storage
        ])

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     - parameter outPath: 
     - parameter files: Files to merge
     - parameter request: 
     - parameter storage: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startMergeAndSave(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "", completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startMergeAndSaveWithRequestBuilder(outPath, files, request, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /slides/async/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter outPath: 
     - parameter files: Files to merge
     - parameter request: 
     - parameter storage: 
     - returns: RequestBuilder<String> 
     */
    open class func startMergeAndSaveWithRequestBuilder(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "") -> RequestBuilder<String> {
        let methodPath = "/slides/async/merge"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)


        var fileParams = [Data]()
        fileParams.removeAll()
        if files != nil {
            fileParams = files!
        }

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "storage": storage
        ])

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startSavePresentation: String { 
        case pdf = "Pdf"
        case xps = "Xps"
        case tiff = "Tiff"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case pot = "Pot"
        case potx = "Potx"
        case potm = "Potm"
        case html = "Html"
        case html5 = "Html5"
        case swf = "Swf"
        case svg = "Svg"
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case mpeg4 = "Mpeg4"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter name: 
     - parameter format: 
     - parameter outPath: 
     - parameter options: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startSavePresentation(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startSavePresentationWithRequestBuilder(name, format, outPath, options, password, folder, storage, fontsFolder, slides).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /slides/async/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: 
     - parameter format: 
     - parameter outPath: 
     - parameter options: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter slides: 
     - returns: RequestBuilder<String> 
     */
    open class func startSavePresentationWithRequestBuilder(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil) -> RequestBuilder<String> {
        var methodPath = "/slides/async/{name}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "slides": slides
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case html5 = "Html5"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter name: 
     - parameter format: 
     - parameter options: 
     - parameter width: 
     - parameter height: 
     - parameter from: 
     - parameter to: 
     - parameter destFolder: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startSplit(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startSplitWithRequestBuilder(name, format, options, width, height, from, to, destFolder, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /slides/async/{name}/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: 
     - parameter format: 
     - parameter options: 
     - parameter width: 
     - parameter height: 
     - parameter from: 
     - parameter to: 
     - parameter destFolder: 
     - parameter password: 
     - parameter folder: 
     - parameter storage: 
     - parameter fontsFolder: 
     - returns: RequestBuilder<String> 
     */
    open class func startSplitWithRequestBuilder(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<String> {
        var methodPath = "/slides/async/{name}/split/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "destFolder": destFolder, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_startUploadAndSplit: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case html = "Html"
        case pdf = "Pdf"
        case xps = "Xps"
        case pptx = "Pptx"
        case odp = "Odp"
        case otp = "Otp"
        case ppt = "Ppt"
        case pps = "Pps"
        case ppsx = "Ppsx"
        case pptm = "Pptm"
        case ppsm = "Ppsm"
        case potx = "Potx"
        case pot = "Pot"
        case potm = "Potm"
        case svg = "Svg"
        case fodp = "Fodp"
        case xaml = "Xaml"
        case html5 = "Html5"
        case md = "Md"
        case xml = "Xml"
    }

    /**
     - parameter document: Document data.
     - parameter format: 
     - parameter destFolder: 
     - parameter width: 
     - parameter height: 
     - parameter from: 
     - parameter to: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter options: 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func startUploadAndSplit(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil, completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
        startUploadAndSplitWithRequestBuilder(document, format, destFolder, width, height, from, to, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /slides/async/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter document: Document data.
     - parameter format: 
     - parameter destFolder: 
     - parameter width: 
     - parameter height: 
     - parameter from: 
     - parameter to: 
     - parameter password: 
     - parameter storage: 
     - parameter fontsFolder: 
     - parameter options: 
     - returns: RequestBuilder<String> 
     */
    open class func startUploadAndSplitWithRequestBuilder(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil) -> RequestBuilder<String> {
        var methodPath = "/slides/async/split/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destFolder": destFolder, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "from": from?.encodeToJSON(), 
            "to": to?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<String>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
}
