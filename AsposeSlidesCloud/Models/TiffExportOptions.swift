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


/** Provides options that control how a presentation is saved in TIFF format. */
public class TiffExportOptions: ImageExportOptionsBase {

    public enum Compression: String, Codable { 
        case _default = "Default"
        case _none = "None"
        case ccitt3 = "CCITT3"
        case ccitt4 = "CCITT4"
        case lzw = "LZW"
        case rle = "RLE"
    }
    public enum PixelFormat: String, Codable { 
        case format1bppIndexed = "Format1bppIndexed"
        case format4bppIndexed = "Format4bppIndexed"
        case format8bppIndexed = "Format8bppIndexed"
        case format24bppRgb = "Format24bppRgb"
        case format32bppArgb = "Format32bppArgb"
    }
    public enum BwConversionMode: String, Codable { 
        case _default = "Default"
        case dithering = "Dithering"
        case ditheringFloydSteinberg = "DitheringFloydSteinberg"
        case auto = "Auto"
        case autoOtsu = "AutoOtsu"
        case threshold25 = "Threshold25"
        case threshold50 = "Threshold50"
        case threshold75 = "Threshold75"
    }
    /** Compression type. */
    public var compression: Compression?
    /** Horizontal resolution, in dots per inch. */
    public var dpiX: Int?
    /** Vertical resolution, in dots per inch. */
    public var dpiY: Int?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies the pixel format for the generated images. Read/write ImagePixelFormat. */
    public var pixelFormat: PixelFormat?
    /** Slides layouting options */
    public var slidesLayoutOptions: SlidesLayoutOptions?
    /** Specifies the algorithm for converting a color image into a black and white image. This option will applied only if Aspose.Slides.Export.TiffOptions.CompressionType is set to Aspose.Slides.Export.TiffCompressionTypes.CCITT4 or Aspose.Slides.Export.TiffCompressionTypes.CCITT3. */
    public var bwConversionMode: BwConversionMode?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let compressionValue = source["compression"] ?? source["Compression"]
        if compressionValue != nil {
            let compressionStringValue = compressionValue! as? String
            if compressionStringValue != nil {
                let compressionEnumValue = Compression(rawValue: compressionStringValue!)
                if compressionEnumValue != nil {
                    self.compression = compressionEnumValue!
                }
            }
        }
        let dpiXValue = source["dpiX"] ?? source["DpiX"]
        if dpiXValue != nil {
            self.dpiX = dpiXValue! as? Int
        }
        let dpiYValue = source["dpiY"] ?? source["DpiY"]
        if dpiYValue != nil {
            self.dpiY = dpiYValue! as? Int
        }
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
        let pixelFormatValue = source["pixelFormat"] ?? source["PixelFormat"]
        if pixelFormatValue != nil {
            let pixelFormatStringValue = pixelFormatValue! as? String
            if pixelFormatStringValue != nil {
                let pixelFormatEnumValue = PixelFormat(rawValue: pixelFormatStringValue!)
                if pixelFormatEnumValue != nil {
                    self.pixelFormat = pixelFormatEnumValue!
                }
            }
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
        let bwConversionModeValue = source["bwConversionMode"] ?? source["BwConversionMode"]
        if bwConversionModeValue != nil {
            let bwConversionModeStringValue = bwConversionModeValue! as? String
            if bwConversionModeStringValue != nil {
                let bwConversionModeEnumValue = BwConversionMode(rawValue: bwConversionModeStringValue!)
                if bwConversionModeEnumValue != nil {
                    self.bwConversionMode = bwConversionModeEnumValue!
                }
            }
        }
    }

    public init(defaultRegularFont: String? = nil, deleteEmbeddedBinaryObjects: Bool? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, skipJavaScriptLinks: Bool? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil, compression: Compression? = nil, dpiX: Int? = nil, dpiY: Int? = nil, showHiddenSlides: Bool? = nil, pixelFormat: PixelFormat? = nil, slidesLayoutOptions: SlidesLayoutOptions? = nil, bwConversionMode: BwConversionMode? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, deleteEmbeddedBinaryObjects: deleteEmbeddedBinaryObjects, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, skipJavaScriptLinks: skipJavaScriptLinks, format: format, height: height, width: width)
        self.compression = compression
        self.dpiX = dpiX
        self.dpiY = dpiY
        self.showHiddenSlides = showHiddenSlides
        self.pixelFormat = pixelFormat
        self.slidesLayoutOptions = slidesLayoutOptions
        self.bwConversionMode = bwConversionMode
        self.format = "tiff"
    }

    private enum CodingKeys: String, CodingKey {
        case compression
        case dpiX
        case dpiY
        case showHiddenSlides
        case pixelFormat
        case slidesLayoutOptions
        case bwConversionMode
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        compression = try? values.decode(Compression.self, forKey: .compression)
        dpiX = try? values.decode(Int.self, forKey: .dpiX)
        dpiY = try? values.decode(Int.self, forKey: .dpiY)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        pixelFormat = try? values.decode(PixelFormat.self, forKey: .pixelFormat)
        slidesLayoutOptions = try? values.decode(SlidesLayoutOptions.self, forKey: .slidesLayoutOptions)
        bwConversionMode = try? values.decode(BwConversionMode.self, forKey: .bwConversionMode)
        self.format = "tiff"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (compression != nil) {
            try? container.encode(compression, forKey: .compression)
        }
        if (dpiX != nil) {
            try? container.encode(dpiX, forKey: .dpiX)
        }
        if (dpiY != nil) {
            try? container.encode(dpiY, forKey: .dpiY)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (pixelFormat != nil) {
            try? container.encode(pixelFormat, forKey: .pixelFormat)
        }
        if (slidesLayoutOptions != nil) {
            try? container.encode(slidesLayoutOptions, forKey: .slidesLayoutOptions)
        }
        if (bwConversionMode != nil) {
            try? container.encode(bwConversionMode, forKey: .bwConversionMode)
        }
    }

}

