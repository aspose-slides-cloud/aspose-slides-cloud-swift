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
public class Html5ExportOptions: ExportOptions {

    /** Gets or sets transitions animation option. */
    public var animateTransitions: Bool?
    /** Gets or sets shapes animation option. */
    public var animateShapes: Bool?
    /** Gets or sets embed images option. */
    public var embedImages: Bool?
    /** Slides layouting options */
    public var slidesLayoutOptions: SlidesLayoutOptions?
    /** Path to custom templates */
    public var templatesPath: String?
    /** true to disable ligatures in the rendered output. */
    public var disableFontLigatures: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let animateTransitionsValue = source["animateTransitions"] ?? source["AnimateTransitions"]
        if animateTransitionsValue != nil {
            self.animateTransitions = animateTransitionsValue! as? Bool
        }
        let animateShapesValue = source["animateShapes"] ?? source["AnimateShapes"]
        if animateShapesValue != nil {
            self.animateShapes = animateShapesValue! as? Bool
        }
        let embedImagesValue = source["embedImages"] ?? source["EmbedImages"]
        if embedImagesValue != nil {
            self.embedImages = embedImagesValue! as? Bool
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
        let templatesPathValue = source["templatesPath"] ?? source["TemplatesPath"]
        if templatesPathValue != nil {
            self.templatesPath = templatesPathValue! as? String
        }
        let disableFontLigaturesValue = source["disableFontLigatures"] ?? source["DisableFontLigatures"]
        if disableFontLigaturesValue != nil {
            self.disableFontLigatures = disableFontLigaturesValue! as? Bool
        }
    }

    public init(defaultRegularFont: String? = nil, deleteEmbeddedBinaryObjects: Bool? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, skipJavaScriptLinks: Bool? = nil, format: String? = nil, animateTransitions: Bool? = nil, animateShapes: Bool? = nil, embedImages: Bool? = nil, slidesLayoutOptions: SlidesLayoutOptions? = nil, templatesPath: String? = nil, disableFontLigatures: Bool? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, deleteEmbeddedBinaryObjects: deleteEmbeddedBinaryObjects, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, skipJavaScriptLinks: skipJavaScriptLinks, format: format)
        self.animateTransitions = animateTransitions
        self.animateShapes = animateShapes
        self.embedImages = embedImages
        self.slidesLayoutOptions = slidesLayoutOptions
        self.templatesPath = templatesPath
        self.disableFontLigatures = disableFontLigatures
        self.format = "html5"
    }

    private enum CodingKeys: String, CodingKey {
        case animateTransitions
        case animateShapes
        case embedImages
        case slidesLayoutOptions
        case templatesPath
        case disableFontLigatures
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        animateTransitions = try? values.decode(Bool.self, forKey: .animateTransitions)
        animateShapes = try? values.decode(Bool.self, forKey: .animateShapes)
        embedImages = try? values.decode(Bool.self, forKey: .embedImages)
        slidesLayoutOptions = try? values.decode(SlidesLayoutOptions.self, forKey: .slidesLayoutOptions)
        templatesPath = try? values.decode(String.self, forKey: .templatesPath)
        disableFontLigatures = try? values.decode(Bool.self, forKey: .disableFontLigatures)
        self.format = "html5"
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (animateTransitions != nil) {
            try? container.encode(animateTransitions, forKey: .animateTransitions)
        }
        if (animateShapes != nil) {
            try? container.encode(animateShapes, forKey: .animateShapes)
        }
        if (embedImages != nil) {
            try? container.encode(embedImages, forKey: .embedImages)
        }
        if (slidesLayoutOptions != nil) {
            try? container.encode(slidesLayoutOptions, forKey: .slidesLayoutOptions)
        }
        if (templatesPath != nil) {
            try? container.encode(templatesPath, forKey: .templatesPath)
        }
        if (disableFontLigatures != nil) {
            try? container.encode(disableFontLigatures, forKey: .disableFontLigatures)
        }
    }

}

