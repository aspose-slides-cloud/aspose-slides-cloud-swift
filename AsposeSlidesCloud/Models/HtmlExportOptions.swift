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


/** Provides options that control how a presentation is saved in Html format. */
public class HtmlExportOptions: ExportOptions {

    public enum PicturesCompression: String, Codable { 
        case dpi330 = "Dpi330"
        case dpi220 = "Dpi220"
        case dpi150 = "Dpi150"
        case dpi96 = "Dpi96"
        case dpi72 = "Dpi72"
        case documentResolution = "DocumentResolution"
    }
    /** Get or sets flag for save presentation as zip file */
    public var saveAsZip: Bool?
    /** Get or set name of subdirectory in zip-file for store external files */
    public var subDirectoryName: String?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to make layout responsive by excluding width and height attributes from svg container. */
    public var svgResponsiveLayout: Bool?
    /** Returns or sets a value determining the quality of the JPEG images inside PDF document. */
    public var jpegQuality: Int?
    /** Represents the pictures compression level */
    public var picturesCompression: PicturesCompression?
    /** A boolean flag indicates if the cropped parts remain as part of the document. If true the cropped  parts will removed, if false they will be serialized in the document (which can possible lead to a  larger file) */
    public var deletePicturesCroppedAreas: Bool?
    /** Slides layouting options */
    public var slidesLayoutOptions: SlidesLayoutOptions?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let saveAsZipValue = source["saveAsZip"] ?? source["SaveAsZip"]
        if saveAsZipValue != nil {
            self.saveAsZip = saveAsZipValue! as? Bool
        }
        let subDirectoryNameValue = source["subDirectoryName"] ?? source["SubDirectoryName"]
        if subDirectoryNameValue != nil {
            self.subDirectoryName = subDirectoryNameValue! as? String
        }
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let svgResponsiveLayoutValue = source["svgResponsiveLayout"] ?? source["SvgResponsiveLayout"]
        if svgResponsiveLayoutValue != nil {
            self.svgResponsiveLayout = svgResponsiveLayoutValue! as? Bool
        }
        let jpegQualityValue = source["jpegQuality"] ?? source["JpegQuality"]
        if jpegQualityValue != nil {
            self.jpegQuality = jpegQualityValue! as? Int
        }
        let picturesCompressionValue = source["picturesCompression"] ?? source["PicturesCompression"]
        if picturesCompressionValue != nil {
            let picturesCompressionStringValue = picturesCompressionValue! as? String
            if picturesCompressionStringValue != nil {
                let picturesCompressionEnumValue = PicturesCompression(rawValue: picturesCompressionStringValue!)
                if picturesCompressionEnumValue != nil {
                    self.picturesCompression = picturesCompressionEnumValue!
                }
            }
        }
        let deletePicturesCroppedAreasValue = source["deletePicturesCroppedAreas"] ?? source["DeletePicturesCroppedAreas"]
        if deletePicturesCroppedAreasValue != nil {
            self.deletePicturesCroppedAreas = deletePicturesCroppedAreasValue! as? Bool
        }
        let slidesLayoutOptionsValue = source["slidesLayoutOptions"] ?? source["SlidesLayoutOptions"]
        if slidesLayoutOptionsValue != nil {
            let slidesLayoutOptionsDictionaryValue = slidesLayoutOptionsValue! as? [String:Any]
            if slidesLayoutOptionsDictionaryValue != nil {
                let (slidesLayoutOptionsInstance, error) = ClassRegistry.getClassFromDictionary(SlidesLayoutOptions.self, slidesLayoutOptionsDictionaryValue!)
                if error == nil && slidesLayoutOptionsInstance != nil {
                    self.slidesLayoutOptions = slidesLayoutOptionsInstance! as? SlidesLayoutOptions
                }
            }
        }
    }

    public init(defaultRegularFont: String? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, saveAsZip: Bool? = nil, subDirectoryName: String? = nil, showHiddenSlides: Bool? = nil, svgResponsiveLayout: Bool? = nil, jpegQuality: Int? = nil, picturesCompression: PicturesCompression? = nil, deletePicturesCroppedAreas: Bool? = nil, slidesLayoutOptions: SlidesLayoutOptions? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.saveAsZip = saveAsZip
        self.subDirectoryName = subDirectoryName
        self.showHiddenSlides = showHiddenSlides
        self.svgResponsiveLayout = svgResponsiveLayout
        self.jpegQuality = jpegQuality
        self.picturesCompression = picturesCompression
        self.deletePicturesCroppedAreas = deletePicturesCroppedAreas
        self.slidesLayoutOptions = slidesLayoutOptions
        self.format = "html"
    }

    private enum CodingKeys: String, CodingKey {
        case saveAsZip
        case subDirectoryName
        case showHiddenSlides
        case svgResponsiveLayout
        case jpegQuality
        case picturesCompression
        case deletePicturesCroppedAreas
        case slidesLayoutOptions
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        saveAsZip = try? values.decode(Bool.self, forKey: .saveAsZip)
        subDirectoryName = try? values.decode(String.self, forKey: .subDirectoryName)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        svgResponsiveLayout = try? values.decode(Bool.self, forKey: .svgResponsiveLayout)
        jpegQuality = try? values.decode(Int.self, forKey: .jpegQuality)
        picturesCompression = try? values.decode(PicturesCompression.self, forKey: .picturesCompression)
        deletePicturesCroppedAreas = try? values.decode(Bool.self, forKey: .deletePicturesCroppedAreas)
        slidesLayoutOptions = try? values.decode(SlidesLayoutOptions.self, forKey: .slidesLayoutOptions)
        self.format = "html"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (saveAsZip != nil) {
            try? container.encode(saveAsZip, forKey: .saveAsZip)
        }
        if (subDirectoryName != nil) {
            try? container.encode(subDirectoryName, forKey: .subDirectoryName)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (svgResponsiveLayout != nil) {
            try? container.encode(svgResponsiveLayout, forKey: .svgResponsiveLayout)
        }
        if (jpegQuality != nil) {
            try? container.encode(jpegQuality, forKey: .jpegQuality)
        }
        if (picturesCompression != nil) {
            try? container.encode(picturesCompression, forKey: .picturesCompression)
        }
        if (deletePicturesCroppedAreas != nil) {
            try? container.encode(deletePicturesCroppedAreas, forKey: .deletePicturesCroppedAreas)
        }
        if (slidesLayoutOptions != nil) {
            try? container.encode(slidesLayoutOptions, forKey: .slidesLayoutOptions)
        }
    }

}

