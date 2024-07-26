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
    public var notesCommentsLayouting: NotesCommentsLayoutingOptions?
    /** Path to custom templates */
    public var templatesPath: String?

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
        let notesCommentsLayoutingValue = source["notesCommentsLayouting"] ?? source["NotesCommentsLayouting"]
        if notesCommentsLayoutingValue != nil {
            let notesCommentsLayoutingDictionaryValue = notesCommentsLayoutingValue! as? [String:Any]
            if notesCommentsLayoutingDictionaryValue != nil {
                let (notesCommentsLayoutingInstance, error) = ClassRegistry.getClassFromDictionary(NotesCommentsLayoutingOptions.self, notesCommentsLayoutingDictionaryValue!)
                if error == nil && notesCommentsLayoutingInstance != nil {
                    self.notesCommentsLayouting = notesCommentsLayoutingInstance! as? NotesCommentsLayoutingOptions
                }
            }
        }
        let templatesPathValue = source["templatesPath"] ?? source["TemplatesPath"]
        if templatesPathValue != nil {
            self.templatesPath = templatesPathValue! as? String
        }
    }

    public init(defaultRegularFont: String? = nil, gradientStyle: GradientStyle? = nil, fontFallbackRules: [FontFallbackRule]? = nil, fontSubstRules: [FontSubstRule]? = nil, format: String? = nil, animateTransitions: Bool? = nil, animateShapes: Bool? = nil, embedImages: Bool? = nil, notesCommentsLayouting: NotesCommentsLayoutingOptions? = nil, templatesPath: String? = nil) {
        super.init(defaultRegularFont: defaultRegularFont, gradientStyle: gradientStyle, fontFallbackRules: fontFallbackRules, fontSubstRules: fontSubstRules, format: format)
        self.animateTransitions = animateTransitions
        self.animateShapes = animateShapes
        self.embedImages = embedImages
        self.notesCommentsLayouting = notesCommentsLayouting
        self.templatesPath = templatesPath
        self.format = "html5"
    }

    private enum CodingKeys: String, CodingKey {
        case animateTransitions
        case animateShapes
        case embedImages
        case notesCommentsLayouting
        case templatesPath
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        animateTransitions = try? values.decode(Bool.self, forKey: .animateTransitions)
        animateShapes = try? values.decode(Bool.self, forKey: .animateShapes)
        embedImages = try? values.decode(Bool.self, forKey: .embedImages)
        notesCommentsLayouting = try? values.decode(NotesCommentsLayoutingOptions.self, forKey: .notesCommentsLayouting)
        templatesPath = try? values.decode(String.self, forKey: .templatesPath)
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
        if (notesCommentsLayouting != nil) {
            try? container.encode(notesCommentsLayouting, forKey: .notesCommentsLayouting)
        }
        if (templatesPath != nil) {
            try? container.encode(templatesPath, forKey: .templatesPath)
        }
    }

}

