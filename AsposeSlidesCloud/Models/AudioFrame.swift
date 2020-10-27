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


/** Represents AudioFrame resource. */
public class AudioFrame: GeometryShape {

    public enum PlayMode: String, Codable { 
        case auto = "Auto"
        case onClick = "OnClick"
        case allSlides = "AllSlides"
        case mixed = "Mixed"
    }
    public enum Volume: String, Codable { 
        case mute = "Mute"
        case low = "Low"
        case medium = "Medium"
        case loud = "Loud"
        case mixed = "Mixed"
    }
    /** Returns or sets a last track index. */
    public var audioCdEndTrack: Int?
    /** Returns or sets a last track time. */
    public var audioCdEndTrackTime: Int?
    /** Returns or sets a start track index. */
    public var audioCdStartTrack: Int?
    /** Returns or sets a start track time.  */
    public var audioCdStartTrackTime: Int?
    /** Determines whether a sound is embedded to a presentation. */
    public var embedded: Bool?
    /** Determines whether an AudioFrame is hidden. */
    public var hideAtShowing: Bool?
    /** Determines whether an audio is looped.  */
    public var playLoopMode: Bool?
    /** Returns or sets the audio play mode. */
    public var playMode: PlayMode?
    /** Returns or sets the audio volume. */
    public var volume: Volume?
    /** Audio data encoded in base64. */
    public var base64Data: String?

    private enum CodingKeys: String, CodingKey {
        case audioCdEndTrack
        case audioCdEndTrackTime
        case audioCdStartTrack
        case audioCdStartTrackTime
        case embedded
        case hideAtShowing
        case playLoopMode
        case playMode
        case volume
        case base64Data
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, shapes: ResourceUri? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, lineFormat: LineFormat? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, audioCdEndTrack: Int? = nil, audioCdEndTrackTime: Int? = nil, audioCdStartTrack: Int? = nil, audioCdStartTrackTime: Int? = nil, embedded: Bool? = nil, hideAtShowing: Bool? = nil, playLoopMode: Bool? = nil, playMode: PlayMode? = nil, volume: Volume? = nil, base64Data: String? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, shapes: shapes, fillFormat: fillFormat, effectFormat: effectFormat, lineFormat: lineFormat, type: type, shapeType: shapeType)
        self.audioCdEndTrack = audioCdEndTrack
        self.audioCdEndTrackTime = audioCdEndTrackTime
        self.audioCdStartTrack = audioCdStartTrack
        self.audioCdStartTrackTime = audioCdStartTrackTime
        self.embedded = embedded
        self.hideAtShowing = hideAtShowing
        self.playLoopMode = playLoopMode
        self.playMode = playMode
        self.volume = volume
        self.base64Data = base64Data
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        audioCdEndTrack = try values.decode(Int?.self, forKey: .audioCdEndTrack)
        audioCdEndTrackTime = try values.decode(Int?.self, forKey: .audioCdEndTrackTime)
        audioCdStartTrack = try values.decode(Int?.self, forKey: .audioCdStartTrack)
        audioCdStartTrackTime = try values.decode(Int?.self, forKey: .audioCdStartTrackTime)
        embedded = try values.decode(Bool?.self, forKey: .embedded)
        hideAtShowing = try values.decode(Bool?.self, forKey: .hideAtShowing)
        playLoopMode = try values.decode(Bool?.self, forKey: .playLoopMode)
        playMode = try values.decode(PlayMode?.self, forKey: .playMode)
        volume = try values.decode(Volume?.self, forKey: .volume)
        base64Data = try values.decode(String?.self, forKey: .base64Data)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(audioCdEndTrack, forKey: .audioCdEndTrack)
        try container.encode(audioCdEndTrackTime, forKey: .audioCdEndTrackTime)
        try container.encode(audioCdStartTrack, forKey: .audioCdStartTrack)
        try container.encode(audioCdStartTrackTime, forKey: .audioCdStartTrackTime)
        try container.encode(embedded, forKey: .embedded)
        try container.encode(hideAtShowing, forKey: .hideAtShowing)
        try container.encode(playLoopMode, forKey: .playLoopMode)
        try container.encode(playMode, forKey: .playMode)
        try container.encode(volume, forKey: .volume)
        try container.encode(base64Data, forKey: .base64Data)
    }


}

