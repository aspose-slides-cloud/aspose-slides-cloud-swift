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


/** Hyperlink */
public class Hyperlink: Codable {

    public enum ActionType: String, Codable { 
        case noAction = "NoAction"
        case hyperlink = "Hyperlink"
        case jumpFirstSlide = "JumpFirstSlide"
        case jumpPreviousSlide = "JumpPreviousSlide"
        case jumpNextSlide = "JumpNextSlide"
        case jumpLastSlide = "JumpLastSlide"
        case jumpEndShow = "JumpEndShow"
        case jumpLastViewedSlide = "JumpLastViewedSlide"
        case jumpSpecificSlide = "JumpSpecificSlide"
        case startCustomSlideShow = "StartCustomSlideShow"
        case openFile = "OpenFile"
        case openPresentation = "OpenPresentation"
        case startStopMedia = "StartStopMedia"
        case startMacro = "StartMacro"
        case startProgram = "StartProgram"
        case unknown = "Unknown"
    }
    public enum ColorSource: String, Codable { 
        case styles = "Styles"
        case portionFormat = "PortionFormat"
    }
    /** If true Hypelink is not applied.  */
    public var isDisabled: Bool?
    /** Type of HyperLink action              */
    public var actionType: ActionType?
    /** Specifies the external URL */
    public var externalUrl: String?
    /** Index of the target slide */
    public var targetSlideIndex: Int?
    /** Target frame */
    public var targetFrame: String?
    /** Hyperlink tooltip */
    public var tooltip: String?
    /** Makes hyperlink viewed when it is invoked.              */
    public var history: Bool?
    /** Determines whether the hyperlink should be highlighted on click. */
    public var highlightClick: Bool?
    /** Determines whether the sound should be stopped on hyperlink click */
    public var stopSoundOnClick: Bool?
    /** Represents the source of hyperlink color */
    public var colorSource: ColorSource?

    private enum CodingKeys: String, CodingKey {
        case isDisabled
        case actionType
        case externalUrl
        case targetSlideIndex
        case targetFrame
        case tooltip
        case history
        case highlightClick
        case stopSoundOnClick
        case colorSource
    }

    public init(isDisabled: Bool? = nil, actionType: ActionType? = nil, externalUrl: String? = nil, targetSlideIndex: Int? = nil, targetFrame: String? = nil, tooltip: String? = nil, history: Bool? = nil, highlightClick: Bool? = nil, stopSoundOnClick: Bool? = nil, colorSource: ColorSource? = nil) {
        self.isDisabled = isDisabled
        self.actionType = actionType
        self.externalUrl = externalUrl
        self.targetSlideIndex = targetSlideIndex
        self.targetFrame = targetFrame
        self.tooltip = tooltip
        self.history = history
        self.highlightClick = highlightClick
        self.stopSoundOnClick = stopSoundOnClick
        self.colorSource = colorSource
    }


}
