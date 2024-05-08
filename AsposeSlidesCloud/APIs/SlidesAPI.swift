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



open class SlidesAPI {
    /**
     * enum for parameter alignmentType
     */
    public enum AlignmentType_alignShapes: String { 
        case alignLeft = "AlignLeft"
        case alignRight = "AlignRight"
        case alignCenter = "AlignCenter"
        case alignTop = "AlignTop"
        case alignMiddle = "AlignMiddle"
        case alignBottom = "AlignBottom"
        case distributeHorizontally = "DistributeHorizontally"
        case distributeVertically = "DistributeVertically"
    }

    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func alignShapes(_ name: String, _ slideIndex: Int, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        alignShapesWithRequestBuilder(name, slideIndex, alignmentType, alignToSlide, shapes, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Changes the placement of selected shapes on the slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - POST /slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func alignShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/align/{alignmentType}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "alignmentType", alignmentType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "alignToSlide": alignToSlide, 
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_alignSpecialSlideShapes: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     * enum for parameter alignmentType
     */
    public enum AlignmentType_alignSpecialSlideShapes: String { 
        case alignLeft = "AlignLeft"
        case alignRight = "AlignRight"
        case alignCenter = "AlignCenter"
        case alignTop = "AlignTop"
        case alignMiddle = "AlignMiddle"
        case alignBottom = "AlignBottom"
        case distributeHorizontally = "DistributeHorizontally"
        case distributeVertically = "DistributeVertically"
    }

    /**
     Changes the placement of selected shapes on the master slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func alignSpecialSlideShapes(_ name: String, _ slideIndex: Int, _ slideType: String, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        alignSpecialSlideShapesWithRequestBuilder(name, slideIndex, slideType, alignmentType, alignToSlide, shapes, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Changes the placement of selected shapes on the master slide. Aligns shapes to the margins or the edge of the slide or aligns them relative to each other.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/shapes/align/{alignmentType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter alignmentType: Alignment type that will be applied to the shapes.
     - parameter alignToSlide: If true, shapes will be aligned relative to the slide edges.
     - parameter shapes: Shapes indexes.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func alignSpecialSlideShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ alignmentType: String, _ alignToSlide: Bool? = nil, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/align/{alignmentType}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "alignmentType", alignmentType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "alignToSlide": alignToSlide, 
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Compresses embedded fonts by removing unused characters.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func compressEmbeddedFonts(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        compressEmbeddedFontsWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Compresses embedded fonts by removing unused characters.
     - POST /slides/{name}/fonts/embedded/compress
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func compressEmbeddedFontsWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/fonts/embedded/compress"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Compresses embedded fonts by removing unused characters.
     - parameter document: Document data.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func compressEmbeddedFontsOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        compressEmbeddedFontsOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Compresses embedded fonts by removing unused characters.
     - POST /slides/fonts/embedded/compress
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func compressEmbeddedFontsOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/fonts/embedded/compress"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_convert: String { 
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
    }

    /**
     Convert presentation from request content to format specified.
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be converted. If not specified, all slides are converted by default.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func convert(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        convertWithRequestBuilder(document, format, password, storage, fontsFolder, slides, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert presentation from request content to format specified.
     - POST /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be converted. If not specified, all slides are converted by default.
     - parameter options: Export options.
     - returns: RequestBuilder<Data> 
     */
    open class func convertWithRequestBuilder(_ document: Data, _ format: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil) -> RequestBuilder<Data> {
        var methodPath = "/slides/convert/{format}"
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

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_convertAndSave: String { 
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
    }

    /**
     Convert presentation from request content to format specified.
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be converted. If not specified, all slides are converted by default.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func convertAndSave(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        convertAndSaveWithRequestBuilder(document, format, outPath, password, storage, fontsFolder, slides, options).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert presentation from request content to format specified.
     - PUT /slides/convert/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter format: Export format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be converted. If not specified, all slides are converted by default.
     - parameter options: Export options.
     - returns: RequestBuilder<Void> 
     */
    open class func convertAndSaveWithRequestBuilder(_ document: Data, _ format: String, _ outPath: String, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, _ options: ExportOptions? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/convert/{format}"
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

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Copy file
     - parameter srcPath: Source file path e.g. '/folder/file.ext'
     - parameter destPath: Destination file path
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to copy
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFile(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFileWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy file
     - PUT /slides/storage/file/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source file path e.g. '/folder/file.ext'
     - parameter destPath: Destination file path
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to copy
     - returns: RequestBuilder<Void> 
     */
    open class func copyFileWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/copy/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Copy folder
     - parameter srcPath: Source folder path e.g. '/src'
     - parameter destPath: Destination folder path e.g. '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyFolder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        copyFolderWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Copy folder
     - PUT /slides/storage/folder/copy/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source folder path e.g. '/src'
     - parameter destPath: Destination folder path e.g. '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - returns: RequestBuilder<Void> 
     */
    open class func copyFolderWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/copy/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Copy layoutSlide from source presentation.
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone layoutSlide from.
     - parameter cloneFromPosition: Position of cloned layout slide.
     - parameter cloneFromPassword: Password for the document to clone layoutSlide from.
     - parameter cloneFromStorage: Storage of the document to clone layoutSlide from.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyLayoutSlide(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        copyLayoutSlideWithRequestBuilder(name, cloneFrom, cloneFromPosition, cloneFromPassword, cloneFromStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy layoutSlide from source presentation.
     - POST /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone layoutSlide from.
     - parameter cloneFromPosition: Position of cloned layout slide.
     - parameter cloneFromPassword: Password for the document to clone layoutSlide from.
     - parameter cloneFromStorage: Storage of the document to clone layoutSlide from.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func copyLayoutSlideWithRequestBuilder(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": cloneFrom, 
            "cloneFromPosition": cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": cloneFromStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": cloneFromPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Copy masterSlide from source presentation.
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone masterSlide from.
     - parameter cloneFromPosition: Position of cloned master slide.
     - parameter cloneFromPassword: Password for the document to clone masterSlide from.
     - parameter cloneFromStorage: Storage of the document to clone masterSlide from.
     - parameter applyToAll: True to apply cloned master slide to every existing slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copyMasterSlide(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ applyToAll: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        copyMasterSlideWithRequestBuilder(name, cloneFrom, cloneFromPosition, cloneFromPassword, cloneFromStorage, applyToAll, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy masterSlide from source presentation.
     - POST /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter cloneFrom: Name of the document to clone masterSlide from.
     - parameter cloneFromPosition: Position of cloned master slide.
     - parameter cloneFromPassword: Password for the document to clone masterSlide from.
     - parameter cloneFromStorage: Storage of the document to clone masterSlide from.
     - parameter applyToAll: True to apply cloned master slide to every existing slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlide> 
     */
    open class func copyMasterSlideWithRequestBuilder(_ name: String, _ cloneFrom: String, _ cloneFromPosition: Int, _ cloneFromPassword: String = "", _ cloneFromStorage: String = "", _ applyToAll: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlide> {
        var methodPath = "/slides/{name}/masterSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "cloneFrom": cloneFrom, 
            "cloneFromPosition": cloneFromPosition.encodeToJSON(), 
            "cloneFromStorage": cloneFromStorage, 
            "applyToAll": applyToAll, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "cloneFromPassword": cloneFromPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Copy a slide from the current or another presentation.
     - parameter name: Document name.
     - parameter slideToCopy: The index of the slide to be copied from the source presentation.
     - parameter position: The target position at which to copy the slide. Copy to the end by default.
     - parameter source: Name of the document to copy a slide from.
     - parameter sourcePassword: Password for the document to copy a slide from.
     - parameter sourceStorage: Template storage name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func copySlide(_ name: String, _ slideToCopy: Int, _ position: Int? = nil, _ source: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        copySlideWithRequestBuilder(name, slideToCopy, position, source, sourcePassword, sourceStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Copy a slide from the current or another presentation.
     - POST /slides/{name}/slides/copy
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideToCopy: The index of the slide to be copied from the source presentation.
     - parameter position: The target position at which to copy the slide. Copy to the end by default.
     - parameter source: Name of the document to copy a slide from.
     - parameter sourcePassword: Password for the document to copy a slide from.
     - parameter sourceStorage: Template storage name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func copySlideWithRequestBuilder(_ name: String, _ slideToCopy: Int, _ position: Int? = nil, _ source: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/copy"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slideToCopy": slideToCopy.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "source": source, 
            "sourceStorage": sourceStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": sourcePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Add an effect to slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationEffect(_ name: String, _ slideIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationEffectWithRequestBuilder(name, slideIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an effect to slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, sequence, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sequence)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Add an animation effect to a slide interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an animation effect to a slide interactive sequence.
     - POST /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Add a new category to a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, category, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new category to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: category)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Add a new data point to a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, dataPoint, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new data point to a chart series.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataPoint)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Add a new series to a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        createChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, series, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new series to a chart.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func createChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: series)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Adds the comment on the slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Comment DTO.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createComment(_ name: String, _ slideIndex: Int, _ dto: SlideCommentBase, _ shapeIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        createCommentWithRequestBuilder(name, slideIndex, dto, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds the comment on the slide.
     - POST /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Comment DTO.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideComments> 
     */
    open class func createCommentWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: SlideCommentBase, _ shapeIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideComments> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": shapeIndex?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Adds the comment on the slide.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter dto: Comment DTO.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createCommentOnline(_ document: Data, _ slideIndex: Int, _ dto: SlideCommentBase, _ shapeIndex: Int? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        createCommentOnlineWithRequestBuilder(document, slideIndex, dto, shapeIndex, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds the comment on the slide.
     - POST /slides/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter dto: Comment DTO.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func createCommentOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ dto: SlideCommentBase, _ shapeIndex: Int? = nil, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": shapeIndex?.encodeToJSON()
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Create the folder
     - parameter path: Folder path to create e.g. 'folder_1/folder_2/'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createFolder(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createFolderWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Create the folder
     - PUT /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: Folder path to create e.g. 'folder_1/folder_2/'
     - parameter storageName: Storage name
     - returns: RequestBuilder<Void> 
     */
    open class func createFolderWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
     - parameter name: Document name.
     - parameter image: Image data.
     - parameter pictureFrame: PictureFrame DTO
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createImageWatermark(_ name: String, _ image: Data? = nil, _ pictureFrame: PictureFrame? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createImageWatermarkWithRequestBuilder(name, image, pictureFrame, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
     - POST /slides/{name}/watermark/image
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter image: Image data.
     - parameter pictureFrame: PictureFrame DTO
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func createImageWatermarkWithRequestBuilder(_ name: String, _ image: Data? = nil, _ pictureFrame: PictureFrame? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/watermark/image"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pictureFrame)


        var fileParams = [Data]()
        fileParams.removeAll()
        if image != nil {
            fileParams.append(image!)
        }

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
     - parameter document: Document data.
     - parameter image: Image data.
     - parameter pictureFrame: PictureFrame DTO.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createImageWatermarkOnline(_ document: Data, _ image: Data? = nil, _ pictureFrame: PictureFrame? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        createImageWatermarkOnlineWithRequestBuilder(document, image, pictureFrame, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds an image watermark to each slide of the presentation.  Image can be provided as a part of the form or withing PictureFrame DTO for detailed customization. Both options are applicable simultaneously. 
     - POST /slides/watermark/image
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter image: Image data.
     - parameter pictureFrame: PictureFrame DTO.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func createImageWatermarkOnlineWithRequestBuilder(_ document: Data, _ image: Data? = nil, _ pictureFrame: PictureFrame? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/watermark/image"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pictureFrame)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)
        if image != nil {
            fileParams.append(image!)
        }


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Add new notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createNotesSlide(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        createNotesSlideWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add new notes slide.
     - POST /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func createNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Creates new paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createParagraphWithRequestBuilder(name, slideIndex, shapeIndex, dto, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Creates new portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func createPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Create a presentation.
     - parameter name: Document name.
     - parameter data: Source presentation binary data.
     - parameter inputPassword: The password for source presentation.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentation(_ name: String, _ data: Data? = nil, _ inputPassword: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationWithRequestBuilder(name, data, inputPassword, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter data: Source presentation binary data.
     - parameter inputPassword: The password for source presentation.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationWithRequestBuilder(_ name: String, _ data: Data? = nil, _ inputPassword: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        if data != nil {
            fileParams.append(data!)
        }

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "inputPassword": inputPassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Create a presentation from an existing source.
     - parameter name: Document name.
     - parameter sourcePath: Source file path.
     - parameter sourcePassword: Source file password.
     - parameter sourceStorage: Source storage name.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentationFromSource(_ name: String, _ sourcePath: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationFromSourceWithRequestBuilder(name, sourcePath, sourcePassword, sourceStorage, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation from an existing source.
     - POST /slides/{name}/fromSource
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sourcePath: Source file path.
     - parameter sourcePassword: Source file password.
     - parameter sourceStorage: Source storage name.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationFromSourceWithRequestBuilder(_ name: String, _ sourcePath: String = "", _ sourcePassword: String = "", _ sourceStorage: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromSource"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sourcePath": sourcePath, 
            "sourceStorage": sourceStorage, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "sourcePassword": sourcePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Create a presentation.
     - parameter name: Document name.
     - parameter templatePath: Template file path.
     - parameter data: Document input data.
     - parameter templatePassword: Template file password.
     - parameter templateStorage: Template storage name.
     - parameter isImageDataEmbedded: True if image data is embedded.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPresentationFromTemplate(_ name: String, _ templatePath: String, _ data: String = "", _ templatePassword: String = "", _ templateStorage: String = "", _ isImageDataEmbedded: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        createPresentationFromTemplateWithRequestBuilder(name, templatePath, data, templatePassword, templateStorage, isImageDataEmbedded, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a presentation.
     - POST /slides/{name}/fromTemplate
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter templatePath: Template file path.
     - parameter data: Document input data.
     - parameter templatePassword: Template file password.
     - parameter templateStorage: Template storage name.
     - parameter isImageDataEmbedded: True if image data is embedded.
     - parameter password: The document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func createPresentationFromTemplateWithRequestBuilder(_ name: String, _ templatePath: String, _ data: String = "", _ templatePassword: String = "", _ templateStorage: String = "", _ isImageDataEmbedded: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromTemplate"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: data)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "templatePath": templatePath, 
            "templateStorage": templateStorage, 
            "isImageDataEmbedded": isImageDataEmbedded, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "templatePassword": templatePassword,
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Create a section starting at a specified slide index.
     - parameter name: Document name.
     - parameter sectionName: Section name.
     - parameter slideIndex: Slide index (one-based).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSection(_ name: String, _ sectionName: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        createSectionWithRequestBuilder(name, sectionName, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a section starting at a specified slide index.
     - POST /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sectionName: Section name.
     - parameter slideIndex: Slide index (one-based).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func createSectionWithRequestBuilder(_ name: String, _ sectionName: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": sectionName, 
            "slideIndex": slideIndex.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Create new shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createShape(_ name: String, _ slideIndex: Int, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        createShapeWithRequestBuilder(name, slideIndex, dto, shapeToClone, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func createShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: ShapeBase? = nil, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeToClone": shapeToClone?.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Create a slide.
     - parameter name: Document name.
     - parameter layoutAlias: Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
     - parameter position: The target position at which to create the slide. Add to the end by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSlide(_ name: String, _ layoutAlias: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        createSlideWithRequestBuilder(name, layoutAlias, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a slide.
     - POST /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter layoutAlias: Alias of layout slide for new slide. Alias may be the type of layout, name of layout slide or index
     - parameter position: The target position at which to create the slide. Add to the end by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func createSlideWithRequestBuilder(_ name: String, _ layoutAlias: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "layoutAlias": layoutAlias, 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Add SmartArt node
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter smartArtIndex: Index of the object on the slide among the same type of objects.
     - parameter subNode: Sub-node path (e.g. \"3\", \"3/nodes/2).
     - parameter text: Node text.
     - parameter position: Position to insert a new node.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSmartArtNode(_ name: String, _ slideIndex: Int, _ smartArtIndex: Int, _ subNode: String = "", _ text: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SmartArt?,_ error: Error?) -> Void)) {
        createSmartArtNodeWithRequestBuilder(name, slideIndex, smartArtIndex, subNode, text, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add SmartArt node
     - POST /slides/{name}/slides/{slideIndex}/smartArts/{smartArtIndex}/nodes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter smartArtIndex: Index of the object on the slide among the same type of objects.
     - parameter subNode: Sub-node path (e.g. \"3\", \"3/nodes/2).
     - parameter text: Node text.
     - parameter position: Position to insert a new node.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SmartArt> 
     */
    open class func createSmartArtNodeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ smartArtIndex: Int, _ subNode: String = "", _ text: String = "", _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SmartArt> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/smartArts/{smartArtIndex}/nodes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "smartArtIndex", smartArtIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "subNode": subNode, 
            "text": text, 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SmartArt>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlideAnimationEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Add an effect to special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlideAnimationEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createSpecialSlideAnimationEffectWithRequestBuilder(name, slideIndex, slideType, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an effect to special slide (master, layout, notes) animation.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createSpecialSlideAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlideAnimationInteractiveSequence: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Set special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlideAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createSpecialSlideAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, slideType, sequence, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set special slide (master, layout, notes) animation.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequence: Animation sequence DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createSpecialSlideAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequence: InteractiveSequence, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sequence)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlideAnimationInteractiveSequenceEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Add an animation effect to a special slide (master, layout, notes) interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlideAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        createSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, slideType, sequenceIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an animation effect to a special slide (master, layout, notes) interactive sequence.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func createSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlideParagraph: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Creates new paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlideParagraph(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createSpecialSlideParagraphWithRequestBuilder(name, slideIndex, slideType, shapeIndex, dto, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new paragraph.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter dto: Paragraph DTO.
     - parameter position: Position of the new paragraph in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createSpecialSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ dto: Paragraph, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlidePortion: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Creates new portion.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlidePortion(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createSpecialSlidePortionWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, dto, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates new portion.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter position: Position of the new portion in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func createSpecialSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_createSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Create new shape.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ dto: ShapeBase, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        createSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, dto, shapeToClone, position, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create new shape.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter dto: Shape DTO.
     - parameter shapeToClone: Optional index for clone shape instead of adding a new one.
     - parameter position: Position of the new shape in the list. Default is at the end of the list.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func createSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ dto: ShapeBase, _ shapeToClone: Int? = nil, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeToClone": shapeToClone?.encodeToJSON(), 
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Creates table cell paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTableCellParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        createTableCellParagraphWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates table cell paragraph.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func createTableCellParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Creates table cell portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTableCellPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        createTableCellPortionWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates table cell portion.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func createTableCellPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Inserts the table row in the specified position. If position is not specified, the row add to the end of the table.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Table row data.
     - parameter position: Position.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createTableRow(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: TableRow, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TableRow?,_ error: Error?) -> Void)) {
        createTableRowWithRequestBuilder(name, slideIndex, shapeIndex, dto, position, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Inserts the table row in the specified position. If position is not specified, the row add to the end of the table.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Table row data.
     - parameter position: Position.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TableRow> 
     */
    open class func createTableRowWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: TableRow, _ position: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TableRow> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "position": position?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TableRow>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Append module to VBA project             
     - parameter name: Document name.
     - parameter moduleDto: VBA module DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createVbaModule(_ name: String, _ moduleDto: VbaModule, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: VbaModule?,_ error: Error?) -> Void)) {
        createVbaModuleWithRequestBuilder(name, moduleDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Append module to VBA project             
     - POST /slides/{name}/vbaProject/modules
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter moduleDto: VBA module DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<VbaModule> 
     */
    open class func createVbaModuleWithRequestBuilder(_ name: String, _ moduleDto: VbaModule, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<VbaModule> {
        var methodPath = "/slides/{name}/vbaProject/modules"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: moduleDto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VbaModule>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
     - parameter name: Document name.
     - parameter shape: Shape DTO
     - parameter fontHeight: Watermark font height.
     - parameter text: Watermark text.
     - parameter fontName: Watermark font name.
     - parameter fontColor: Watermark font color.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createWatermark(_ name: String, _ shape: Shape? = nil, _ fontHeight: Double? = nil, _ text: String = "", _ fontName: String = "", _ fontColor: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        createWatermarkWithRequestBuilder(name, shape, fontHeight, text, fontName, fontColor, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
     - POST /slides/{name}/watermark
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter shape: Shape DTO
     - parameter fontHeight: Watermark font height.
     - parameter text: Watermark text.
     - parameter fontName: Watermark font name.
     - parameter fontColor: Watermark font color.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func createWatermarkWithRequestBuilder(_ name: String, _ shape: Shape? = nil, _ fontHeight: Double? = nil, _ text: String = "", _ fontName: String = "", _ fontColor: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/watermark"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shape)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fontHeight": fontHeight, 
            "text": text, 
            "fontName": fontName, 
            "fontColor": fontColor, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
     - parameter document: Document data.
     - parameter shape: Shape DTO
     - parameter fontHeight: Watermark font height.
     - parameter text: Watermark text.
     - parameter fontName: Watermark font name.
     - parameter fontColor: Watermark font color.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createWatermarkOnline(_ document: Data, _ shape: Shape? = nil, _ fontHeight: Double? = nil, _ text: String = "", _ fontName: String = "", _ fontColor: String = "", _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        createWatermarkOnlineWithRequestBuilder(document, shape, fontHeight, text, fontName, fontColor, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Adds a text watermark to each slide of the presentation. Text watermark can be setup via method arguments or withing Shape DTO for detailed customization. Both options are applicable simultaneously. 
     - POST /slides/watermark
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter shape: Shape DTO
     - parameter fontHeight: Watermark font height.
     - parameter text: Watermark text.
     - parameter fontName: Watermark font name.
     - parameter fontColor: Watermark font color.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func createWatermarkOnlineWithRequestBuilder(_ document: Data, _ shape: Shape? = nil, _ fontHeight: Double? = nil, _ text: String = "", _ fontName: String = "", _ fontColor: String = "", _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/watermark"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: shape)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fontHeight": fontHeight, 
            "text": text, 
            "fontName": fontName, 
            "fontColor": fontColor
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Remove animation from a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimation(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove animation from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove an effect from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationEffect(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationEffectWithRequestBuilder(name, slideIndex, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove an interactive sequence from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, sequenceIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an interactive sequence from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove an effect from slide animation interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from slide animation interactive sequence.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Clear all interactive sequences from slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationInteractiveSequences(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationInteractiveSequencesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear all interactive sequences from slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationInteractiveSequencesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Clear main sequence in slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAnimationMainSequence(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteAnimationMainSequenceWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear main sequence in slide animation.
     - DELETE /slides/{name}/slides/{slideIndex}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteAnimationMainSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove background from a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteBackground(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        deleteBackgroundWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove background from a slide.
     - DELETE /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func deleteBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete a category from a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, categoryIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a category from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "categoryIndex", categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete a data point from a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, pointIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a data point from a chart series.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "pointIndex", pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete a series from a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        deleteChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a series from a chart.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func deleteChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
     - parameter name: Document name.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteComments(_ name: String, _ author: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteCommentsWithRequestBuilder(name, author, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
     - DELETE /slides/{name}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteCommentsWithRequestBuilder(_ name: String, _ author: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "author": author, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
     - parameter document: Document data.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteCommentsOnline(_ document: Data, _ author: String = "", _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteCommentsOnlineWithRequestBuilder(document, author, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes comments of the specified author from the presentation. If author value is not provided all comments will be removed. 
     - POST /slides/comments/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteCommentsOnlineWithRequestBuilder(_ document: Data, _ author: String = "", _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/comments/delete"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "author": author
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Clean document properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteDocumentPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clean document properties.
     - DELETE /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteDocumentPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteDocumentProperty(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        deleteDocumentPropertyWithRequestBuilder(name, propertyName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete document property.
     - DELETE /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func deleteDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes specified embedded font and returns presentation fonts info.
     - parameter name: Document name.
     - parameter fontName: Font name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteEmbeddedFont(_ name: String, _ fontName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        deleteEmbeddedFontWithRequestBuilder(name, fontName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes specified embedded font and returns presentation fonts info.
     - DELETE /slides/{name}/fonts/embedded/{fontName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter fontName: Font name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FontsData> 
     */
    open class func deleteEmbeddedFontWithRequestBuilder(_ name: String, _ fontName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FontsData> {
        var methodPath = "/slides/{name}/fonts/embedded/{fontName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "fontName", fontName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes specified embedded font and returns presentation.
     - parameter document: Document data.
     - parameter fontName: Font name.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteEmbeddedFontOnline(_ document: Data, _ fontName: String, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteEmbeddedFontOnlineWithRequestBuilder(document, fontName, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes specified embedded font and returns presentation.
     - POST /slides/fonts/embedded/{fontName}/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter fontName: Font name.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteEmbeddedFontOnlineWithRequestBuilder(_ document: Data, _ fontName: String, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/fonts/embedded/{fontName}/delete"
        methodPath = APIHelper.replacePathParameter(methodPath, "fontName", fontName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete file
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to delete
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFile(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFileWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete file
     - DELETE /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to delete
     - returns: RequestBuilder<Void> 
     */
    open class func deleteFileWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Delete folder
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter recursive: Enable to delete folders, subfolders and files
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteFolder(_ path: String, _ storageName: String = "", _ recursive: Bool? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteFolderWithRequestBuilder(path, storageName, recursive).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Delete folder
     - DELETE /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter recursive: Enable to delete folders, subfolders and files
     - returns: RequestBuilder<Void> 
     */
    open class func deleteFolderWithRequestBuilder(_ path: String, _ storageName: String = "", _ recursive: Bool? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "recursive": recursive
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Remove notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteNotesSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        deleteNotesSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove notes slide.
     - DELETE /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func deleteNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a range of paragraphs.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the paragraphs to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphs, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the paragraphs to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphs: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": paragraphs, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Deletes cropped areas of a pictire.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must refer to a picture frame).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Presentation storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePictureCroppedAreas(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deletePictureCroppedAreasWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Deletes cropped areas of a pictire.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/pictureCroppedAreas
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must refer to a picture frame).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Presentation storage.
     - returns: RequestBuilder<Void> 
     */
    open class func deletePictureCroppedAreasWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/pictureCroppedAreas"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a range of portions.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the portions to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deletePortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deletePortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portions, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the portions to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func deletePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": portions, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Resets all presentation protection settings. 
     - parameter name: Document name.
     - parameter password: Presentation password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProtection(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        deleteProtectionWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Resets all presentation protection settings. 
     - DELETE /slides/{name}/protection
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Presentation password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func deleteProtectionWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ProtectionProperties> {
        var methodPath = "/slides/{name}/protection"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Resets all presentation protection settings. 
     - parameter document: Document data.
     - parameter password: Presentation password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteProtectionOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteProtectionOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Resets all presentation protection settings. 
     - POST /slides/protection/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter password: Presentation password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteProtectionOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/protection/delete"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete a presentation section.
     - parameter name: Document name.
     - parameter sectionIndex: Section index.
     - parameter withSlides: True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSection(_ name: String, _ sectionIndex: Int, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionWithRequestBuilder(name, sectionIndex, withSlides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation section.
     - DELETE /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sectionIndex: Section index.
     - parameter withSlides: True to delete the slides related to the deleted section; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withSlides": withSlides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete presentation sections.
     - parameter name: Document name.
     - parameter sections: The indices of the sections to be deleted; delete all by default.
     - parameter withSlides: True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSections(_ name: String, _ sections: [Int]? = nil, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        deleteSectionsWithRequestBuilder(name, sections, withSlides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation sections.
     - DELETE /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sections: The indices of the sections to be deleted; delete all by default.
     - parameter withSlides: True to delete the slides related to the deleted sections; move them to the remaining sections otherwise.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func deleteSectionsWithRequestBuilder(_ name: String, _ sections: [Int]? = nil, _ withSlides: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sections": sections, 
            "withSlides": withSlides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a shape.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Remove a range of shapes.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteShapes(_ name: String, _ slideIndex: Int, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteShapesWithRequestBuilder(name, slideIndex, shapes, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete a presentation slide by index.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a presentation slide by index.
     - DELETE /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes comments of the specified author from the slide. If author value is not provided all comments will be removed. 
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideComments(_ name: String, _ slideIndex: Int, _ author: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        deleteSlideCommentsWithRequestBuilder(name, slideIndex, author, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes comments of the specified author from the slide. If author value is not provided all comments will be removed. 
     - DELETE /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideComments> 
     */
    open class func deleteSlideCommentsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ author: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideComments> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "author": author, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes comments of the specified author from the slide. If author value is not provided all comments will be removed.              
     - parameter document: Document data.
     - parameter slideIndex: 
     - parameter author: Author of comments.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlideCommentsOnline(_ document: Data, _ slideIndex: Int, _ author: String = "", _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteSlideCommentsOnlineWithRequestBuilder(document, slideIndex, author, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes comments of the specified author from the slide. If author value is not provided all comments will be removed.              
     - POST /slides/slides/{slideIndex}/comments/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: 
     - parameter author: Author of comments.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteSlideCommentsOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ author: String = "", _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/comments/delete"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "author": author
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete presentation slides.
     - parameter name: Document name.
     - parameter slides: The indices of the slides to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSlides(_ name: String, _ slides: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        deleteSlidesWithRequestBuilder(name, slides, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete presentation slides.
     - DELETE /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slides: The indices of the slides to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func deleteSlidesWithRequestBuilder(_ name: String, _ slides: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "slides": slides, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete SmartArt node
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter smartArtIndex: Index of the object on the slide among the same type of objects.
     - parameter nodeIndex: Root level node index.
     - parameter subNode: Sub-node path (e.g. \"3\", \"3/nodes/2).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSmartArtNode(_ name: String, _ slideIndex: Int, _ smartArtIndex: Int, _ nodeIndex: Int, _ subNode: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SmartArt?,_ error: Error?) -> Void)) {
        deleteSmartArtNodeWithRequestBuilder(name, slideIndex, smartArtIndex, nodeIndex, subNode, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete SmartArt node
     - DELETE /slides/{name}/slides/{slideIndex}/smartArts/{smartArtIndex}/nodes/{nodeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter smartArtIndex: Index of the object on the slide among the same type of objects.
     - parameter nodeIndex: Root level node index.
     - parameter subNode: Sub-node path (e.g. \"3\", \"3/nodes/2).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SmartArt> 
     */
    open class func deleteSmartArtNodeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ smartArtIndex: Int, _ nodeIndex: Int, _ subNode: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SmartArt> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/smartArts/{smartArtIndex}/nodes/{nodeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "smartArtIndex", smartArtIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "nodeIndex", nodeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "subNode": subNode, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SmartArt>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimation: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove animation from a special slide (master, layout, notes).
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimation(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationWithRequestBuilder(name, slideIndex, slideType, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove animation from a special slide (master, layout, notes).
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimationEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove an effect from special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimationEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationEffectWithRequestBuilder(name, slideIndex, slideType, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from special slide (master, layout, notes) animation.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimationInteractiveSequence: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove an interactive sequence from special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimationInteractiveSequence(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationInteractiveSequenceWithRequestBuilder(name, slideIndex, slideType, sequenceIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an interactive sequence from special slide (master, layout, notes) animation.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The index of an interactive sequence to be deleted.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationInteractiveSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimationInteractiveSequenceEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove an effect from special slide (master, layout, notes) animation interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, slideType, sequenceIndex, effectIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove an effect from special slide (master, layout, notes) animation interactive sequence.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: Interactive sequence index.
     - parameter effectIndex: Index of the effect to be removed.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effectIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimationInteractiveSequences: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Clear all interactive sequences from special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimationInteractiveSequences(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationInteractiveSequencesWithRequestBuilder(name, slideIndex, slideType, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear all interactive sequences from special slide (master, layout, notes) animation.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationInteractiveSequencesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideAnimationMainSequence: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Clear main sequence in special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideAnimationMainSequence(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        deleteSpecialSlideAnimationMainSequenceWithRequestBuilder(name, slideIndex, slideType, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Clear main sequence in special slide (master, layout, notes) animation.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func deleteSpecialSlideAnimationMainSequenceWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideParagraph: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideParagraph(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSpecialSlideParagraphWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSpecialSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideParagraphs: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a range of paragraphs.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideParagraphs(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphs: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteSpecialSlideParagraphsWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphs, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of paragraphs.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphs: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteSpecialSlideParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphs: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "paragraphs": paragraphs, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlidePortion: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a portion.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlidePortion(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSpecialSlidePortionWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, portionIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a portion.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSpecialSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlidePortions: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a range of portions.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlidePortions(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteSpecialSlidePortionsWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, portions, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of portions.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portions: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteSpecialSlidePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "portions": portions, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a shape.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a shape.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_deleteSpecialSlideShapes: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Remove a range of shapes.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteSpecialSlideShapes(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        deleteSpecialSlideShapesWithRequestBuilder(name, slideIndex, slideType, shapes, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Remove a range of shapes.
     - DELETE /slides/{name}/slides/{slideIndex}/{slideType}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapes: The indices of the shapes to be deleted; delete all by default.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func deleteSpecialSlideShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapes: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapes": shapes, 
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete cell paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTableCellParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        deleteTableCellParagraphWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete cell paragraph.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func deleteTableCellParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete table ell portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTableCellPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        deleteTableCellPortionWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete table ell portion.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func deleteTableCellPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Deletes the table row.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter withAttachedRows: Also delete all attached rows.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteTableRow(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ withAttachedRows: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Table?,_ error: Error?) -> Void)) {
        deleteTableRowWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, withAttachedRows, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Deletes the table row.
     - DELETE /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter withAttachedRows: Also delete all attached rows.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Table> 
     */
    open class func deleteTableRowWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ withAttachedRows: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Table> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withAttachedRows": withAttachedRows, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Table>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes unused layout slides.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUnusedLayoutSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlides?,_ error: Error?) -> Void)) {
        deleteUnusedLayoutSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes unused layout slides.
     - DELETE /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlides> 
     */
    open class func deleteUnusedLayoutSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlides> {
        var methodPath = "/slides/{name}/layoutSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes unused layout slides.
     - parameter document: Document data
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUnusedLayoutSlidesOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteUnusedLayoutSlidesOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes unused layout slides.
     - POST /slides/layoutSlides/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteUnusedLayoutSlidesOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/layoutSlides/delete"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes unused master slides.
     - parameter name: Document name.
     - parameter ignorePreserveField: Determines, whether this method should remove unused master even if its             preserve property is set to true.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUnusedMasterSlides(_ name: String, _ ignorePreserveField: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlides?,_ error: Error?) -> Void)) {
        deleteUnusedMasterSlidesWithRequestBuilder(name, ignorePreserveField, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes unused master slides.
     - DELETE /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter ignorePreserveField: Determines, whether this method should remove unused master even if its             preserve property is set to true.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlides> 
     */
    open class func deleteUnusedMasterSlidesWithRequestBuilder(_ name: String, _ ignorePreserveField: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlides> {
        var methodPath = "/slides/{name}/masterSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "ignorePreserveField": ignorePreserveField, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes unused master slides.
     - parameter document: Document data
     - parameter ignorePreserveField: Determines, whether this method should remove unused master even if its             preserve property is set to true.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUnusedMasterSlidesOnline(_ document: Data, _ ignorePreserveField: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteUnusedMasterSlidesOnlineWithRequestBuilder(document, ignorePreserveField, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes unused master slides.
     - POST /slides/masterSlides/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data
     - parameter ignorePreserveField: Determines, whether this method should remove unused master even if its             preserve property is set to true.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteUnusedMasterSlidesOnlineWithRequestBuilder(_ document: Data, _ ignorePreserveField: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/masterSlides/delete"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "ignorePreserveField": ignorePreserveField
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Delete module from VBA project.
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteVbaModule(_ name: String, _ moduleIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: VbaProject?,_ error: Error?) -> Void)) {
        deleteVbaModuleWithRequestBuilder(name, moduleIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete module from VBA project.
     - DELETE /slides/{name}/vbaProject/modules/{moduleIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<VbaProject> 
     */
    open class func deleteVbaModuleWithRequestBuilder(_ name: String, _ moduleIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<VbaProject> {
        var methodPath = "/slides/{name}/vbaProject/modules/{moduleIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "moduleIndex", moduleIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VbaProject>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes shapes with name \"watermark\" from the presentation.
     - parameter name: Document name.
     - parameter shapeName: Name of the watermark shape. If null, default value \"watermark\"is used.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteWatermark(_ name: String, _ shapeName: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        deleteWatermarkWithRequestBuilder(name, shapeName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Removes shapes with name \"watermark\" from the presentation.
     - DELETE /slides/{name}/watermark/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter shapeName: Name of the watermark shape. If null, default value \"watermark\"is used.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWatermarkWithRequestBuilder(_ name: String, _ shapeName: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/watermark/delete"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeName": shapeName, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Removes shapes with name \"watermark\" from the presentation.
     - parameter document: Document data.
     - parameter shapeName: Name of the watermark shape. If null, default value \"watermark\"is used.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteWatermarkOnline(_ document: Data, _ shapeName: String = "", _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        deleteWatermarkOnlineWithRequestBuilder(document, shapeName, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Removes shapes with name \"watermark\" from the presentation.
     - POST /slides/watermark/delete
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter shapeName: Name of the watermark shape. If null, default value \"watermark\"is used.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func deleteWatermarkOnlineWithRequestBuilder(_ document: Data, _ shapeName: String = "", _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/watermark/delete"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeName": shapeName
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Download file
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to download
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadFile(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadFileWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Download file
     - GET /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter path: File path e.g. '/folder/file.ext'
     - parameter storageName: Storage name
     - parameter versionId: File version ID to download
     - returns: RequestBuilder<Data> 
     */
    open class func downloadFileWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadImage: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get image in specified format.
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImage(_ name: String, _ index: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageWithRequestBuilder(name, index, format, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - GET /slides/{name}/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageWithRequestBuilder(_ name: String, _ index: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/{index}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get image binary data.
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageDefaultFormat(_ name: String, _ index: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageDefaultFormatWithRequestBuilder(name, index, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - GET /slides/{name}/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageDefaultFormatWithRequestBuilder(_ name: String, _ index: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/{index}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get image binary data.
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageDefaultFormatOnline(_ document: Data, _ index: Int, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageDefaultFormatOnlineWithRequestBuilder(document, index, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image binary data.
     - POST /slides/images/{index}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageDefaultFormatOnlineWithRequestBuilder(_ document: Data, _ index: Int, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/{index}"
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadImageOnline: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get image in specified format.
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImageOnline(_ document: Data, _ index: Int, _ format: String, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImageOnlineWithRequestBuilder(document, index, format, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get image in specified format.
     - POST /slides/images/{index}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter index: Image index.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImageOnlineWithRequestBuilder(_ document: Data, _ index: Int, _ format: String, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/{index}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "index", index)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadImages: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get all presentation images in specified format.
     - parameter name: 
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImages(_ name: String, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesWithRequestBuilder(name, format, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format.
     - POST /slides/{name}/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: 
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesWithRequestBuilder(_ name: String, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/download/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get all presentation images.
     - parameter name: 
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesDefaultFormat(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesDefaultFormatWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/{name}/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: 
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesDefaultFormatWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/images/download"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get all presentation images.
     - parameter document: Document data.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesDefaultFormatOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesDefaultFormatOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images.
     - POST /slides/images/download
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesDefaultFormatOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/images/download"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadImagesOnline: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
    }

    /**
     Get all presentation images in specified format. 
     - parameter document: Document data.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadImagesOnline(_ document: Data, _ format: String, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadImagesOnlineWithRequestBuilder(document, format, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all presentation images in specified format. 
     - POST /slides/images/download/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: Export format (png, jpg, gif).
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadImagesOnlineWithRequestBuilder(_ document: Data, _ format: String, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/download/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadMathPortion: String { 
        case mathML = "MathML"
        case laTeX = "LaTeX"
    }

    /**
     Convert Mathematical Text to MathML Format
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter format: Format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadMathPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadMathPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, format, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert Mathematical Text to MathML Format
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter format: Format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadMathPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ format: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadNotesSlide: String { 
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
    }

    /**
     Convert notes slide to the specified image format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format.
     - parameter height: The height of the slide representation in the output format
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadNotesSlide(_ name: String, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadNotesSlideWithRequestBuilder(name, slideIndex, format, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format.
     - parameter height: The height of the slide representation in the output format
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadNotesSlideOnline: String { 
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
    }

    /**
     Convert notes slide to the specified image format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format.
     - parameter height: The height of the slide representation in the output format.
     - parameter password: Document password.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadNotesSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadNotesSlideOnlineWithRequestBuilder(document, slideIndex, format, width, height, password, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert notes slide to the specified image format.
     - POST /slides/slides/{slideIndex}/notesSlide/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format.
     - parameter height: The height of the slide representation in the output format.
     - parameter password: Document password.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadNotesSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Convert Mathematical Text to MathML Format
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadPortionAsMathMl(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadPortionAsMathMlWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Convert Mathematical Text to MathML Format
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/mathml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadPortionAsMathMlWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/mathml"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadPresentation: String { 
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
    }

    /**
     Save a presentation to a specified format.
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be saved. If not specified, all slides are saved by default.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadPresentation(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadPresentationWithRequestBuilder(name, format, options, password, folder, storage, fontsFolder, slides).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a presentation to a specified format.
     - POST /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be saved. If not specified, all slides are saved by default.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadPresentationWithRequestBuilder(_ name: String, _ format: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil) -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/{format}"
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

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_downloadShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Data> 
     */
    open class func downloadShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadShapeFromDto: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     Creates the shape from the DTO and returns the result in the specified format.
     - parameter format: Export format
     - parameter dto: Shape DTO.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadShapeFromDto(_ format: String, _ dto: ShapeBase, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadShapeFromDtoWithRequestBuilder(format, dto).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Creates the shape from the DTO and returns the result in the specified format.
     - POST /slides/shape/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter format: Export format
     - parameter dto: Shape DTO.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadShapeFromDtoWithRequestBuilder(_ format: String, _ dto: ShapeBase) -> RequestBuilder<Data> {
        var methodPath = "/slides/shape/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadShapeOnline: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_downloadShapeOnline: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Fonts folder.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadShapeOnline(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: IShapeExportOptions? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadShapeOnlineWithRequestBuilder(document, slideIndex, shapeIndex, format, scaleX, scaleY, bounds, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Fonts folder.
     - parameter options: Export options.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadShapeOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: IShapeExportOptions? = nil) -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadSlide: String { 
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
    }

    /**
     Save a slide to a specified format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter options: Export options.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSlide(_ name: String, _ slideIndex: Int, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSlideWithRequestBuilder(name, slideIndex, format, options, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter options: Export options.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_downloadSlideOnline: String { 
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
    }

    /**
     Save a slide to a specified format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSlideOnlineWithRequestBuilder(document, slideIndex, format, width, height, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save a slide to a specified format.
     - POST /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter options: Export options.
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil) -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_downloadSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     * enum for parameter format
     */
    public enum Format_downloadSpecialSlideShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_downloadSpecialSlideShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: Export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func downloadSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        downloadSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, shapeIndex, format, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Render shape to specified picture format.
     - POST /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter name: Presentation name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter options: Export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Data> 
     */
    open class func downloadSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ format: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide animation effects.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAnimation(_ name: String, _ slideIndex: Int, _ shapeIndex: Int? = nil, _ paragraphIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        getAnimationWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide animation effects.
     - GET /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func getAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int? = nil, _ paragraphIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": shapeIndex?.encodeToJSON(), 
            "paragraphIndex": paragraphIndex?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get API info.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getApiInfo(completion: @escaping ((_ data: ApiInfo?,_ error: Error?) -> Void)) {
        getApiInfoWithRequestBuilder().executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get API info.
     - GET /slides/info
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - returns: RequestBuilder<ApiInfo> 
     */
    open class func getApiInfoWithRequestBuilder() -> RequestBuilder<ApiInfo> {
        let methodPath = "/slides/info"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<ApiInfo>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Returns presentation fonts info.
     - parameter fontsFolder: Storage folder for custom fonts.
     - parameter storage: Storage for custom fonts.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getAvailableFonts(_ fontsFolder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        getAvailableFontsWithRequestBuilder(fontsFolder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns presentation fonts info.
     - GET /slides/fonts/available
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter fontsFolder: Storage folder for custom fonts.
     - parameter storage: Storage for custom fonts.
     - returns: RequestBuilder<FontsData> 
     */
    open class func getAvailableFontsWithRequestBuilder(_ fontsFolder: String = "", _ storage: String = "") -> RequestBuilder<FontsData> {
        let methodPath = "/slides/fonts/available"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "fontsFolder": fontsFolder, 
            "storage": storage
        ])

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Read slide background info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getBackground(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        getBackgroundWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide background info.
     - GET /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func getBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide theme color scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getColorScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ColorScheme?,_ error: Error?) -> Void)) {
        getColorSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme color scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/colorScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ColorScheme> 
     */
    open class func getColorSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ColorScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/colorScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ColorScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Lists comment authors.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCommentAuthors(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: CommentAuthors?,_ error: Error?) -> Void)) {
        getCommentAuthorsWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Lists comment authors.
     - GET /slides/{name}/comments/authors
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<CommentAuthors> 
     */
    open class func getCommentAuthorsWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<CommentAuthors> {
        var methodPath = "/slides/{name}/comments/authors"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CommentAuthors>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get disc usage
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDiscUsage(_ storageName: String = "", completion: @escaping ((_ data: DiscUsage?,_ error: Error?) -> Void)) {
        getDiscUsageWithRequestBuilder(storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get disc usage
     - GET /slides/storage/disc
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter storageName: Storage name
     - returns: RequestBuilder<DiscUsage> 
     */
    open class func getDiscUsageWithRequestBuilder(_ storageName: String = "") -> RequestBuilder<DiscUsage> {
        let methodPath = "/slides/storage/disc"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<DiscUsage>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Read presentation document properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        getDocumentPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document properties.
     - GET /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func getDocumentPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDocumentProperty(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        getDocumentPropertyWithRequestBuilder(name, propertyName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation document property.
     - GET /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func getDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperty> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get file versions
     - parameter path: File path e.g. '/file.ext'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFileVersions(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: FileVersions?,_ error: Error?) -> Void)) {
        getFileVersionsWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get file versions
     - GET /slides/storage/version/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter path: File path e.g. '/file.ext'
     - parameter storageName: Storage name
     - returns: RequestBuilder<FileVersions> 
     */
    open class func getFileVersionsWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<FileVersions> {
        var methodPath = "/slides/storage/version/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FileVersions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Get all files and folders within a folder
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFilesList(_ path: String, _ storageName: String = "", completion: @escaping ((_ data: FilesList?,_ error: Error?) -> Void)) {
        getFilesListWithRequestBuilder(path, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get all files and folders within a folder
     - GET /slides/storage/folder/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter path: Folder path e.g. '/folder'
     - parameter storageName: Storage name
     - returns: RequestBuilder<FilesList> 
     */
    open class func getFilesListWithRequestBuilder(_ path: String, _ storageName: String = "") -> RequestBuilder<FilesList> {
        var methodPath = "/slides/storage/folder/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FilesList>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Read slide theme font scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFontScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontScheme?,_ error: Error?) -> Void)) {
        getFontSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme font scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/fontScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FontScheme> 
     */
    open class func getFontSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FontScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/fontScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns presentation fonts info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFonts(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        getFontsWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns presentation fonts info.
     - GET /slides/{name}/fonts
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FontsData> 
     */
    open class func getFontsWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FontsData> {
        var methodPath = "/slides/{name}/fonts"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns presentation fonts info.
     - parameter document: Document data.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFontsOnline(_ document: Data, _ password: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        getFontsOnlineWithRequestBuilder(document, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns presentation fonts info.
     - POST /slides/fonts
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter document: Document data.
     - parameter password: Document password.
     - returns: RequestBuilder<FontsData> 
     */
    open class func getFontsOnlineWithRequestBuilder(_ document: Data, _ password: String = "") -> RequestBuilder<FontsData> {
        let methodPath = "/slides/fonts"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide theme format scheme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getFormatScheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FormatScheme?,_ error: Error?) -> Void)) {
        getFormatSchemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme format scheme info.
     - GET /slides/{name}/slides/{slideIndex}/theme/formatScheme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FormatScheme> 
     */
    open class func getFormatSchemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FormatScheme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme/formatScheme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FormatScheme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation layoutSlide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        getLayoutSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlide info.
     - GET /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func getLayoutSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation layoutSlides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLayoutSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlides?,_ error: Error?) -> Void)) {
        getLayoutSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation layoutSlides info.
     - GET /slides/{name}/layoutSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlides> 
     */
    open class func getLayoutSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlides> {
        var methodPath = "/slides/{name}/layoutSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation masterSlide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlide?,_ error: Error?) -> Void)) {
        getMasterSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlide info.
     - GET /slides/{name}/masterSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlide> 
     */
    open class func getMasterSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlide> {
        var methodPath = "/slides/{name}/masterSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation masterSlides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMasterSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: MasterSlides?,_ error: Error?) -> Void)) {
        getMasterSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation masterSlides info.
     - GET /slides/{name}/masterSlides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<MasterSlides> 
     */
    open class func getMasterSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<MasterSlides> {
        var methodPath = "/slides/{name}/masterSlides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<MasterSlides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read notes slide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get header/footer info for the notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        getNotesSlideHeaderFooterWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get header/footer info for the notes slide.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func getNotesSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlideHeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read notes slide info.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getNotesSlideOnline(_ document: Data, _ slideIndex: Int, _ password: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        getNotesSlideOnlineWithRequestBuilder(document, slideIndex, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read notes slide info.
     - POST /slides/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func getNotesSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ password: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read shape paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read effective paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphEffective(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getParagraphEffectiveWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read effective paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/effective
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getParagraphEffectiveWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/effective"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Return coordinates of rect that bounds paragraph. The rect includes all the lines of text in paragraph, including empty ones.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphRectangle(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextBounds?,_ error: Error?) -> Void)) {
        getParagraphRectangleWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Return coordinates of rect that bounds paragraph. The rect includes all the lines of text in paragraph, including empty ones.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/bounds
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextBounds> 
     */
    open class func getParagraphRectangleWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextBounds> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/bounds"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextBounds>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read shape paragraphs info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide placeholder info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter placeholderIndex: Placeholder index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlaceholder(_ name: String, _ slideIndex: Int, _ placeholderIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Placeholder?,_ error: Error?) -> Void)) {
        getPlaceholderWithRequestBuilder(name, slideIndex, placeholderIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholder info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter placeholderIndex: Placeholder index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Placeholder> 
     */
    open class func getPlaceholderWithRequestBuilder(_ name: String, _ slideIndex: Int, _ placeholderIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Placeholder> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/placeholders/{placeholderIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "placeholderIndex", placeholderIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholder>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide placeholders info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlaceholders(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Placeholders?,_ error: Error?) -> Void)) {
        getPlaceholdersWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide placeholders info.
     - GET /slides/{name}/slides/{slideIndex}/placeholders
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Placeholders> 
     */
    open class func getPlaceholdersWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Placeholders> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/placeholders"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Placeholders>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read paragraph portion info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func getPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read effective portion info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortionEffective(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getPortionEffectiveWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read effective portion info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/effective
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func getPortionEffectiveWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/effective"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Return coordinates of rect that bounds paragraph. The rect includes all the lines of text in paragraph, including empty ones.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortionRectangle(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextBounds?,_ error: Error?) -> Void)) {
        getPortionRectangleWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Return coordinates of rect that bounds paragraph. The rect includes all the lines of text in paragraph, including empty ones.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/bounds
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextBounds> 
     */
    open class func getPortionRectangleWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextBounds> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/bounds"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextBounds>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read paragraph portions info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getPortionsWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func getPortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentation(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        getPresentationWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation info.
     - GET /slides/{name}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func getPresentationWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation images info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentationImages(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getPresentationImagesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation images info.
     - GET /slides/{name}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Images> 
     */
    open class func getPresentationImagesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Images> {
        var methodPath = "/slides/{name}/images"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Extract presentation text items.
     - parameter name: Document name.
     - parameter withEmpty: True to incude empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPresentationTextItems(_ name: String, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getPresentationTextItemsWithRequestBuilder(name, withEmpty, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract presentation text items.
     - GET /slides/{name}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter withEmpty: True to incude empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextItems> 
     */
    open class func getPresentationTextItemsWithRequestBuilder(_ name: String, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextItems> {
        var methodPath = "/slides/{name}/textItems"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": withEmpty, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation protection properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getProtectionProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        getProtectionPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation protection properties.
     - GET /slides/{name}/protection
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func getProtectionPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ProtectionProperties> {
        var methodPath = "/slides/{name}/protection"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation sections info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSections(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        getSectionsWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation sections info.
     - GET /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func getSectionsWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide shape info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getShapeWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns geometry path of the shape
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShapeGeometryPath(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: GeometryPaths?,_ error: Error?) -> Void)) {
        getShapeGeometryPathWithRequestBuilder(name, slideIndex, shapeIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns geometry path of the shape
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/geometryPath
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<GeometryPaths> 
     */
    open class func getShapeGeometryPathWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<GeometryPaths> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/geometryPath"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GeometryPaths>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter shapeType
     */
    public enum ShapeType_getShapes: String { 
        case shape = "Shape"
        case chart = "Chart"
        case table = "Table"
        case pictureFrame = "PictureFrame"
        case videoFrame = "VideoFrame"
        case audioFrame = "AudioFrame"
        case smartArt = "SmartArt"
        case oleObjectFrame = "OleObjectFrame"
        case groupShape = "GroupShape"
        case graphicalObject = "GraphicalObject"
        case connector = "Connector"
        case smartArtShape = "SmartArtShape"
        case zoomFrame = "ZoomFrame"
        case sectionZoomFrame = "SectionZoomFrame"
        case summaryZoomFrame = "SummaryZoomFrame"
        case summaryZoomSection = "SummaryZoomSection"
    }

    /**
     Read slide shapes info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter shapeType: Shape type.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getShapes(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ shapeType: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getShapesWithRequestBuilder(name, slideIndex, password, folder, storage, shapeType, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter shapeType: Shape type.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func getShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ shapeType: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "shapeType": shapeType, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation slide info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlide(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        getSlideWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide info.
     - GET /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func getSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation slide comments.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideComments(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideComments?,_ error: Error?) -> Void)) {
        getSlideCommentsWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide comments.
     - GET /slides/{name}/slides/{slideIndex}/comments
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideComments> 
     */
    open class func getSlideCommentsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideComments> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/comments"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideComments>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get footer info for the slide.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        getSlideHeaderFooterWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get footer info for the slide.
     - GET /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func getSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<HeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide images info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideImages(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Images?,_ error: Error?) -> Void)) {
        getSlideImagesWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide images info.
     - GET /slides/{name}/slides/{slideIndex}/images
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Images> 
     */
    open class func getSlideImagesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Images> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/images"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Images>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation slide properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        getSlidePropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide properties.
     - GET /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideProperties> 
     */
    open class func getSlidePropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideProperties> {
        var methodPath = "/slides/{name}/slideProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation slide show properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideShowProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideShowProperties?,_ error: Error?) -> Void)) {
        getSlideShowPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slide show properties.
     - GET /slides/{name}/slideShowProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideShowProperties> 
     */
    open class func getSlideShowPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideShowProperties> {
        var methodPath = "/slides/{name}/slideShowProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideShowProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Extract slide text items.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter withEmpty: True to include empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlideTextItems(_ name: String, _ slideIndex: Int, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TextItems?,_ error: Error?) -> Void)) {
        getSlideTextItemsWithRequestBuilder(name, slideIndex, withEmpty, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Extract slide text items.
     - GET /slides/{name}/slides/{slideIndex}/textItems
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter withEmpty: True to include empty items.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TextItems> 
     */
    open class func getSlideTextItemsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ withEmpty: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TextItems> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/textItems"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "withEmpty": withEmpty, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TextItems>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation slides info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSlides(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        getSlidesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation slides info.
     - GET /slides/{name}/slides
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func getSlidesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlideAnimation: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read special slide (master, layout, notes) animation effects.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter paragraphIndex: Paragraph index. If specified, only effects related to that paragraph are returned.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlideAnimation(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int? = nil, _ paragraphIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        getSpecialSlideAnimationWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read special slide (master, layout, notes) animation effects.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index. If specified, only effects related to that shape are returned.
     - parameter paragraphIndex: Paragraph index. If specified, only effects related to that paragraph are returned.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func getSpecialSlideAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int? = nil, _ paragraphIndex: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "shapeIndex": shapeIndex?.encodeToJSON(), 
            "paragraphIndex": paragraphIndex?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlideParagraph: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read shape paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlideParagraph(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getSpecialSlideParagraphWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read shape paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getSpecialSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlideParagraphs: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read special shape paragraphs info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlideParagraphs(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getSpecialSlideParagraphsWithRequestBuilder(name, slideIndex, slideType, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read special shape paragraphs info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getSpecialSlideParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlidePortion: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read paragraph portion info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlidePortion(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getSpecialSlidePortionWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, portionIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portion info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func getSpecialSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlidePortions: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read paragraph portions info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlidePortions(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getSpecialSlidePortionsWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read paragraph portions info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portions> 
     */
    open class func getSpecialSlidePortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read special slide shape info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        getSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, shapeIndex, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read special slide shape info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func getSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_getSpecialSlideShapes: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Read special slide shapes info.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSpecialSlideShapes(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        getSpecialSlideShapesWithRequestBuilder(name, slideIndex, slideType, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read special slide shapes info.
     - GET /slides/{name}/slides/{slideIndex}/{slideType}/shapes
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Shapes> 
     */
    open class func getSpecialSlideShapesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns paragraph info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTableCellParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        getTableCellParagraphWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns paragraph info.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func getTableCellParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns table cell paragraphs.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTableCellParagraphs(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraphs?,_ error: Error?) -> Void)) {
        getTableCellParagraphsWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns table cell paragraphs.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraphs> 
     */
    open class func getTableCellParagraphsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraphs> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraphs>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns table cell portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTableCellPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        getTableCellPortionWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, portionIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns table cell portion.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func getTableCellPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Returns table cell portions.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTableCellPortions(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portions?,_ error: Error?) -> Void)) {
        getTableCellPortionsWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Returns table cell portions.
     - GET /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portions> 
     */
    open class func getTableCellPortionsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portions> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portions>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read slide theme info.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTheme(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Theme?,_ error: Error?) -> Void)) {
        getThemeWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read slide theme info.
     - GET /slides/{name}/slides/{slideIndex}/theme
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Theme> 
     */
    open class func getThemeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Theme> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/theme"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Theme>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get VBA module info.
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVbaModule(_ name: String, _ moduleIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: VbaModule?,_ error: Error?) -> Void)) {
        getVbaModuleWithRequestBuilder(name, moduleIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get VBA module info.
     - GET /slides/{name}/vbaProject/modules/{moduleIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<VbaModule> 
     */
    open class func getVbaModuleWithRequestBuilder(_ name: String, _ moduleIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<VbaModule> {
        var methodPath = "/slides/{name}/vbaProject/modules/{moduleIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "moduleIndex", moduleIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VbaModule>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get VBA project info.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVbaProject(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: VbaProject?,_ error: Error?) -> Void)) {
        getVbaProjectWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get VBA project info.
     - GET /slides/{name}/vbaProject
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<VbaProject> 
     */
    open class func getVbaProjectWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<VbaProject> {
        var methodPath = "/slides/{name}/vbaProject"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VbaProject>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Read presentation view properties.
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getViewProperties(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        getViewPropertiesWithRequestBuilder(name, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read presentation view properties.
     - GET /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ViewProperties> 
     */
    open class func getViewPropertiesWithRequestBuilder(_ name: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ViewProperties> {
        var methodPath = "/slides/{name}/viewProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Highlight all matches of sample in text frame text using specified color.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter regex: Regular expression.
     - parameter color: Highlighting color.
     - parameter wholeWordsOnly: Match only whole words.
     - parameter ignoreCase: True to search ignoring char case.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func highlightShapeRegex(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ regex: String, _ color: String, _ wholeWordsOnly: Bool? = nil, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shape?,_ error: Error?) -> Void)) {
        highlightShapeRegexWithRequestBuilder(name, slideIndex, shapeIndex, regex, color, wholeWordsOnly, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Highlight all matches of sample in text frame text using specified color.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/highlightRegex
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter regex: Regular expression.
     - parameter color: Highlighting color.
     - parameter wholeWordsOnly: Match only whole words.
     - parameter ignoreCase: True to search ignoring char case.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shape> 
     */
    open class func highlightShapeRegexWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ regex: String, _ color: String, _ wholeWordsOnly: Bool? = nil, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shape> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/highlightRegex"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "regex": regex, 
            "color": color, 
            "wholeWordsOnly": wholeWordsOnly, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shape>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Highlight all matches of sample in text frame text using specified color.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter text: Text sample to highlight.
     - parameter color: Highlighting color.
     - parameter wholeWordsOnly: Match only whole words.
     - parameter ignoreCase: True to search ignoring char case.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func highlightShapeText(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ text: String, _ color: String, _ wholeWordsOnly: Bool? = nil, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shape?,_ error: Error?) -> Void)) {
        highlightShapeTextWithRequestBuilder(name, slideIndex, shapeIndex, text, color, wholeWordsOnly, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Highlight all matches of sample in text frame text using specified color.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/highlightText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter text: Text sample to highlight.
     - parameter color: Highlighting color.
     - parameter wholeWordsOnly: Match only whole words.
     - parameter ignoreCase: True to search ignoring char case.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Shape> 
     */
    open class func highlightShapeTextWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ text: String, _ color: String, _ wholeWordsOnly: Bool? = nil, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shape> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/highlightText"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "text": text, 
            "color": color, 
            "wholeWordsOnly": wholeWordsOnly, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shape>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Create presentation document from html.
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func importFromHtml(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        importFromHtmlWithRequestBuilder(name, html, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from html.
     - POST /slides/{name}/fromHtml
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter html: HTML data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func importFromHtmlWithRequestBuilder(_ name: String, _ html: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromHtml"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: html)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     - parameter name: Document name.
     - parameter pdf: PDF data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func importFromPdf(_ name: String, _ pdf: Data, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        importFromPdfWithRequestBuilder(name, pdf, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create presentation document from pdf or append pdf to an existing presentation.
     - POST /slides/{name}/fromPdf
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter pdf: PDF data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func importFromPdfWithRequestBuilder(_ name: String, _ pdf: Data, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/fromPdf"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(pdf)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Imports shapes from SVG file.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter image: SVG image data.
     - parameter x: The X coordinate of the imported group of shapes (0 is default if not specified).
     - parameter y: The Y coordinate of the imported group of shapes (0 is default if not specified).
     - parameter width: The width of the imported group of shapes (default is SVG image width).
     - parameter height: The height of the imported group of shapes (default is SVG image width).
     - parameter shapes: Indexes of shapes to import. All shapes are imported if not specified.
     - parameter group: If true, the set of shapes will be imported as a one group shape.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func importShapesFromSvg(_ name: String, _ slideIndex: Int, _ image: Data? = nil, _ x: Int? = nil, _ y: Int? = nil, _ width: Int? = nil, _ height: Int? = nil, _ shapes: [Int]? = nil, _ group: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Shapes?,_ error: Error?) -> Void)) {
        importShapesFromSvgWithRequestBuilder(name, slideIndex, image, x, y, width, height, shapes, group, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Imports shapes from SVG file.
     - POST /slides/{name}/slides/{slideIndex}/shapes/fromSvg
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter image: SVG image data.
     - parameter x: The X coordinate of the imported group of shapes (0 is default if not specified).
     - parameter y: The Y coordinate of the imported group of shapes (0 is default if not specified).
     - parameter width: The width of the imported group of shapes (default is SVG image width).
     - parameter height: The height of the imported group of shapes (default is SVG image width).
     - parameter shapes: Indexes of shapes to import. All shapes are imported if not specified.
     - parameter group: If true, the set of shapes will be imported as a one group shape.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - returns: RequestBuilder<Shapes> 
     */
    open class func importShapesFromSvgWithRequestBuilder(_ name: String, _ slideIndex: Int, _ image: Data? = nil, _ x: Int? = nil, _ y: Int? = nil, _ width: Int? = nil, _ height: Int? = nil, _ shapes: [Int]? = nil, _ group: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Shapes> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/fromSvg"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        if image != nil {
            fileParams.append(image!)
        }

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "x": x?.encodeToJSON(), 
            "y": y?.encodeToJSON(), 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "shapes": shapes, 
            "group": group, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Shapes>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Merge the presentation with other presentations specified in the request parameter.
     - parameter name: Document name.
     - parameter request: PresentationsMergeRequest with a list of presentations to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func merge(_ name: String, _ request: PresentationsMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        mergeWithRequestBuilder(name, request, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations specified in the request parameter.
     - POST /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter request: PresentationsMergeRequest with a list of presentations to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func mergeWithRequestBuilder(_ name: String, _ request: PresentationsMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/merge"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Merges presentations or some of their slides specified in the request parameter. Result will be save in the storage.
     - parameter outPath: Path to save result.
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mergeAndSaveOnline(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        mergeAndSaveOnlineWithRequestBuilder(outPath, files, request, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Merges presentations or some of their slides specified in the request parameter. Result will be save in the storage.
     - PUT /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter outPath: Path to save result.
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func mergeAndSaveOnlineWithRequestBuilder(_ outPath: String, _ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "") -> RequestBuilder<Void> {
        let methodPath = "/slides/merge"
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

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     Merges presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mergeOnline(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        mergeOnlineWithRequestBuilder(files, request, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merges presentations or some of their slides specified in the request parameter. Returns result file in the response. 
     - POST /slides/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter files: Files to merge
     - parameter request: Merge request.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Data> 
     */
    open class func mergeOnlineWithRequestBuilder(_ files: [Data]? = nil, _ request: OrderedMergeRequest? = nil, _ storage: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/merge"
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

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     Merge table cells.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter tableCellMergeOptions: Merge settings.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func mergeTableCells(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ tableCellMergeOptions: TableCellMergeOptions, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Table?,_ error: Error?) -> Void)) {
        mergeTableCellsWithRequestBuilder(name, slideIndex, shapeIndex, tableCellMergeOptions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge table cells.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/mergeCells
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter tableCellMergeOptions: Merge settings.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Table> 
     */
    open class func mergeTableCellsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ tableCellMergeOptions: TableCellMergeOptions, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Table> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/mergeCells"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tableCellMergeOptions)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Table>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Move file
     - parameter srcPath: Source file path e.g. '/src.ext'
     - parameter destPath: Destination file path e.g. '/dest.ext'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to move
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFile(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFileWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName, versionId).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move file
     - PUT /slides/storage/file/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Source file path e.g. '/src.ext'
     - parameter destPath: Destination file path e.g. '/dest.ext'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter versionId: File version ID to move
     - returns: RequestBuilder<Void> 
     */
    open class func moveFileWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", _ versionId: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/file/move/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Move folder
     - parameter srcPath: Folder path to move e.g. '/folder'
     - parameter destPath: Destination folder path to move to e.g '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveFolder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        moveFolderWithRequestBuilder(srcPath, destPath, srcStorageName, destStorageName).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Move folder
     - PUT /slides/storage/folder/move/{srcPath}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter srcPath: Folder path to move e.g. '/folder'
     - parameter destPath: Destination folder path to move to e.g '/dst'
     - parameter srcStorageName: Source storage name
     - parameter destStorageName: Destination storage name
     - returns: RequestBuilder<Void> 
     */
    open class func moveFolderWithRequestBuilder(_ srcPath: String, _ destPath: String, _ srcStorageName: String = "", _ destStorageName: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/storage/folder/move/{srcPath}"
        methodPath = APIHelper.replacePathParameter(methodPath, "srcPath", srcPath)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "destPath": destPath, 
            "srcStorageName": srcStorageName, 
            "destStorageName": destStorageName
        ])

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Move presentation section to a specified position.
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be reordered.
     - parameter newPosition: The new position of the reordered section.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveSection(_ name: String, _ sectionIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        moveSectionWithRequestBuilder(name, sectionIndex, newPosition, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Move presentation section to a specified position.
     - POST /slides/{name}/sections/{sectionIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be reordered.
     - parameter newPosition: The new position of the reordered section.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func moveSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}/move"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": newPosition.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Reorder presentation slide position.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter newPosition: The new position of the reordered slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveSlide(_ name: String, _ slideIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        moveSlideWithRequestBuilder(name, slideIndex, newPosition, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slide position.
     - POST /slides/{name}/slides/{slideIndex}/move
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter newPosition: The new position of the reordered slide.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func moveSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ newPosition: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/move"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "newPosition": newPosition.encodeToJSON(), 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get info whether a notes slide exists.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func notesSlideExists(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        notesSlideExistsWithRequestBuilder(name, slideIndex, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - GET /slides/{name}/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<EntityExists> 
     */
    open class func notesSlideExistsWithRequestBuilder(_ name: String, _ slideIndex: Int, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<EntityExists> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Get info whether a notes slide exists.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func notesSlideExistsOnline(_ document: Data, _ slideIndex: Int, _ password: String = "", completion: @escaping ((_ data: EntityExists?,_ error: Error?) -> Void)) {
        notesSlideExistsOnlineWithRequestBuilder(document, slideIndex, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get info whether a notes slide exists.
     - POST /slides/slides/{slideIndex}/notesSlide/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter password: Document password.
     - returns: RequestBuilder<EntityExists> 
     */
    open class func notesSlideExistsOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ password: String = "") -> RequestBuilder<EntityExists> {
        var methodPath = "/slides/slides/{slideIndex}/notesSlide/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<EntityExists>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Check if file or folder exists
     - parameter path: File or folder path e.g. '/file.ext' or '/folder'
     - parameter storageName: Storage name
     - parameter versionId: File version ID
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func objectExists(_ path: String, _ storageName: String = "", _ versionId: String = "", completion: @escaping ((_ data: ObjectExist?,_ error: Error?) -> Void)) {
        objectExistsWithRequestBuilder(path, storageName, versionId).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if file or folder exists
     - GET /slides/storage/exist/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter path: File or folder path e.g. '/file.ext' or '/folder'
     - parameter storageName: Storage name
     - parameter versionId: File version ID
     - returns: RequestBuilder<ObjectExist> 
     */
    open class func objectExistsWithRequestBuilder(_ path: String, _ storageName: String = "", _ versionId: String = "") -> RequestBuilder<ObjectExist> {
        var methodPath = "/slides/storage/exist/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName, 
            "versionId": versionId
        ])

        let requestBuilder: RequestBuilder<ObjectExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - parameter name: Document name.
     - parameter request: OrderedMergeRequest with a list of presentations and slide indices to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func orderedMerge(_ name: String, _ request: OrderedMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        orderedMergeWithRequestBuilder(name, request, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Merge the presentation with other presentations or some of their slides specified in the request parameter.
     - PUT /slides/{name}/merge
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter request: OrderedMergeRequest with a list of presentations and slide indices to merge.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func orderedMergeWithRequestBuilder(_ name: String, _ request: OrderedMergeRequest, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/merge"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: request)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Performs slides pipeline.
     - parameter pipeline: A Pipeline object.
     - parameter files: Files to upload with the pipeline
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pipeline(_ pipeline: Pipeline, _ files: [Data]? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        pipelineWithRequestBuilder(pipeline, files).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Performs slides pipeline.
     - POST /slides/pipeline
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter pipeline: A Pipeline object.
     - parameter files: Files to upload with the pipeline
     - returns: RequestBuilder<Data> 
     */
    open class func pipelineWithRequestBuilder(_ pipeline: Pipeline, _ files: [Data]? = nil) -> RequestBuilder<Data> {
        let methodPath = "/slides/pipeline"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pipeline)


        var fileParams = [Data]()
        fileParams.removeAll()
        if files != nil {
            fileParams = files!
        }


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams)
    }
    /**
     Reorder presentation slides positions.
     - parameter name: Document name.
     - parameter oldPositions: A comma separated array of positions of slides to be reordered.
     - parameter newPositions: A comma separated array of new slide positions.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func reorderSlides(_ name: String, _ oldPositions: [Int]? = nil, _ newPositions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slides?,_ error: Error?) -> Void)) {
        reorderSlidesWithRequestBuilder(name, oldPositions, newPositions, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Reorder presentation slides positions.
     - POST /slides/{name}/slides/reorder
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter oldPositions: A comma separated array of positions of slides to be reordered.
     - parameter newPositions: A comma separated array of new slide positions.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slides> 
     */
    open class func reorderSlidesWithRequestBuilder(_ name: String, _ oldPositions: [Int]? = nil, _ newPositions: [Int]? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slides> {
        var methodPath = "/slides/{name}/slides/reorder"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldPositions": oldPositions, 
            "newPositions": newPositions, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slides>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replaces specified font and returns presentation fonts info.
     - parameter name: Document name.
     - parameter sourceFont: Source font name.
     - parameter targetFont: Target font name.
     - parameter embed: Embed target font.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceFont(_ name: String, _ sourceFont: String, _ targetFont: String, _ embed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        replaceFontWithRequestBuilder(name, sourceFont, targetFont, embed, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replaces specified font and returns presentation fonts info.
     - POST /slides/{name}/fonts/{sourceFont}/replace/{targetFont}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter sourceFont: Source font name.
     - parameter targetFont: Target font name.
     - parameter embed: Embed target font.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<FontsData> 
     */
    open class func replaceFontWithRequestBuilder(_ name: String, _ sourceFont: String, _ targetFont: String, _ embed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<FontsData> {
        var methodPath = "/slides/{name}/fonts/{sourceFont}/replace/{targetFont}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sourceFont", sourceFont)
        methodPath = APIHelper.replacePathParameter(methodPath, "targetFont", targetFont)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "embed": embed, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replaces specified font and returns presentation.
     - parameter document: Document data.
     - parameter sourceFont: Source font name.
     - parameter targetFont: Target font name.
     - parameter embed: Embed target font.
     - parameter password: Document password.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceFontOnline(_ document: Data, _ sourceFont: String, _ targetFont: String, _ embed: Bool? = nil, _ password: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replaceFontOnlineWithRequestBuilder(document, sourceFont, targetFont, embed, password, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replaces specified font and returns presentation.
     - POST /slides/fonts/{sourceFont}/replace/{targetFont}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter sourceFont: Source font name.
     - parameter targetFont: Target font name.
     - parameter embed: Embed target font.
     - parameter password: Document password.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func replaceFontOnlineWithRequestBuilder(_ document: Data, _ sourceFont: String, _ targetFont: String, _ embed: Bool? = nil, _ password: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/fonts/{sourceFont}/replace/{targetFont}"
        methodPath = APIHelper.replacePathParameter(methodPath, "sourceFont", sourceFont)
        methodPath = APIHelper.replacePathParameter(methodPath, "targetFont", targetFont)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "embed": embed, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replaces image by the specified index.
     - parameter name: Document name.
     - parameter imageIndex: Image index.
     - parameter image: Image data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceImage(_ name: String, _ imageIndex: Int, _ image: Data, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        replaceImageWithRequestBuilder(name, imageIndex, image, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Replaces image by the specified index.
     - PUT /slides/{name}/images/{imageIndex}/replace
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter imageIndex: Image index.
     - parameter image: Image data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Void> 
     */
    open class func replaceImageWithRequestBuilder(_ name: String, _ imageIndex: Int, _ image: Data, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/images/{imageIndex}/replace"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "imageIndex", imageIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(image)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replaces image by the specified index and returns updated document. 
     - parameter document: Document data.
     - parameter imageIndex: Image index.
     - parameter image: Image data.
     - parameter password: Password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceImageOnline(_ document: Data, _ imageIndex: Int, _ image: Data, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replaceImageOnlineWithRequestBuilder(document, imageIndex, image, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replaces image by the specified index and returns updated document. 
     - POST /slides/images/{imageIndex}/replace
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter imageIndex: Image index.
     - parameter image: Image data.
     - parameter password: Password.
     - returns: RequestBuilder<Data> 
     */
    open class func replaceImageOnlineWithRequestBuilder(_ document: Data, _ imageIndex: Int, _ image: Data, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/images/{imageIndex}/replace"
        methodPath = APIHelper.replacePathParameter(methodPath, "imageIndex", imageIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)
        fileParams.append(image)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replace text with a new value.
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replacePresentationText(_ name: String, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentReplaceResult?,_ error: Error?) -> Void)) {
        replacePresentationTextWithRequestBuilder(name, oldValue, newValue, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentReplaceResult> 
     */
    open class func replacePresentationTextWithRequestBuilder(_ name: String, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentReplaceResult> {
        var methodPath = "/slides/{name}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replace text with a new value.
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replacePresentationTextOnline(_ document: Data, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replacePresentationTextOnlineWithRequestBuilder(document, oldValue, newValue, ignoreCase, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func replacePresentationTextOnlineWithRequestBuilder(_ document: Data, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/replaceText"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replace text with a new value.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceSlideText(_ name: String, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideReplaceResult?,_ error: Error?) -> Void)) {
        replaceSlideTextWithRequestBuilder(name, slideIndex, oldValue, newValue, ignoreCase, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace text with a new value.
     - POST /slides/{name}/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideReplaceResult> 
     */
    open class func replaceSlideTextWithRequestBuilder(_ name: String, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideReplaceResult> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideReplaceResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Replace slide text with a new value.
     - parameter document: Document data.
     - parameter slideIndex: Index of target slide.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceSlideTextOnline(_ document: Data, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replaceSlideTextOnlineWithRequestBuilder(document, slideIndex, oldValue, newValue, ignoreCase, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace slide text with a new value.
     - POST /slides/slides/{slideIndex}/replaceText
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter slideIndex: Index of target slide.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter ignoreCase: True if character case must be ignored.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func replaceSlideTextOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ oldValue: String, _ newValue: String, _ ignoreCase: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/slides/{slideIndex}/replaceText"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "ignoreCase": ignoreCase
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Finds and replaces text in presentation with given format.
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter portionFormat: Portion format.
     - parameter withMasters: Text replacement includes master slides.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceTextFormatting(_ name: String, _ oldValue: String, _ newValue: String, _ portionFormat: PortionFormat? = nil, _ withMasters: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        replaceTextFormattingWithRequestBuilder(name, oldValue, newValue, portionFormat, withMasters, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Finds and replaces text in presentation with given format.
     - POST /slides/{name}/replaceTextFormatting
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter portionFormat: Portion format.
     - parameter withMasters: Text replacement includes master slides.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func replaceTextFormattingWithRequestBuilder(_ name: String, _ oldValue: String, _ newValue: String, _ portionFormat: PortionFormat? = nil, _ withMasters: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/replaceTextFormatting"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: portionFormat)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "withMasters": withMasters, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Finds and replaces text in presentation with given format.
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter portionFormat: Portion format.
     - parameter withMasters: Text replacement includes master slides.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func replaceTextFormattingOnline(_ document: Data, _ oldValue: String, _ newValue: String, _ portionFormat: PortionFormat? = nil, _ withMasters: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        replaceTextFormattingOnlineWithRequestBuilder(document, oldValue, newValue, portionFormat, withMasters, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Finds and replaces text in presentation with given format.
     - POST /slides/replaceTextFormatting
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter oldValue: Text value to be replaced.
     - parameter newValue: Text value to replace with.
     - parameter portionFormat: Portion format.
     - parameter withMasters: Text replacement includes master slides.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func replaceTextFormattingOnlineWithRequestBuilder(_ document: Data, _ oldValue: String, _ newValue: String, _ portionFormat: PortionFormat? = nil, _ withMasters: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/replaceTextFormatting"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: portionFormat)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "oldValue": oldValue, 
            "newValue": newValue, 
            "withMasters": withMasters
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_saveMathPortion: String { 
        case mathML = "MathML"
        case laTeX = "LaTeX"
    }

    /**
     Convert Mathematical Text to MathML Format and saves result to the storage
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter format: Format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveMathPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ format: String, _ outPath: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveMathPortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, format, outPath, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert Mathematical Text to MathML Format and saves result to the storage
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter format: Format.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - returns: RequestBuilder<Void> 
     */
    open class func saveMathPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ format: String, _ outPath: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Convert Mathematical Text to MathML Format and saves result to the storage
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func savePortionAsMathMl(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ outPath: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        savePortionAsMathMlWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, outPath, password, folder, storage).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Convert Mathematical Text to MathML Format and saves result to the storage
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/mathml
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter outPath: Path to save result.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - returns: RequestBuilder<Void> 
     */
    open class func savePortionAsMathMlWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ outPath: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}/mathml"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_savePresentation: String { 
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
    }

    /**
     Save a presentation to a specified format.
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter outPath: Output path.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be saved. If not specified, all slides are saved by default.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func savePresentation(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        savePresentationWithRequestBuilder(name, format, outPath, options, password, folder, storage, fontsFolder, slides).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a presentation to a specified format.
     - PUT /slides/{name}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter format: Export format.
     - parameter outPath: Output path.
     - parameter options: Export options.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter slides: The indices of the slides to be saved. If not specified, all slides are saved by default.
     - returns: RequestBuilder<Void> 
     */
    open class func savePresentationWithRequestBuilder(_ name: String, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ slides: [Int]? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/{format}"
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

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_saveShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_saveShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveShapeWithRequestBuilder(name, slideIndex, shapeIndex, format, outPath, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder, subShape).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Presentation name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Void> 
     */
    open class func saveShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_saveShapeOnline: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_saveShapeOnline: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Path to save result.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Fonts folder.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveShapeOnline(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: IShapeExportOptions? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveShapeOnlineWithRequestBuilder(document, slideIndex, shapeIndex, format, outPath, scaleX, scaleY, bounds, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Path to save result.
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Fonts folder.
     - parameter options: Export options.
     - returns: RequestBuilder<Void> 
     */
    open class func saveShapeOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ shapeIndex: Int, _ format: String, _ outPath: String, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: IShapeExportOptions? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/slides/{slideIndex}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_saveSlide: String { 
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
    }

    /**
     Save a slide to a specified format.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to upload the output file to.
     - parameter options: Export options.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSlide(_ name: String, _ slideIndex: Int, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSlideWithRequestBuilder(name, slideIndex, format, outPath, options, width, height, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/{name}/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to upload the output file to.
     - parameter options: Export options.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - returns: RequestBuilder<Void> 
     */
    open class func saveSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ format: String, _ outPath: String, _ options: ExportOptions? = nil, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_saveSlideOnline: String { 
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
    }

    /**
     Save a slide to a specified format.
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to save result.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSlideOnline(_ document: Data, _ slideIndex: Int, _ format: String, _ outPath: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSlideOnlineWithRequestBuilder(document, slideIndex, format, outPath, width, height, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Save a slide to a specified format.
     - PUT /slides/slides/{slideIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter document: Document data.
     - parameter slideIndex: Slide index.
     - parameter format: Output file format.
     - parameter outPath: Path to save result.
     - parameter width: The width of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter height: The height of the slide representation in the output format; 0 to not adjust the size. Default is 0.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Storage folder containing custom fonts to be used with the document.
     - parameter options: Export options.
     - returns: RequestBuilder<Void> 
     */
    open class func saveSlideOnlineWithRequestBuilder(_ document: Data, _ slideIndex: Int, _ format: String, _ outPath: String, _ width: Int? = nil, _ height: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil) -> RequestBuilder<Void> {
        var methodPath = "/slides/slides/{slideIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "width": width?.encodeToJSON(), 
            "height": height?.encodeToJSON(), 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_saveSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     * enum for parameter format
     */
    public enum Format_saveSpecialSlideShape: String { 
        case jpeg = "Jpeg"
        case png = "Png"
        case gif = "Gif"
        case bmp = "Bmp"
        case tiff = "Tiff"
        case svg = "Svg"
    }

    /**
     * enum for parameter bounds
     */
    public enum Bounds_saveSpecialSlideShape: String { 
        case slide = "Slide"
        case shape = "Shape"
        case appearance = "Appearance"
    }

    /**
     Render shape to specified picture format.
     - parameter name: Presentation name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func saveSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "", completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        saveSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, shapeIndex, format, outPath, options, scaleX, scaleY, bounds, password, folder, storage, fontsFolder, subShape).executeAuthorized { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Render shape to specified picture format.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - parameter name: Presentation name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Index of shape starting from 1
     - parameter format: Export picture format.
     - parameter outPath: Output path.
     - parameter options: export options
     - parameter scaleX: X scale ratio.
     - parameter scaleY: Y scale ratio.
     - parameter bounds: Shape thumbnail bounds type.
     - parameter password: Document password.
     - parameter folder: Presentation folder.
     - parameter storage: Presentation storage.
     - parameter fontsFolder: Fonts folder.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Void> 
     */
    open class func saveSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ format: String, _ outPath: String, _ options: IShapeExportOptions? = nil, _ scaleX: Double? = nil, _ scaleY: Double? = nil, _ bounds: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", _ subShape: String = "") -> RequestBuilder<Void> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "outPath": outPath, 
            "scaleX": scaleX, 
            "scaleY": scaleY, 
            "bounds": bounds, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set slide animation.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setAnimation(_ name: String, _ slideIndex: Int, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        setAnimationWithRequestBuilder(name, slideIndex, animation, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set slide animation.
     - PUT /slides/{name}/slides/{slideIndex}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func setAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: animation)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set background for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter background: Slide background update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setBackground(_ name: String, _ slideIndex: Int, _ background: SlideBackground, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        setBackgroundWithRequestBuilder(name, slideIndex, background, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/background
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter background: Slide background update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func setBackgroundWithRequestBuilder(_ name: String, _ slideIndex: Int, _ background: SlideBackground, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/background"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: background)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set background color for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter color: Slide background target color in RRGGBB format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setBackgroundColor(_ name: String, _ slideIndex: Int, _ color: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideBackground?,_ error: Error?) -> Void)) {
        setBackgroundColorWithRequestBuilder(name, slideIndex, color, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set background color for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/backgroundColor
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter color: Slide background target color in RRGGBB format.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideBackground> 
     */
    open class func setBackgroundColorWithRequestBuilder(_ name: String, _ slideIndex: Int, _ color: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideBackground> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/backgroundColor"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "color": color, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideBackground>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter axisType
     */
    public enum AxisType_setChartAxis: String { 
        case horizontalAxis = "HorizontalAxis"
        case verticalAxis = "VerticalAxis"
        case secondaryHorizontalAxis = "SecondaryHorizontalAxis"
        case secondaryVerticalAxis = "SecondaryVerticalAxis"
    }

    /**
     Set chart axis.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter axisType: Axis type. Horizontal, Vertical, SecondaryHorizontal or SecondaryVertical.
     - parameter axis: Axis DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setChartAxis(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ axisType: String, _ axis: Axis, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Axis?,_ error: Error?) -> Void)) {
        setChartAxisWithRequestBuilder(name, slideIndex, shapeIndex, axisType, axis, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set chart axis.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{axisType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter axisType: Axis type. Horizontal, Vertical, SecondaryHorizontal or SecondaryVertical.
     - parameter axis: Axis DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Axis> 
     */
    open class func setChartAxisWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ axisType: String, _ axis: Axis, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Axis> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{axisType}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "axisType", axisType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: axis)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Axis>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set chart axis.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter legend: Chart legend DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setChartLegend(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ legend: Legend, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Legend?,_ error: Error?) -> Void)) {
        setChartLegendWithRequestBuilder(name, slideIndex, shapeIndex, legend, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set chart axis.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/legend
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter legend: Chart legend DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Legend> 
     */
    open class func setChartLegendWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ legend: Legend, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Legend> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/legend"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: legend)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Legend>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set a series group in a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesGroupIndex: Series group index.
     - parameter seriesGroup: Series group DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setChartSeriesGroup(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesGroupIndex: Int, _ seriesGroup: ChartSeriesGroup, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        setChartSeriesGroupWithRequestBuilder(name, slideIndex, shapeIndex, seriesGroupIndex, seriesGroup, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set a series group in a chart.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/seriesGroup/{seriesGroupIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesGroupIndex: Series group index.
     - parameter seriesGroup: Series group DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func setChartSeriesGroupWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesGroupIndex: Int, _ seriesGroup: ChartSeriesGroup, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/seriesGroup/{seriesGroupIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesGroupIndex", seriesGroupIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: seriesGroup)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter chartWallType
     */
    public enum ChartWallType_setChartWall: String { 
        case floor = "Floor"
        case sideWall = "SideWall"
        case backWall = "BackWall"
    }

    /**
     Set 3D chart wall.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter chartWallType: Chart wall type: floor, sideWall or backWall.
     - parameter chartWall: Chart wall DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setChartWall(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ chartWallType: String, _ chartWall: ChartWall, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ChartWall?,_ error: Error?) -> Void)) {
        setChartWallWithRequestBuilder(name, slideIndex, shapeIndex, chartWallType, chartWall, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set 3D chart wall.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{chartWallType}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter chartWallType: Chart wall type: floor, sideWall or backWall.
     - parameter chartWall: Chart wall DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ChartWall> 
     */
    open class func setChartWallWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ chartWallType: String, _ chartWall: ChartWall, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ChartWall> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/{chartWallType}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "chartWallType", chartWallType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: chartWall)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ChartWall>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set document properties.
     - parameter name: Document name.
     - parameter properties: New properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setDocumentProperties(_ name: String, _ properties: DocumentProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperties?,_ error: Error?) -> Void)) {
        setDocumentPropertiesWithRequestBuilder(name, properties, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document properties.
     - POST /slides/{name}/documentproperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter properties: New properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperties> 
     */
    open class func setDocumentPropertiesWithRequestBuilder(_ name: String, _ properties: DocumentProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperties> {
        var methodPath = "/slides/{name}/documentproperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: properties)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set document property.
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter property: Property with the value.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setDocumentProperty(_ name: String, _ propertyName: String, _ property: DocumentProperty, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: DocumentProperty?,_ error: Error?) -> Void)) {
        setDocumentPropertyWithRequestBuilder(name, propertyName, property, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set document property.
     - PUT /slides/{name}/documentproperties/{propertyName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter propertyName: The property name.
     - parameter property: Property with the value.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<DocumentProperty> 
     */
    open class func setDocumentPropertyWithRequestBuilder(_ name: String, _ propertyName: String, _ property: DocumentProperty, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<DocumentProperty> {
        var methodPath = "/slides/{name}/documentproperties/{propertyName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "propertyName", propertyName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: property)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DocumentProperty>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Embeds specified font and returns presentation fonts info.
     - parameter name: Document name.
     - parameter fontName: Font name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setEmbeddedFont(_ name: String, _ fontName: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        setEmbeddedFontWithRequestBuilder(name, fontName, onlyUsed, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Embeds specified font and returns presentation fonts info.
     - POST /slides/{name}/fonts/embedded/{fontName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter fontName: Font name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<FontsData> 
     */
    open class func setEmbeddedFontWithRequestBuilder(_ name: String, _ fontName: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<FontsData> {
        var methodPath = "/slides/{name}/fonts/embedded/{fontName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "fontName", fontName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "onlyUsed": onlyUsed, 
            "folder": folder, 
            "storage": storage, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Embeds font from request and returns presentation fonts info.
     - parameter font: Font data.
     - parameter name: Document name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setEmbeddedFontFromRequest(_ font: Data, _ name: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: FontsData?,_ error: Error?) -> Void)) {
        setEmbeddedFontFromRequestWithRequestBuilder(font, name, onlyUsed, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Embeds font from request and returns presentation fonts info.
     - POST /slides/{name}/fonts/embedded
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter font: Font data.
     - parameter name: Document name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<FontsData> 
     */
    open class func setEmbeddedFontFromRequestWithRequestBuilder(_ font: Data, _ name: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<FontsData> {
        var methodPath = "/slides/{name}/fonts/embedded"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(font)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "onlyUsed": onlyUsed, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<FontsData>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Embeds font from request and returns presentation.
     - parameter document: Document data.
     - parameter font: Font data.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setEmbeddedFontFromRequestOnline(_ document: Data, _ font: Data, _ onlyUsed: Bool? = nil, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        setEmbeddedFontFromRequestOnlineWithRequestBuilder(document, font, onlyUsed, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Embeds font from request and returns presentation.
     - POST /slides/fonts/embedded
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter font: Font data.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func setEmbeddedFontFromRequestOnlineWithRequestBuilder(_ document: Data, _ font: Data, _ onlyUsed: Bool? = nil, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/fonts/embedded"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)
        fileParams.append(font)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "onlyUsed": onlyUsed
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Embeds specified font and returns presentation.
     - parameter document: Document data.
     - parameter fontName: Font name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setEmbeddedFontOnline(_ document: Data, _ fontName: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        setEmbeddedFontOnlineWithRequestBuilder(document, fontName, onlyUsed, password, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Embeds specified font and returns presentation.
     - POST /slides/fonts/embedded/{fontName}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter fontName: Font name.
     - parameter onlyUsed: Only used characters will be embedded.
     - parameter password: Document password.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<Data> 
     */
    open class func setEmbeddedFontOnlineWithRequestBuilder(_ document: Data, _ fontName: String, _ onlyUsed: Bool? = nil, _ password: String = "", _ fontsFolder: String = "") -> RequestBuilder<Data> {
        var methodPath = "/slides/fonts/embedded/{fontName}"
        methodPath = APIHelper.replacePathParameter(methodPath, "fontName", fontName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "onlyUsed": onlyUsed, 
            "fontsFolder": fontsFolder
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Set header/footer the notes slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Header/footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setNotesSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ dto: NotesSlideHeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlideHeaderFooter?,_ error: Error?) -> Void)) {
        setNotesSlideHeaderFooterWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set header/footer the notes slide.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: Header/footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlideHeaderFooter> 
     */
    open class func setNotesSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlideHeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlideHeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlideHeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set footers for all slides in a presentation.
     - parameter name: Document name.
     - parameter dto: HeaderFooter instance.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setPresentationHeaderFooter(_ name: String, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Document?,_ error: Error?) -> Void)) {
        setPresentationHeaderFooterWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footers for all slides in a presentation.
     - PUT /slides/{name}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter dto: HeaderFooter instance.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Document> 
     */
    open class func setPresentationHeaderFooterWithRequestBuilder(_ name: String, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Document> {
        var methodPath = "/slides/{name}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Document>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Updates presentation protection properties.
     - parameter name: Document name.
     - parameter dto: Protection properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setProtection(_ name: String, _ dto: ProtectionProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ProtectionProperties?,_ error: Error?) -> Void)) {
        setProtectionWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates presentation protection properties.
     - PUT /slides/{name}/protection
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter dto: Protection properties.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ProtectionProperties> 
     */
    open class func setProtectionWithRequestBuilder(_ name: String, _ dto: ProtectionProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ProtectionProperties> {
        var methodPath = "/slides/{name}/protection"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ProtectionProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Sets presentation protection options. 
     - parameter document: Document data.
     - parameter dto: Protection properties.
     - parameter password: Document password.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setProtectionOnline(_ document: Data, _ dto: ProtectionProperties, _ password: String = "", completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        setProtectionOnlineWithRequestBuilder(document, dto, password).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sets presentation protection options. 
     - PUT /slides/protection
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter dto: Protection properties.
     - parameter password: Document password.
     - returns: RequestBuilder<Data> 
     */
    open class func setProtectionOnlineWithRequestBuilder(_ document: Data, _ dto: ProtectionProperties, _ password: String = "") -> RequestBuilder<Data> {
        let methodPath = "/slides/protection"
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)


        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     - parameter name: Document name.
     - parameter sections: Sections DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSections(_ name: String, _ sections: Sections, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        setSectionsWithRequestBuilder(name, sections, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Replace existing presentation sections with the ones provided in the sections DTO.
     - PUT /slides/{name}/sections
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sections: Sections DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func setSectionsWithRequestBuilder(_ name: String, _ sections: Sections, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sections)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Sets geometry path to the shape
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Geometry paths DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setShapeGeometryPath(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: GeometryPaths, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        setShapeGeometryPathWithRequestBuilder(name, slideIndex, shapeIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Sets geometry path to the shape
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/geometryPath
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Geometry paths DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func setShapeGeometryPathWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: GeometryPaths, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/geometryPath"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Set footer the slide.
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter dto: Footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSlideHeaderFooter(_ name: String, _ slideIndex: Int, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: HeaderFooter?,_ error: Error?) -> Void)) {
        setSlideHeaderFooterWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set footer the slide.
     - PUT /slides/{name}/slides/{slideIndex}/headerFooter
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: The position of the slide to be reordered.
     - parameter dto: Footer to set.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<HeaderFooter> 
     */
    open class func setSlideHeaderFooterWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: HeaderFooter, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<HeaderFooter> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/headerFooter"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<HeaderFooter>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update presentation slide properties.
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSlideProperties(_ name: String, _ dto: SlideProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideProperties?,_ error: Error?) -> Void)) {
        setSlidePropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation slide properties.
     - PUT /slides/{name}/slideProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideProperties> 
     */
    open class func setSlidePropertiesWithRequestBuilder(_ name: String, _ dto: SlideProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideProperties> {
        var methodPath = "/slides/{name}/slideProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update presentation slide show properties.
     - parameter name: Document name.
     - parameter dto: The slide show properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSlideShowProperties(_ name: String, _ dto: SlideShowProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideShowProperties?,_ error: Error?) -> Void)) {
        setSlideShowPropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation slide show properties.
     - PUT /slides/{name}/slideShowProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter dto: The slide show properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideShowProperties> 
     */
    open class func setSlideShowPropertiesWithRequestBuilder(_ name: String, _ dto: SlideShowProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideShowProperties> {
        var methodPath = "/slides/{name}/slideShowProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideShowProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_setSpecialSlideAnimation: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Set special slide (master, layout, notes) animation.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setSpecialSlideAnimation(_ name: String, _ slideIndex: Int, _ slideType: String, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        setSpecialSlideAnimationWithRequestBuilder(name, slideIndex, slideType, animation, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Set special slide (master, layout, notes) animation.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/animation
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter animation: Animation DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func setSpecialSlideAnimationWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ animation: SlideAnimation, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: animation)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update presentation view properties.
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setViewProperties(_ name: String, _ dto: ViewProperties, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: ViewProperties?,_ error: Error?) -> Void)) {
        setViewPropertiesWithRequestBuilder(name, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update presentation view properties.
     - PUT /slides/{name}/viewProperties
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter dto: The view properties data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<ViewProperties> 
     */
    open class func setViewPropertiesWithRequestBuilder(_ name: String, _ dto: ViewProperties, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<ViewProperties> {
        var methodPath = "/slides/{name}/viewProperties"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ViewProperties>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_split: String { 
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
    }

    /**
     Splitting presentations. Create one image per slide.
     - parameter name: Document name.
     - parameter options: Export options.
     - parameter format: Export format. Default value is jpeg.
     - parameter width: The width of created images.
     - parameter height: The height of created images.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func split(_ name: String, _ options: ExportOptions? = nil, _ format: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "", completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        splitWithRequestBuilder(name, options, format, width, height, from, to, destFolder, password, folder, storage, fontsFolder).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splitting presentations. Create one image per slide.
     - POST /slides/{name}/split
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter options: Export options.
     - parameter format: Export format. Default value is jpeg.
     - parameter width: The width of created images.
     - parameter height: The height of created images.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to same folder as presentation.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func splitWithRequestBuilder(_ name: String, _ options: ExportOptions? = nil, _ format: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ destFolder: String = "", _ password: String = "", _ folder: String = "", _ storage: String = "", _ fontsFolder: String = "") -> RequestBuilder<SplitDocumentResult> {
        var methodPath = "/slides/{name}/split"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "format": format, 
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

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_splitAndSaveOnline: String { 
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
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func splitAndSaveOnline(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil, completion: @escaping ((_ data: SplitDocumentResult?,_ error: Error?) -> Void)) {
        splitAndSaveOnlineWithRequestBuilder(document, format, destFolder, width, height, from, to, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - PUT /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter destFolder: Folder on storage where images are going to be uploaded. If not specified then images are uploaded to the root folder.
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter options: Export options.
     - returns: RequestBuilder<SplitDocumentResult> 
     */
    open class func splitAndSaveOnlineWithRequestBuilder(_ document: Data, _ format: String, _ destFolder: String = "", _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil) -> RequestBuilder<SplitDocumentResult> {
        var methodPath = "/slides/split/{format}"
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

        let requestBuilder: RequestBuilder<SplitDocumentResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter format
     */
    public enum Format_splitOnline: String { 
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
    }

    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter options: Export options.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func splitOnline(_ document: Data, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil, completion: @escaping ((_ data: Data?,_ error: Error?) -> Void)) {
        splitOnlineWithRequestBuilder(document, format, width, height, from, to, password, storage, fontsFolder, options).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Splits PowerPoint presentation slides from the specified range into separate files and exports them in the specified file format. If the range is not provided all slides will be processed. 
     - POST /slides/split/{format}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{output=none}]
     - parameter document: Document data.
     - parameter format: ExportFormat
     - parameter width: Slide width.
     - parameter height: Slide height.
     - parameter from: The start slide number for splitting, if is not specified splitting starts from the first slide of the presentation.
     - parameter to: The last slide number for splitting, if is not specified splitting ends at the last slide of the document.
     - parameter password: Document password.
     - parameter storage: Document storage.
     - parameter fontsFolder: Custom fonts folder.
     - parameter options: Export options.
     - returns: RequestBuilder<Data> 
     */
    open class func splitOnlineWithRequestBuilder(_ document: Data, _ format: String, _ width: Int? = nil, _ height: Int? = nil, _ from: Int? = nil, _ to: Int? = nil, _ password: String = "", _ storage: String = "", _ fontsFolder: String = "", _ options: ExportOptions? = nil) -> RequestBuilder<Data> {
        var methodPath = "/slides/split/{format}"
        methodPath = APIHelper.replacePathParameter(methodPath, "format", format)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: options)


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(document)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
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

        let requestBuilder: RequestBuilder<Data>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter splitType
     */
    public enum SplitType_splitTableCell: String { 
        case splitByWidth = "SplitByWidth"
        case splitByHeight = "SplitByHeight"
        case splitByColSpan = "SplitByColSpan"
        case splitByRowSpan = "SplitByRowSpan"
    }

    /**
     Split table cell.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter splitType: Table cell split type (SplitByWidth, SplitByHeight,SplitByColSpan or SplitByRowSpan).
     - parameter value: Split value. In case of splitting by column or row span, the value must be an integer number.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func splitTableCell(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ splitType: String, _ value: Double, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Table?,_ error: Error?) -> Void)) {
        splitTableCellWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, splitType, value, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Split table cell.
     - POST /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/{splitType}/{value}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter splitType: Table cell split type (SplitByWidth, SplitByHeight,SplitByColSpan or SplitByRowSpan).
     - parameter value: Split value. In case of splitting by column or row span, the value must be an integer number.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Table> 
     */
    open class func splitTableCellWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ splitType: String, _ value: Double, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Table> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/{splitType}/{value}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "splitType", splitType)
        methodPath = APIHelper.replacePathParameter(methodPath, "value", value)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Table>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Check if storage exists
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func storageExists(_ storageName: String, completion: @escaping ((_ data: StorageExist?,_ error: Error?) -> Void)) {
        storageExistsWithRequestBuilder(storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Check if storage exists
     - GET /slides/storage/{storageName}/exist
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter storageName: Storage name
     - returns: RequestBuilder<StorageExist> 
     */
    open class func storageExistsWithRequestBuilder(_ storageName: String) -> RequestBuilder<StorageExist> {
        var methodPath = "/slides/storage/{storageName}/exist"
        methodPath = APIHelper.replacePathParameter(methodPath, "storageName", storageName)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()


        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<StorageExist>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
    /**
     Modify an animation effect for a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAnimationEffect(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateAnimationEffectWithRequestBuilder(name, slideIndex, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide.
     - PUT /slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Modify an animation effect for a slide interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, sequenceIndex, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a slide interactive sequence.
     - PUT /slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update a chart category.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartCategory(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartCategoryWithRequestBuilder(name, slideIndex, shapeIndex, categoryIndex, category, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a chart category.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter categoryIndex: Category index.
     - parameter category: Category DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartCategoryWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ categoryIndex: Int, _ category: ChartCategory, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/categories/{categoryIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "categoryIndex", categoryIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: category)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update a data point in a chart series.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartDataPoint(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartDataPointWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, pointIndex, dataPoint, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a data point in a chart series.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter seriesIndex: Series index.
     - parameter pointIndex: Data point index.
     - parameter dataPoint: Data point DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartDataPointWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ pointIndex: Int, _ dataPoint: DataPoint, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}/dataPoints/{pointIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "pointIndex", pointIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dataPoint)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update a series in a chart.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateChartSeries(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Chart?,_ error: Error?) -> Void)) {
        updateChartSeriesWithRequestBuilder(name, slideIndex, shapeIndex, seriesIndex, series, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a series in a chart.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index (must be a chart).
     - parameter seriesIndex: Series index.
     - parameter series: Series DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Chart> 
     */
    open class func updateChartSeriesWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ seriesIndex: Int, _ series: Series, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Chart> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/series/{seriesIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "seriesIndex", seriesIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: series)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Chart>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update a layoutSlide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLayoutSlide(_ name: String, _ slideIndex: Int, _ slideDto: LayoutSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: LayoutSlide?,_ error: Error?) -> Void)) {
        updateLayoutSlideWithRequestBuilder(name, slideIndex, slideDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a layoutSlide.
     - PUT /slides/{name}/layoutSlides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<LayoutSlide> 
     */
    open class func updateLayoutSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideDto: LayoutSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<LayoutSlide> {
        var methodPath = "/slides/{name}/layoutSlides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: slideDto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<LayoutSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update notes slide properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateNotesSlide(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: NotesSlide?,_ error: Error?) -> Void)) {
        updateNotesSlideWithRequestBuilder(name, slideIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update notes slide properties.
     - PUT /slides/{name}/slides/{slideIndex}/notesSlide
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter dto: A NotesSlide object with notes slide data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<NotesSlide> 
     */
    open class func updateNotesSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ dto: NotesSlide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<NotesSlide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/notesSlide"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<NotesSlide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update paragraph properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateParagraphWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update portion properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updatePortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updatePortionWithRequestBuilder(name, slideIndex, shapeIndex, paragraphIndex, portionIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func updatePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update section name.
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be updated.
     - parameter sectionName: Section name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSection(_ name: String, _ sectionIndex: Int, _ sectionName: String, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Sections?,_ error: Error?) -> Void)) {
        updateSectionWithRequestBuilder(name, sectionIndex, sectionName, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update section name.
     - PUT /slides/{name}/sections/{sectionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter sectionIndex: The position of the section to be updated.
     - parameter sectionName: Section name.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Sections> 
     */
    open class func updateSectionWithRequestBuilder(_ name: String, _ sectionIndex: Int, _ sectionName: String, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Sections> {
        var methodPath = "/slides/{name}/sections/{sectionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "sectionIndex", sectionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "sectionName": sectionName, 
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Sections>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams, headers: headerParameters)
    }
    /**
     Update shape properties.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateShape(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        updateShapeWithRequestBuilder(name, slideIndex, shapeIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func updateShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update a slide.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSlide(_ name: String, _ slideIndex: Int, _ slideDto: Slide, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Slide?,_ error: Error?) -> Void)) {
        updateSlideWithRequestBuilder(name, slideIndex, slideDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a slide.
     - PUT /slides/{name}/slides/{slideIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter slideDto: Slide update data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Slide> 
     */
    open class func updateSlideWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideDto: Slide, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Slide> {
        var methodPath = "/slides/{name}/slides/{slideIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: slideDto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Slide>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_updateSpecialSlideAnimationEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Modify an animation effect for a special slide (master, layout, notes).
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSpecialSlideAnimationEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateSpecialSlideAnimationEffectWithRequestBuilder(name, slideIndex, slideType, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a special slide (master, layout, notes).
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateSpecialSlideAnimationEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/mainSequence/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_updateSpecialSlideAnimationInteractiveSequenceEffect: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Modify an animation effect for a special slide (master, layout, notes) interactive sequence.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSpecialSlideAnimationInteractiveSequenceEffect(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: SlideAnimation?,_ error: Error?) -> Void)) {
        updateSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(name, slideIndex, slideType, sequenceIndex, effectIndex, effect, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Modify an animation effect for a special slide (master, layout, notes) interactive sequence.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter sequenceIndex: The position of the interactive sequence.
     - parameter effectIndex: The position of the effect to be modified.
     - parameter effect: Animation effect DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<SlideAnimation> 
     */
    open class func updateSpecialSlideAnimationInteractiveSequenceEffectWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ sequenceIndex: Int, _ effectIndex: Int, _ effect: Effect, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<SlideAnimation> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/animation/interactiveSequences/{sequenceIndex}/{effectIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "sequenceIndex", sequenceIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "effectIndex", effectIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: effect)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<SlideAnimation>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_updateSpecialSlideParagraph: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Update paragraph properties.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSpecialSlideParagraph(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateSpecialSlideParagraphWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update paragraph properties.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateSpecialSlideParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_updateSpecialSlidePortion: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Update portion properties.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSpecialSlidePortion(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updateSpecialSlidePortionWithRequestBuilder(name, slideIndex, slideType, shapeIndex, paragraphIndex, portionIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update portion properties.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<Portion> 
     */
    open class func updateSpecialSlidePortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     * enum for parameter slideType
     */
    public enum SlideType_updateSpecialSlideShape: String { 
        case masterSlide = "MasterSlide"
        case layoutSlide = "LayoutSlide"
        case notesSlide = "NotesSlide"
    }

    /**
     Update shape properties.
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateSpecialSlideShape(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "", completion: @escaping ((_ data: ShapeBase?,_ error: Error?) -> Void)) {
        updateSpecialSlideShapeWithRequestBuilder(name, slideIndex, slideType, shapeIndex, dto, password, folder, storage, subShape).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update shape properties.
     - PUT /slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Parent slide index.
     - parameter slideType: Slide type (master, layout or notes).
     - parameter shapeIndex: Shape index.
     - parameter dto: Shape DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter subShape: Sub-shape path (e.g. \"3\", \"3/shapes/2).
     - returns: RequestBuilder<ShapeBase> 
     */
    open class func updateSpecialSlideShapeWithRequestBuilder(_ name: String, _ slideIndex: Int, _ slideType: String, _ shapeIndex: Int, _ dto: ShapeBase, _ password: String = "", _ folder: String = "", _ storage: String = "", _ subShape: String = "") -> RequestBuilder<ShapeBase> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/{slideType}/shapes/{shapeIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideType", slideType)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage, 
            "subShape": subShape
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ShapeBase>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update the table cell.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter dto: Table cell data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTableCell(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ dto: TableCell, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TableCell?,_ error: Error?) -> Void)) {
        updateTableCellWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update the table cell.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter dto: Table cell data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TableCell> 
     */
    open class func updateTableCellWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ dto: TableCell, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TableCell> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TableCell>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Updates table cell paragraph.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTableCellParagraph(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Paragraph?,_ error: Error?) -> Void)) {
        updateTableCellParagraphWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates table cell paragraph.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter dto: Paragraph DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Paragraph> 
     */
    open class func updateTableCellParagraphWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ dto: Paragraph, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Paragraph> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Paragraph>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Updates table cell portion.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTableCellPortion(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: Portion?,_ error: Error?) -> Void)) {
        updateTableCellPortionWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, cellIndex, paragraphIndex, portionIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Updates table cell portion.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter cellIndex: Table cell index.
     - parameter paragraphIndex: Paragraph index.
     - parameter portionIndex: Portion index.
     - parameter dto: Portion DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<Portion> 
     */
    open class func updateTableCellPortionWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ cellIndex: Int, _ paragraphIndex: Int, _ portionIndex: Int, _ dto: Portion, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<Portion> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}/cells/{cellIndex}/paragraphs/{paragraphIndex}/portions/{portionIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "cellIndex", cellIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "paragraphIndex", paragraphIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "portionIndex", portionIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Portion>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update the table row.
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter dto: Table cell data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateTableRow(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ dto: TableRow, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: TableRow?,_ error: Error?) -> Void)) {
        updateTableRowWithRequestBuilder(name, slideIndex, shapeIndex, rowIndex, dto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update the table row.
     - PUT /slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter name: Document name.
     - parameter slideIndex: Slide index.
     - parameter shapeIndex: Shape index.
     - parameter rowIndex: Row index.
     - parameter dto: Table cell data.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<TableRow> 
     */
    open class func updateTableRowWithRequestBuilder(_ name: String, _ slideIndex: Int, _ shapeIndex: Int, _ rowIndex: Int, _ dto: TableRow, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<TableRow> {
        var methodPath = "/slides/{name}/slides/{slideIndex}/shapes/{shapeIndex}/rows/{rowIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "slideIndex", slideIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "shapeIndex", shapeIndex)
        methodPath = APIHelper.replacePathParameter(methodPath, "rowIndex", rowIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: dto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<TableRow>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Update VBA module.
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter moduleDto: VBA module DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateVbaModule(_ name: String, _ moduleIndex: Int, _ moduleDto: VbaModule, _ password: String = "", _ folder: String = "", _ storage: String = "", completion: @escaping ((_ data: VbaModule?,_ error: Error?) -> Void)) {
        updateVbaModuleWithRequestBuilder(name, moduleIndex, moduleDto, password, folder, storage).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update VBA module.
     - PUT /slides/{name}/vbaProject/modules/{moduleIndex}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={
  "blank": true,
  "bytes": [],
  "empty": true
}}]
     - parameter name: Document name.
     - parameter moduleIndex: The index of the macros module to remove.
     - parameter moduleDto: VBA module DTO.
     - parameter password: Document password.
     - parameter folder: Document folder.
     - parameter storage: Document storage.
     - returns: RequestBuilder<VbaModule> 
     */
    open class func updateVbaModuleWithRequestBuilder(_ name: String, _ moduleIndex: Int, _ moduleDto: VbaModule, _ password: String = "", _ folder: String = "", _ storage: String = "") -> RequestBuilder<VbaModule> {
        var methodPath = "/slides/{name}/vbaProject/modules/{moduleIndex}"
        methodPath = APIHelper.replacePathParameter(methodPath, "name", name)
        methodPath = APIHelper.replacePathParameter(methodPath, "moduleIndex", moduleIndex)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: moduleDto)


        var fileParams = [Data]()
        fileParams.removeAll()

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "folder": folder, 
            "storage": storage
        ])
        let nillableHeaders: [String: Any?] = [
            "password": password
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<VbaModule>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, files: fileParams, headers: headerParameters)
    }
    /**
     Upload file
     - parameter path: Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
     - parameter file: File to upload
     - parameter storageName: Storage name
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFile(_ path: String, _ file: Data, _ storageName: String = "", completion: @escaping ((_ data: FilesUploadResult?,_ error: Error?) -> Void)) {
        uploadFileWithRequestBuilder(path, file, storageName).executeAuthorized { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload file
     - PUT /slides/storage/file/{path}
     - OAuth:
       - type: oauth2
       - name: JWT
     - examples: [{contentType=application/json, example={"empty": false}}]
     - parameter path: Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
     - parameter file: File to upload
     - parameter storageName: Storage name
     - returns: RequestBuilder<FilesUploadResult> 
     */
    open class func uploadFileWithRequestBuilder(_ path: String, _ file: Data, _ storageName: String = "") -> RequestBuilder<FilesUploadResult> {
        var methodPath = "/slides/storage/file/{path}"
        methodPath = APIHelper.replacePathParameter(methodPath, "path", path)
        let URLString = AsposeSlidesCloudAPI.getBaseUrl() + methodPath
        let parameters: [String:Any]? = nil


        var fileParams = [Data]()
        fileParams.removeAll()
        fileParams.append(file)

        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "storageName": storageName
        ])

        let requestBuilder: RequestBuilder<FilesUploadResult>.Type = AsposeSlidesCloudAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, files: fileParams)
    }
}
