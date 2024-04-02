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


/** Provides options that control how a presentation is saved in an image format. */
public class ImageExportOptions: ImageExportOptionsBase {

    /** Show hidden slides. If true, hidden are exported. */
    public var showHiddenSlides: Bool?
    /** Slides layouting options */
    public var slidesLayoutOptions: SlidesLayoutOptions?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let showHiddenSlidesValue = source["showHiddenSlides"] ?? source["ShowHiddenSlides"]
        if showHiddenSlidesValue != nil {
            self.showHiddenSlides = showHiddenSlidesValue! as? Bool
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

    public init(defaultRegularFont: String? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, height: Int? = nil, width: Int? = nil, showHiddenSlides: Bool? = nil, slidesLayoutOptions: SlidesLayoutOptions? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format, height: height, width: width)
        self.showHiddenSlides = showHiddenSlides
        self.slidesLayoutOptions = slidesLayoutOptions
        self.format = "image"
    }

    private enum CodingKeys: String, CodingKey {
        case showHiddenSlides
        case slidesLayoutOptions
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        showHiddenSlides = try? values.decode(Bool.self, forKey: .showHiddenSlides)
        slidesLayoutOptions = try? values.decode(SlidesLayoutOptions.self, forKey: .slidesLayoutOptions)
        self.format = "image"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (showHiddenSlides != nil) {
            try? container.encode(showHiddenSlides, forKey: .showHiddenSlides)
        }
        if (slidesLayoutOptions != nil) {
            try? container.encode(slidesLayoutOptions, forKey: .slidesLayoutOptions)
        }
    }

}

