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
        case inClickSequence = "InClickSequence"
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
    /** Audio volume percent. */
    public var volumeValue: Double?
    /** Audio data encoded in base64. */
    public var base64Data: String?
    /** Determines whether an audio is playing across the slides. */
    public var playAcrossSlides: Bool?
    /** Determines whether audio is automatically rewound to start after playing. */
    public var rewindAudio: Bool?
    /** Time duration for the initial fade-in of the media in milliseconds. */
    public var fadeInDuration: Double?
    /** Time duration for the ending fade-out of the media in milliseconds. */
    public var fadeOutDuration: Double?
    /** Time duration to be removed from the beginning of the media during playback in milliseconds. */
    public var trimFromStart: Double?
    /** Time duration to be removed from the end of the media during playback in milliseconds. */
    public var trimFromEnd: Double?
    /** Picture fill format. */
    public var pictureFillFormat: PictureFill?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let audioCdEndTrackValue = source["audioCdEndTrack"] ?? source["AudioCdEndTrack"]
        if audioCdEndTrackValue != nil {
            self.audioCdEndTrack = audioCdEndTrackValue! as? Int
        }
        let audioCdEndTrackTimeValue = source["audioCdEndTrackTime"] ?? source["AudioCdEndTrackTime"]
        if audioCdEndTrackTimeValue != nil {
            self.audioCdEndTrackTime = audioCdEndTrackTimeValue! as? Int
        }
        let audioCdStartTrackValue = source["audioCdStartTrack"] ?? source["AudioCdStartTrack"]
        if audioCdStartTrackValue != nil {
            self.audioCdStartTrack = audioCdStartTrackValue! as? Int
        }
        let audioCdStartTrackTimeValue = source["audioCdStartTrackTime"] ?? source["AudioCdStartTrackTime"]
        if audioCdStartTrackTimeValue != nil {
            self.audioCdStartTrackTime = audioCdStartTrackTimeValue! as? Int
        }
        let embeddedValue = source["embedded"] ?? source["Embedded"]
        if embeddedValue != nil {
            self.embedded = embeddedValue! as? Bool
        }
        let hideAtShowingValue = source["hideAtShowing"] ?? source["HideAtShowing"]
        if hideAtShowingValue != nil {
            self.hideAtShowing = hideAtShowingValue! as? Bool
        }
        let playLoopModeValue = source["playLoopMode"] ?? source["PlayLoopMode"]
        if playLoopModeValue != nil {
            self.playLoopMode = playLoopModeValue! as? Bool
        }
        let playModeValue = source["playMode"] ?? source["PlayMode"]
        if playModeValue != nil {
            let playModeStringValue = playModeValue! as? String
            if playModeStringValue != nil {
                let playModeEnumValue = PlayMode(rawValue: playModeStringValue!)
                if playModeEnumValue != nil {
                    self.playMode = playModeEnumValue!
                }
            }
        }
        let volumeValue = source["volume"] ?? source["Volume"]
        if volumeValue != nil {
            let volumeStringValue = volumeValue! as? String
            if volumeStringValue != nil {
                let volumeEnumValue = Volume(rawValue: volumeStringValue!)
                if volumeEnumValue != nil {
                    self.volume = volumeEnumValue!
                }
            }
        }
        let volumeValueValue = source["volumeValue"] ?? source["VolumeValue"]
        if volumeValueValue != nil {
            self.volumeValue = volumeValueValue! as? Double
        }
        let base64DataValue = source["base64Data"] ?? source["Base64Data"]
        if base64DataValue != nil {
            self.base64Data = base64DataValue! as? String
        }
        let playAcrossSlidesValue = source["playAcrossSlides"] ?? source["PlayAcrossSlides"]
        if playAcrossSlidesValue != nil {
            self.playAcrossSlides = playAcrossSlidesValue! as? Bool
        }
        let rewindAudioValue = source["rewindAudio"] ?? source["RewindAudio"]
        if rewindAudioValue != nil {
            self.rewindAudio = rewindAudioValue! as? Bool
        }
        let fadeInDurationValue = source["fadeInDuration"] ?? source["FadeInDuration"]
        if fadeInDurationValue != nil {
            self.fadeInDuration = fadeInDurationValue! as? Double
        }
        let fadeOutDurationValue = source["fadeOutDuration"] ?? source["FadeOutDuration"]
        if fadeOutDurationValue != nil {
            self.fadeOutDuration = fadeOutDurationValue! as? Double
        }
        let trimFromStartValue = source["trimFromStart"] ?? source["TrimFromStart"]
        if trimFromStartValue != nil {
            self.trimFromStart = trimFromStartValue! as? Double
        }
        let trimFromEndValue = source["trimFromEnd"] ?? source["TrimFromEnd"]
        if trimFromEndValue != nil {
            self.trimFromEnd = trimFromEndValue! as? Double
        }
        let pictureFillFormatValue = source["pictureFillFormat"] ?? source["PictureFillFormat"]
        if pictureFillFormatValue != nil {
            let pictureFillFormatDictionaryValue = pictureFillFormatValue! as? [String:Any]
            if pictureFillFormatDictionaryValue != nil {
                let (pictureFillFormatInstance, error) = ClassRegistry.getClassFromDictionary(PictureFill.self, pictureFillFormatDictionaryValue!)
                if error == nil && pictureFillFormatInstance != nil {
                    self.pictureFillFormat = pictureFillFormatInstance! as? PictureFill
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, isDecorative: Bool? = nil, x: Double? = nil, y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil, audioCdEndTrack: Int? = nil, audioCdEndTrackTime: Int? = nil, audioCdStartTrack: Int? = nil, audioCdStartTrackTime: Int? = nil, embedded: Bool? = nil, hideAtShowing: Bool? = nil, playLoopMode: Bool? = nil, playMode: PlayMode? = nil, volume: Volume? = nil, volumeValue: Double? = nil, base64Data: String? = nil, playAcrossSlides: Bool? = nil, rewindAudio: Bool? = nil, fadeInDuration: Double? = nil, fadeOutDuration: Double? = nil, trimFromStart: Double? = nil, trimFromEnd: Double? = nil, pictureFillFormat: PictureFill? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, isDecorative: isDecorative, x: x, y: y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type, shapeType: shapeType)
        self.audioCdEndTrack = audioCdEndTrack
        self.audioCdEndTrackTime = audioCdEndTrackTime
        self.audioCdStartTrack = audioCdStartTrack
        self.audioCdStartTrackTime = audioCdStartTrackTime
        self.embedded = embedded
        self.hideAtShowing = hideAtShowing
        self.playLoopMode = playLoopMode
        self.playMode = playMode
        self.volume = volume
        self.volumeValue = volumeValue
        self.base64Data = base64Data
        self.playAcrossSlides = playAcrossSlides
        self.rewindAudio = rewindAudio
        self.fadeInDuration = fadeInDuration
        self.fadeOutDuration = fadeOutDuration
        self.trimFromStart = trimFromStart
        self.trimFromEnd = trimFromEnd
        self.pictureFillFormat = pictureFillFormat
        self.type = ModelType.audioFrame
    }

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
        case volumeValue
        case base64Data
        case playAcrossSlides
        case rewindAudio
        case fadeInDuration
        case fadeOutDuration
        case trimFromStart
        case trimFromEnd
        case pictureFillFormat
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        audioCdEndTrack = try? values.decode(Int.self, forKey: .audioCdEndTrack)
        audioCdEndTrackTime = try? values.decode(Int.self, forKey: .audioCdEndTrackTime)
        audioCdStartTrack = try? values.decode(Int.self, forKey: .audioCdStartTrack)
        audioCdStartTrackTime = try? values.decode(Int.self, forKey: .audioCdStartTrackTime)
        embedded = try? values.decode(Bool.self, forKey: .embedded)
        hideAtShowing = try? values.decode(Bool.self, forKey: .hideAtShowing)
        playLoopMode = try? values.decode(Bool.self, forKey: .playLoopMode)
        playMode = try? values.decode(PlayMode.self, forKey: .playMode)
        volume = try? values.decode(Volume.self, forKey: .volume)
        volumeValue = try? values.decode(Double.self, forKey: .volumeValue)
        base64Data = try? values.decode(String.self, forKey: .base64Data)
        playAcrossSlides = try? values.decode(Bool.self, forKey: .playAcrossSlides)
        rewindAudio = try? values.decode(Bool.self, forKey: .rewindAudio)
        fadeInDuration = try? values.decode(Double.self, forKey: .fadeInDuration)
        fadeOutDuration = try? values.decode(Double.self, forKey: .fadeOutDuration)
        trimFromStart = try? values.decode(Double.self, forKey: .trimFromStart)
        trimFromEnd = try? values.decode(Double.self, forKey: .trimFromEnd)
        pictureFillFormat = try? values.decode(PictureFill.self, forKey: .pictureFillFormat)
        self.type = ModelType.audioFrame
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (audioCdEndTrack != nil) {
            try? container.encode(audioCdEndTrack, forKey: .audioCdEndTrack)
        }
        if (audioCdEndTrackTime != nil) {
            try? container.encode(audioCdEndTrackTime, forKey: .audioCdEndTrackTime)
        }
        if (audioCdStartTrack != nil) {
            try? container.encode(audioCdStartTrack, forKey: .audioCdStartTrack)
        }
        if (audioCdStartTrackTime != nil) {
            try? container.encode(audioCdStartTrackTime, forKey: .audioCdStartTrackTime)
        }
        if (embedded != nil) {
            try? container.encode(embedded, forKey: .embedded)
        }
        if (hideAtShowing != nil) {
            try? container.encode(hideAtShowing, forKey: .hideAtShowing)
        }
        if (playLoopMode != nil) {
            try? container.encode(playLoopMode, forKey: .playLoopMode)
        }
        if (playMode != nil) {
            try? container.encode(playMode, forKey: .playMode)
        }
        if (volume != nil) {
            try? container.encode(volume, forKey: .volume)
        }
        if (volumeValue != nil) {
            try? container.encode(volumeValue, forKey: .volumeValue)
        }
        if (base64Data != nil) {
            try? container.encode(base64Data, forKey: .base64Data)
        }
        if (playAcrossSlides != nil) {
            try? container.encode(playAcrossSlides, forKey: .playAcrossSlides)
        }
        if (rewindAudio != nil) {
            try? container.encode(rewindAudio, forKey: .rewindAudio)
        }
        if (fadeInDuration != nil) {
            try? container.encode(fadeInDuration, forKey: .fadeInDuration)
        }
        if (fadeOutDuration != nil) {
            try? container.encode(fadeOutDuration, forKey: .fadeOutDuration)
        }
        if (trimFromStart != nil) {
            try? container.encode(trimFromStart, forKey: .trimFromStart)
        }
        if (trimFromEnd != nil) {
            try? container.encode(trimFromEnd, forKey: .trimFromEnd)
        }
        if (pictureFillFormat != nil) {
            try? container.encode(pictureFillFormat, forKey: .pictureFillFormat)
        }
    }

}

