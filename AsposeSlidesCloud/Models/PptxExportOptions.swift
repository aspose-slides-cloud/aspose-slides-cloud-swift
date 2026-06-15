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


/** Provides options that control how a presentation is saved in PPTX format. */
public class PptxExportOptions: ExportOptions {

    public enum Conformance: String, Codable { 
        case ecma376 = "Ecma376"
        case iso29500Transitional = "Iso29500Transitional"
        case iso29500Strict = "Iso29500Strict"
    }
    public enum Zip64Mode: String, Codable { 
        case never = "Never"
        case ifNecessary = "IfNecessary"
        case always = "Always"
    }
    public enum CompressionLevel: String, Codable { 
        case _none = "None"
        case level1 = "Level1"
        case level2 = "Level2"
        case level3 = "Level3"
        case level4 = "Level4"
        case level5 = "Level5"
        case level6 = "Level6"
        case level7 = "Level7"
        case level8 = "Level8"
        case level9 = "Level9"
    }
    /** The conformance class to which the PresentationML document conforms. */
    public var conformance: Conformance?
    /** Specifies whether the ZIP64 format is used for the Presentation document. The default value is Zip64Mode.IfNecessary. */
    public var zip64Mode: Zip64Mode?
    /** The compression level used when saving the presentation document. Higher compression levels produce smaller files but require more processing time. The actual compression ratio depends on the content of the presentation. The default value is CompressionLevel.Level6. */
    public var compressionLevel: CompressionLevel?
    /** True to refresh the presentation thumbnail on save */
    public var refreshThumbnail: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let conformanceValue = source["conformance"] ?? source["Conformance"]
        if conformanceValue != nil {
            let conformanceStringValue = conformanceValue! as? String
            if conformanceStringValue != nil {
                let conformanceEnumValue = Conformance(rawValue: conformanceStringValue!)
                if conformanceEnumValue != nil {
                    self.conformance = conformanceEnumValue!
                }
            }
        }
        let zip64ModeValue = source["zip64Mode"] ?? source["Zip64Mode"]
        if zip64ModeValue != nil {
            let zip64ModeStringValue = zip64ModeValue! as? String
            if zip64ModeStringValue != nil {
                let zip64ModeEnumValue = Zip64Mode(rawValue: zip64ModeStringValue!)
                if zip64ModeEnumValue != nil {
                    self.zip64Mode = zip64ModeEnumValue!
                }
            }
        }
        let compressionLevelValue = source["compressionLevel"] ?? source["CompressionLevel"]
        if compressionLevelValue != nil {
            let compressionLevelStringValue = compressionLevelValue! as? String
            if compressionLevelStringValue != nil {
                let compressionLevelEnumValue = CompressionLevel(rawValue: compressionLevelStringValue!)
                if compressionLevelEnumValue != nil {
                    self.compressionLevel = compressionLevelEnumValue!
                }
            }
        }
        let refreshThumbnailValue = source["refreshThumbnail"] ?? source["RefreshThumbnail"]
        if refreshThumbnailValue != nil {
            self.refreshThumbnail = refreshThumbnailValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, deleteEmbeddedBinaryObjects: Bool? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, skipJavaScriptLinks: Bool? = nil, format: String? = nil, conformance: Conformance? = nil, zip64Mode: Zip64Mode? = nil, compressionLevel: CompressionLevel? = nil, refreshThumbnail: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, deleteEmbeddedBinaryObjects: deleteEmbeddedBinaryObjects, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, skipJavaScriptLinks: skipJavaScriptLinks, format: format)
        self.conformance = conformance
        self.zip64Mode = zip64Mode
        self.compressionLevel = compressionLevel
        self.refreshThumbnail = refreshThumbnail
        self.format = "pptx"
    }

    private enum CodingKeys: String, CodingKey {
        case conformance
        case zip64Mode
        case compressionLevel
        case refreshThumbnail
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        conformance = try? values.decode(Conformance.self, forKey: .conformance)
        zip64Mode = try? values.decode(Zip64Mode.self, forKey: .zip64Mode)
        compressionLevel = try? values.decode(CompressionLevel.self, forKey: .compressionLevel)
        refreshThumbnail = try? values.decode(Bool.self, forKey: .refreshThumbnail)
        self.format = "pptx"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (conformance != nil) {
            try? container.encode(conformance, forKey: .conformance)
        }
        if (zip64Mode != nil) {
            try? container.encode(zip64Mode, forKey: .zip64Mode)
        }
        if (compressionLevel != nil) {
            try? container.encode(compressionLevel, forKey: .compressionLevel)
        }
        if (refreshThumbnail != nil) {
            try? container.encode(refreshThumbnail, forKey: .refreshThumbnail)
        }
    }

}

