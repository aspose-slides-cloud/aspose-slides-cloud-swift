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


/** Provides options that control how a presentation is saved in Pdf format. */
public class PdfExportOptions: ExportOptions {

    public enum TextCompression: String, Codable { 
        case _none = "None"
        case flate = "Flate"
    }
    public enum Compliance: String, Codable { 
        case pdf15 = "Pdf15"
        case pdf16 = "Pdf16"
        case pdf17 = "Pdf17"
        case pdfA1b = "PdfA1b"
        case pdfA1a = "PdfA1a"
        case pdfA2b = "PdfA2b"
        case pdfA2a = "PdfA2a"
        case pdfA3b = "PdfA3b"
        case pdfA3a = "PdfA3a"
        case pdfUa = "PdfUa"
        case pdfA2u = "PdfA2u"
    }
    /** Specifies compression type to be used for all textual content in the document. */
    public var textCompression: TextCompression?
    /** Determines if all characters of font should be embedded or only used subset. */
    public var embedFullFonts: Bool?
    /** Desired conformance level for generated PDF document. */
    public var compliance: Compliance?
    /** Returns or sets a value determining resolution of images inside PDF document.  Property affects on file size, time of export and image quality. The default value is 96. */
    public var sufficientResolution: Double?
    /** Returns or sets a value determining the quality of the JPEG images inside PDF document. */
    public var jpegQuality: Int?
    /** True to draw black frame around each slide. */
    public var drawSlidesFrame: Bool?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** True to convert all metafiles used in a presentation to the PNG images. */
    public var saveMetafilesAsPng: Bool?
    /** Setting user password to protect the PDF document.  */
    public var password: String?
    /** Determines if Aspose.Slides will embed common fonts for ASCII (33..127 code range) text. Fonts for character codes greater than 127 are always embedded. Common fonts list includes PDF&#39;s base 14 fonts and additional user specified fonts. */
    public var embedTrueTypeFontsForASCII: Bool?
    /** Returns or sets an array of user-defined names of font families which Aspose.Slides should consider common. */
    public var additionalCommonFontFamilies: [String]?
    /** Slides layouting options */
    public var slidesLayoutOptions: SlidesLayoutOptions?
    /** Image transparent color. */
    public var imageTransparentColor: String?
    /** True to apply specified ImageTransparentColor  to an image. */
    public var applyImageTransparent: Bool?
    /** Access permissions that should be granted when the document is opened with user access.  Default is AccessPermissions.None.              */
    public var accessPermissions: AccessPermissions?
    /** True to hide Ink elements in exported document. */
    public var hideInk: Bool?
    /** True to use ROP operation or Opacity for rendering brush. */
    public var interpretMaskOpAsOpacity: Bool?
    /** True if text should be rasterized as a bitmap and saved to PDF when the font does not support bold styling. This approach can enhance the quality of text in the resulting PDF for certain fonts. */
    public var rasterizeUnsupportedFontStyles: Bool?
    /** True to convert all OLE data from the presentation to embedded files in the resulting PDF. */
    public var includeOleData: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let textCompressionValue = source["textCompression"] ?? source["TextCompression"]
        if textCompressionValue != nil {
            let textCompressionStringValue = textCompressionValue! as? String
            if textCompressionStringValue != nil {
                let textCompressionEnumValue = TextCompression(rawValue: textCompressionStringValue!)
                if textCompressionEnumValue != nil {
                    self.textCompression = textCompressionEnumValue!
                }
            }
        }
        let embedFullFontsValue = source["embedFullFonts"] ?? source["EmbedFullFonts"]
        if embedFullFontsValue != nil {
            self.embedFullFonts = embedFullFontsValue! as? Bool
        }
        let complianceValue = source["compliance"] ?? source["Compliance"]
        if complianceValue != nil {
            let complianceStringValue = complianceValue! as? String
            if complianceStringValue != nil {
                let complianceEnumValue = Compliance(rawValue: complianceStringValue!)
                if complianceEnumValue != nil {
                    self.compliance = complianceEnumValue!
                }
            }
        }
        let sufficientResolutionValue = source["sufficientResolution"] ?? source["SufficientResolution"]
        if sufficientResolutionValue != nil {
            self.sufficientResolution = sufficientResolutionValue! as? Double
        }
        let jpegQualityValue = source["jpegQuality"] ?? source["JpegQuality"]
        if jpegQualityValue != nil {
            self.jpegQuality = jpegQualityValue! as? Int
        }
        let drawSlidesFrameValue = source["drawSlidesFrame"] ?? source["DrawSlidesFrame"]
        if drawSlidesFrameValue != nil {
            self.drawSlidesFrame = drawSlidesFrameValue! as? Bool
        }
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let saveMetafilesAsPngValue = source["saveMetafilesAsPng"] ?? source["SaveMetafilesAsPng"]
        if saveMetafilesAsPngValue != nil {
            self.saveMetafilesAsPng = saveMetafilesAsPngValue! as? Bool
        }
        let passwordValue = source["password"] ?? source["Password"]
        if passwordValue != nil {
            self.password = passwordValue! as? String
        }
        let embedTrueTypeFontsForASCIIValue = source["embedTrueTypeFontsForASCII"] ?? source["EmbedTrueTypeFontsForASCII"]
        if embedTrueTypeFontsForASCIIValue != nil {
            self.embedTrueTypeFontsForASCII = embedTrueTypeFontsForASCIIValue! as? Bool
        }
        let additionalCommonFontFamiliesValue = source["additionalCommonFontFamilies"] ?? source["AdditionalCommonFontFamilies"]
        if additionalCommonFontFamiliesValue != nil {
            self.additionalCommonFontFamilies = additionalCommonFontFamiliesValue! as? [String]
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
        let imageTransparentColorValue = source["imageTransparentColor"] ?? source["ImageTransparentColor"]
        if imageTransparentColorValue != nil {
            self.imageTransparentColor = imageTransparentColorValue! as? String
        }
        let applyImageTransparentValue = source["applyImageTransparent"] ?? source["ApplyImageTransparent"]
        if applyImageTransparentValue != nil {
            self.applyImageTransparent = applyImageTransparentValue! as? Bool
        }
        let accessPermissionsValue = source["accessPermissions"] ?? source["AccessPermissions"]
        if accessPermissionsValue != nil {
            let accessPermissionsDictionaryValue = accessPermissionsValue! as? [String:Any]
            if accessPermissionsDictionaryValue != nil {
                let (accessPermissionsInstance, error) = ClassRegistry.getClassFromDictionary(AccessPermissions.self, accessPermissionsDictionaryValue!)
                if error == nil && accessPermissionsInstance != nil {
                    self.accessPermissions = accessPermissionsInstance! as? AccessPermissions
                }
            }
        }
        let hideInkValue = source["hideInk"] ?? source["HideInk"]
        if hideInkValue != nil {
            self.hideInk = hideInkValue! as? Bool
        }
        let interpretMaskOpAsOpacityValue = source["interpretMaskOpAsOpacity"] ?? source["InterpretMaskOpAsOpacity"]
        if interpretMaskOpAsOpacityValue != nil {
            self.interpretMaskOpAsOpacity = interpretMaskOpAsOpacityValue! as? Bool
        }
        let rasterizeUnsupportedFontStylesValue = source["rasterizeUnsupportedFontStyles"] ?? source["RasterizeUnsupportedFontStyles"]
        if rasterizeUnsupportedFontStylesValue != nil {
            self.rasterizeUnsupportedFontStyles = rasterizeUnsupportedFontStylesValue! as? Bool
        }
        let includeOleDataValue = source["includeOleData"] ?? source["IncludeOleData"]
        if includeOleDataValue != nil {
            self.includeOleData = includeOleDataValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, deleteEmbeddedBinaryObjects: Bool? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, textCompression: TextCompression? = nil, embedFullFonts: Bool? = nil, compliance: Compliance? = nil, sufficientResolution: Double? = nil, jpegQuality: Int? = nil, drawSlidesFrame: Bool? = nil, showHiddenSlides: Bool? = nil, saveMetafilesAsPng: Bool? = nil, password: String? = nil, embedTrueTypeFontsForASCII: Bool? = nil, additionalCommonFontFamilies: [String]? = nil, slidesLayoutOptions: SlidesLayoutOptions? = nil, imageTransparentColor: String? = nil, applyImageTransparent: Bool? = nil, accessPermissions: AccessPermissions? = nil, hideInk: Bool? = nil, interpretMaskOpAsOpacity: Bool? = nil, rasterizeUnsupportedFontStyles: Bool? = nil, includeOleData: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, deleteEmbeddedBinaryObjects: deleteEmbeddedBinaryObjects, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.textCompression = textCompression
        self.embedFullFonts = embedFullFonts
        self.compliance = compliance
        self.sufficientResolution = sufficientResolution
        self.jpegQuality = jpegQuality
        self.drawSlidesFrame = drawSlidesFrame
        self.showHiddenSlides = showHiddenSlides
        self.saveMetafilesAsPng = saveMetafilesAsPng
        self.password = password
        self.embedTrueTypeFontsForASCII = embedTrueTypeFontsForASCII
        self.additionalCommonFontFamilies = additionalCommonFontFamilies
        self.slidesLayoutOptions = slidesLayoutOptions
        self.imageTransparentColor = imageTransparentColor
        self.applyImageTransparent = applyImageTransparent
        self.accessPermissions = accessPermissions
        self.hideInk = hideInk
        self.interpretMaskOpAsOpacity = interpretMaskOpAsOpacity
        self.rasterizeUnsupportedFontStyles = rasterizeUnsupportedFontStyles
        self.includeOleData = includeOleData
        self.format = "pdf"
    }

    private enum CodingKeys: String, CodingKey {
        case textCompression
        case embedFullFonts
        case compliance
        case sufficientResolution
        case jpegQuality
        case drawSlidesFrame
        case showHiddenSlides
        case saveMetafilesAsPng
        case password
        case embedTrueTypeFontsForASCII
        case additionalCommonFontFamilies
        case slidesLayoutOptions
        case imageTransparentColor
        case applyImageTransparent
        case accessPermissions
        case hideInk
        case interpretMaskOpAsOpacity
        case rasterizeUnsupportedFontStyles
        case includeOleData
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        textCompression = try? values.decode(TextCompression.self, forKey: .textCompression)
        embedFullFonts = try? values.decode(Bool.self, forKey: .embedFullFonts)
        compliance = try? values.decode(Compliance.self, forKey: .compliance)
        sufficientResolution = try? values.decode(Double.self, forKey: .sufficientResolution)
        jpegQuality = try? values.decode(Int.self, forKey: .jpegQuality)
        drawSlidesFrame = try? values.decode(Bool.self, forKey: .drawSlidesFrame)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        saveMetafilesAsPng = try? values.decode(Bool.self, forKey: .saveMetafilesAsPng)
        password = try? values.decode(String.self, forKey: .password)
        embedTrueTypeFontsForASCII = try? values.decode(Bool.self, forKey: .embedTrueTypeFontsForASCII)
        additionalCommonFontFamilies = try? values.decode([String].self, forKey: .additionalCommonFontFamilies)
        slidesLayoutOptions = try? values.decode(SlidesLayoutOptions.self, forKey: .slidesLayoutOptions)
        imageTransparentColor = try? values.decode(String.self, forKey: .imageTransparentColor)
        applyImageTransparent = try? values.decode(Bool.self, forKey: .applyImageTransparent)
        accessPermissions = try? values.decode(AccessPermissions.self, forKey: .accessPermissions)
        hideInk = try? values.decode(Bool.self, forKey: .hideInk)
        interpretMaskOpAsOpacity = try? values.decode(Bool.self, forKey: .interpretMaskOpAsOpacity)
        rasterizeUnsupportedFontStyles = try? values.decode(Bool.self, forKey: .rasterizeUnsupportedFontStyles)
        includeOleData = try? values.decode(Bool.self, forKey: .includeOleData)
        self.format = "pdf"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (textCompression != nil) {
            try? container.encode(textCompression, forKey: .textCompression)
        }
        if (embedFullFonts != nil) {
            try? container.encode(embedFullFonts, forKey: .embedFullFonts)
        }
        if (compliance != nil) {
            try? container.encode(compliance, forKey: .compliance)
        }
        if (sufficientResolution != nil) {
            try? container.encode(sufficientResolution, forKey: .sufficientResolution)
        }
        if (jpegQuality != nil) {
            try? container.encode(jpegQuality, forKey: .jpegQuality)
        }
        if (drawSlidesFrame != nil) {
            try? container.encode(drawSlidesFrame, forKey: .drawSlidesFrame)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (saveMetafilesAsPng != nil) {
            try? container.encode(saveMetafilesAsPng, forKey: .saveMetafilesAsPng)
        }
        if (password != nil) {
            try? container.encode(password, forKey: .password)
        }
        if (embedTrueTypeFontsForASCII != nil) {
            try? container.encode(embedTrueTypeFontsForASCII, forKey: .embedTrueTypeFontsForASCII)
        }
        if (additionalCommonFontFamilies != nil) {
            try? container.encode(additionalCommonFontFamilies, forKey: .additionalCommonFontFamilies)
        }
        if (slidesLayoutOptions != nil) {
            try? container.encode(slidesLayoutOptions, forKey: .slidesLayoutOptions)
        }
        if (imageTransparentColor != nil) {
            try? container.encode(imageTransparentColor, forKey: .imageTransparentColor)
        }
        if (applyImageTransparent != nil) {
            try? container.encode(applyImageTransparent, forKey: .applyImageTransparent)
        }
        if (accessPermissions != nil) {
            try? container.encode(accessPermissions, forKey: .accessPermissions)
        }
        if (hideInk != nil) {
            try? container.encode(hideInk, forKey: .hideInk)
        }
        if (interpretMaskOpAsOpacity != nil) {
            try? container.encode(interpretMaskOpAsOpacity, forKey: .interpretMaskOpAsOpacity)
        }
        if (rasterizeUnsupportedFontStyles != nil) {
            try? container.encode(rasterizeUnsupportedFontStyles, forKey: .rasterizeUnsupportedFontStyles)
        }
        if (includeOleData != nil) {
            try? container.encode(includeOleData, forKey: .includeOleData)
        }
    }

}

