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


/** Provides options that control how a presentation is saved in Html5 format. */
public class MarkdownExportOptions: ExportOptions {

    public enum ExportType: String, Codable { 
        case sequential = "Sequential"
        case textOnly = "TextOnly"
        case visual = "Visual"
    }
    public enum Flavor: String, Codable { 
        case github = "Github"
        case gruber = "Gruber"
        case multiMarkdown = "MultiMarkdown"
        case commonMark = "CommonMark"
        case markdownExtra = "MarkdownExtra"
        case pandoc = "Pandoc"
        case kramdown = "Kramdown"
        case markua = "Markua"
        case maruku = "Maruku"
        case markdown2 = "Markdown2"
        case remarkable = "Remarkable"
        case showdown = "Showdown"
        case ghost = "Ghost"
        case gitLab = "GitLab"
        case haroopad = "Haroopad"
        case iaWriter = "IaWriter"
        case redcarpet = "Redcarpet"
        case scholarlyMarkdown = "ScholarlyMarkdown"
        case taiga = "Taiga"
        case trello = "Trello"
        case s9ETextFormatter = "S9ETextFormatter"
        case xwiki = "XWiki"
        case stackOverflow = "StackOverflow"
        case _default = "Default"
    }
    public enum NewLineType: String, Codable { 
        case windows = "Windows"
        case unix = "Unix"
        case mac = "Mac"
    }
    /** Specifies markdown specification to convert presentation. Default is TextOnly. */
    public var exportType: ExportType?
    /** Specifies markdown specification to convert presentation. Default is MultiMarkdown. */
    public var flavor: Flavor?
    /** Specifies whether the generated document should have new lines of \\\\r(Macintosh), \\\\n(Unix) or \\\\r\\\\n(Windows). Default is Unix. */
    public var newLineType: NewLineType?
    /** Specifies folder name to save images. Default is Images.  */
    public var imagesSaveFolderName: String?
    /** Specifies whether the generated document should include slide number. Default is false.  */
    public var showSlideNumber: Bool?
    /** Specifies whether the generated document should include comments. Default is false.  */
    public var showComments: Bool?
    /** Specifies whether the generated document should include hidden slides. Default is false.  */
    public var showHiddenSlides: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let exportTypeValue = source["exportType"] ?? source["ExportType"]
        if exportTypeValue != nil {
            let exportTypeStringValue = exportTypeValue! as? String
            if exportTypeStringValue != nil {
                let exportTypeEnumValue = ExportType(rawValue: exportTypeStringValue!)
                if exportTypeEnumValue != nil {
                    self.exportType = exportTypeEnumValue!
                }
            }
        }
        let flavorValue = source["flavor"] ?? source["Flavor"]
        if flavorValue != nil {
            let flavorStringValue = flavorValue! as? String
            if flavorStringValue != nil {
                let flavorEnumValue = Flavor(rawValue: flavorStringValue!)
                if flavorEnumValue != nil {
                    self.flavor = flavorEnumValue!
                }
            }
        }
        let newLineTypeValue = source["newLineType"] ?? source["NewLineType"]
        if newLineTypeValue != nil {
            let newLineTypeStringValue = newLineTypeValue! as? String
            if newLineTypeStringValue != nil {
                let newLineTypeEnumValue = NewLineType(rawValue: newLineTypeStringValue!)
                if newLineTypeEnumValue != nil {
                    self.newLineType = newLineTypeEnumValue!
                }
            }
        }
        let imagesSaveFolderNameValue = source["imagesSaveFolderName"] ?? source["ImagesSaveFolderName"]
        if imagesSaveFolderNameValue != nil {
            self.imagesSaveFolderName = imagesSaveFolderNameValue! as? String
        }
        let showSlideNumberValue = source["showSlideNumber"] ?? source["ShowSlideNumber"]
        if showSlideNumberValue != nil {
            self.showSlideNumber = showSlideNumberValue! as? Bool
        }
        let showCommentsValue = source["showComments"] ?? source["ShowComments"]
        if showCommentsValue != nil {
            self.showComments = showCommentsValue! as? Bool
        }
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, deleteEmbeddedBinaryObjects: Bool? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, exportType: ExportType? = nil, flavor: Flavor? = nil, newLineType: NewLineType? = nil, imagesSaveFolderName: String? = nil, showSlideNumber: Bool? = nil, showComments: Bool? = nil, showHiddenSlides: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, deleteEmbeddedBinaryObjects: deleteEmbeddedBinaryObjects, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.exportType = exportType
        self.flavor = flavor
        self.newLineType = newLineType
        self.imagesSaveFolderName = imagesSaveFolderName
        self.showSlideNumber = showSlideNumber
        self.showComments = showComments
        self.showHiddenSlides = showHiddenSlides
        self.format = "md"
    }

    private enum CodingKeys: String, CodingKey {
        case exportType
        case flavor
        case newLineType
        case imagesSaveFolderName
        case showSlideNumber
        case showComments
        case showHiddenSlides
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        exportType = try? values.decode(ExportType.self, forKey: .exportType)
        flavor = try? values.decode(Flavor.self, forKey: .flavor)
        newLineType = try? values.decode(NewLineType.self, forKey: .newLineType)
        imagesSaveFolderName = try? values.decode(String.self, forKey: .imagesSaveFolderName)
        showSlideNumber = try? values.decode(Bool.self, forKey: .showSlideNumber)
        showComments = try? values.decode(Bool.self, forKey: .showComments)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        self.format = "md"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (exportType != nil) {
            try? container.encode(exportType, forKey: .exportType)
        }
        if (flavor != nil) {
            try? container.encode(flavor, forKey: .flavor)
        }
        if (newLineType != nil) {
            try? container.encode(newLineType, forKey: .newLineType)
        }
        if (imagesSaveFolderName != nil) {
            try? container.encode(imagesSaveFolderName, forKey: .imagesSaveFolderName)
        }
        if (showSlideNumber != nil) {
            try? container.encode(showSlideNumber, forKey: .showSlideNumber)
        }
        if (showComments != nil) {
            try? container.encode(showComments, forKey: .showComments)
        }
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
    }

}

