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
public class TiffExportOptions: ExportOptions {

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
    public enum NotesPosition: String, Codable { 
        case _none = "None"
        case bottomFull = "BottomFull"
        case bottomTruncated = "BottomTruncated"
    }
    public enum CommentsPosition: String, Codable { 
        case _none = "None"
        case bottom = "Bottom"
        case _right = "Right"
    }
    /** Compression type. */
    public var compression: Compression?
    /** Width. */
    public var width: Int?
    /** Height. */
    public var height: Int?
    /** Horizontal resolution, in dots per inch. */
    public var dpiX: Int?
    /** Vertical resolution, in dots per inch. */
    public var dpiY: Int?
    /** Specifies whether the generated document should include hidden slides or not. Default is false.  */
    public var showHiddenSlides: Bool?
    /** Specifies the pixel format for the generated images. Read/write ImagePixelFormat. */
    public var pixelFormat: PixelFormat?
    /** Gets or sets the position of the notes on the page. */
    public var notesPosition: NotesPosition?
    /** Gets or sets the position of the comments on the page. */
    public var commentsPosition: CommentsPosition?
    /** Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right). */
    public var commentsAreaWidth: Int?
    /** Gets or sets the color of comments area (Applies only if comments are displayed on the right). */
    public var commentsAreaColor: String?
    /** True if comments that have no author are displayed. (Applies only if comments are displayed). */
    public var showCommentsByNoAuthor: Bool?

    private enum CodingKeys: String, CodingKey {
        case compression
        case width
        case height
        case dpiX
        case dpiY
        case showHiddenSlides
        case pixelFormat
        case notesPosition
        case commentsPosition
        case commentsAreaWidth
        case commentsAreaColor
        case showCommentsByNoAuthor
    }

    public init(defaultRegularFont: String? = nil, format: String? = nil, compression: Compression? = nil, width: Int? = nil, height: Int? = nil, dpiX: Int? = nil, dpiY: Int? = nil, showHiddenSlides: Bool? = nil, pixelFormat: PixelFormat? = nil, notesPosition: NotesPosition? = nil, commentsPosition: CommentsPosition? = nil, commentsAreaWidth: Int? = nil, commentsAreaColor: String? = nil, showCommentsByNoAuthor: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, format: format)
        self.compression = compression
        self.width = width
        self.height = height
        self.dpiX = dpiX
        self.dpiY = dpiY
        self.showHiddenSlides = showHiddenSlides
        self.pixelFormat = pixelFormat
        self.notesPosition = notesPosition
        self.commentsPosition = commentsPosition
        self.commentsAreaWidth = commentsAreaWidth
        self.commentsAreaColor = commentsAreaColor
        self.showCommentsByNoAuthor = showCommentsByNoAuthor
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        compression = try values.decode(Compression?.self, forKey: .compression)
        width = try values.decode(Int?.self, forKey: .width)
        height = try values.decode(Int?.self, forKey: .height)
        dpiX = try values.decode(Int?.self, forKey: .dpiX)
        dpiY = try values.decode(Int?.self, forKey: .dpiY)
        showHiddenSlides = try values.decode(Bool?.self, forKey: .showHiddenSlides)
        pixelFormat = try values.decode(PixelFormat?.self, forKey: .pixelFormat)
        notesPosition = try values.decode(NotesPosition?.self, forKey: .notesPosition)
        commentsPosition = try values.decode(CommentsPosition?.self, forKey: .commentsPosition)
        commentsAreaWidth = try values.decode(Int?.self, forKey: .commentsAreaWidth)
        commentsAreaColor = try values.decode(String?.self, forKey: .commentsAreaColor)
        showCommentsByNoAuthor = try values.decode(Bool?.self, forKey: .showCommentsByNoAuthor)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(compression, forKey: .compression)
        try container.encode(width, forKey: .width)
        try container.encode(height, forKey: .height)
        try container.encode(dpiX, forKey: .dpiX)
        try container.encode(dpiY, forKey: .dpiY)
        try container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        try container.encode(pixelFormat, forKey: .pixelFormat)
        try container.encode(notesPosition, forKey: .notesPosition)
        try container.encode(commentsPosition, forKey: .commentsPosition)
        try container.encode(commentsAreaWidth, forKey: .commentsAreaWidth)
        try container.encode(commentsAreaColor, forKey: .commentsAreaColor)
        try container.encode(showCommentsByNoAuthor, forKey: .showCommentsByNoAuthor)
    }


}

