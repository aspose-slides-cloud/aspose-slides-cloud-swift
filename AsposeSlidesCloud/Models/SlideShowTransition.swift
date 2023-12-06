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


/** Slide Show Transition. */
public class SlideShowTransition: Codable {

    public enum ModelType: String, Codable { 
        case _none = "None"
        case blinds = "Blinds"
        case checker = "Checker"
        case circle = "Circle"
        case comb = "Comb"
        case cover = "Cover"
        case cut = "Cut"
        case diamond = "Diamond"
        case dissolve = "Dissolve"
        case fade = "Fade"
        case newsflash = "Newsflash"
        case plus = "Plus"
        case pull = "Pull"
        case push = "Push"
        case random = "Random"
        case randomBar = "RandomBar"
        case split = "Split"
        case strips = "Strips"
        case wedge = "Wedge"
        case wheel = "Wheel"
        case wipe = "Wipe"
        case zoom = "Zoom"
        case vortex = "Vortex"
        case _switch = "Switch"
        case flip = "Flip"
        case ripple = "Ripple"
        case honeycomb = "Honeycomb"
        case cube = "Cube"
        case box = "Box"
        case rotate = "Rotate"
        case orbit = "Orbit"
        case doors = "Doors"
        case window = "Window"
        case ferris = "Ferris"
        case gallery = "Gallery"
        case conveyor = "Conveyor"
        case pan = "Pan"
        case glitter = "Glitter"
        case warp = "Warp"
        case flythrough = "Flythrough"
        case flash = "Flash"
        case shred = "Shred"
        case reveal = "Reveal"
        case wheelReverse = "WheelReverse"
        case fallOver = "FallOver"
        case drape = "Drape"
        case curtains = "Curtains"
        case wind = "Wind"
        case prestige = "Prestige"
        case fracture = "Fracture"
        case crush = "Crush"
        case peelOff = "PeelOff"
        case pageCurlDouble = "PageCurlDouble"
        case pageCurlSingle = "PageCurlSingle"
        case airplane = "Airplane"
        case origami = "Origami"
        case morph = "Morph"
    }
    public enum SoundMode: String, Codable { 
        case startSound = "StartSound"
        case stopPrevoiusSound = "StopPrevoiusSound"
        case notDefined = "NotDefined"
    }
    public enum Speed: String, Codable { 
        case fast = "Fast"
        case medium = "Medium"
        case slow = "Slow"
    }
    public enum CornerDirection: String, Codable { 
        case leftDown = "LeftDown"
        case leftUp = "LeftUp"
        case rightDown = "RightDown"
        case rightUp = "RightUp"
    }
    public enum EightDirection: String, Codable { 
        case leftDown = "LeftDown"
        case leftUp = "LeftUp"
        case rightDown = "RightDown"
        case rightUp = "RightUp"
        case _left = "Left"
        case up = "Up"
        case down = "Down"
        case _right = "Right"
    }
    public enum InOutDirection: String, Codable { 
        case _in = "In"
        case out = "Out"
    }
    public enum SideDirection: String, Codable { 
        case _left = "Left"
        case up = "Up"
        case down = "Down"
        case _right = "Right"
    }
    public enum Pattern: String, Codable { 
        case diamond = "Diamond"
        case hexagon = "Hexagon"
    }
    public enum LeftRightDirection: String, Codable { 
        case _left = "Left"
        case _right = "Right"
    }
    public enum MorphType: String, Codable { 
        case byObject = "ByObject"
        case byWord = "ByWord"
        case byChar = "ByChar"
    }
    public enum OrientationDirection: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
    }
    public enum CornerAndCenterDirection: String, Codable { 
        case leftDown = "LeftDown"
        case leftUp = "LeftUp"
        case rightDown = "RightDown"
        case rightUp = "RightUp"
        case center = "Center"
    }
    public enum ShredPattern: String, Codable { 
        case strip = "Strip"
        case rectangle = "Rectangle"
    }
    public enum Orientation: String, Codable { 
        case horizontal = "Horizontal"
        case vertical = "Vertical"
    }
    /** Transition Type */
    public var type: ModelType?
    /** Advance After */
    public var advanceAfter: Bool?
    /** Advance After Time */
    public var advanceAfterTime: Int?
    /** Advance On Click */
    public var advanceOnClick: Bool?
    /** Sound Is Built In */
    public var soundIsBuiltIn: Bool?
    /** Sound Loop */
    public var soundLoop: Bool?
    /** Sound Mode */
    public var soundMode: SoundMode?
    /** Sound Name */
    public var soundName: String?
    /** Speed */
    public var speed: Speed?
    /** Corner Direction. */
    public var cornerDirection: CornerDirection?
    /** Eight Direction. */
    public var eightDirection: EightDirection?
    /** In/Out Direction. */
    public var inOutDirection: InOutDirection?
    /** Has Bounce. */
    public var hasBounce: Bool?
    /** Side Direction. */
    public var sideDirection: SideDirection?
    /** Pattern. */
    public var pattern: Pattern?
    /** Left/Right Direction. */
    public var leftRightDirection: LeftRightDirection?
    /** Morph Type. */
    public var morphType: MorphType?
    /** From Black. */
    public var fromBlack: Bool?
    /** Orientation Direction. */
    public var orientationDirection: OrientationDirection?
    /** Through Black. */
    public var throughBlack: Bool?
    /** Orientation. */
    public var cornerAndCenterDirection: CornerAndCenterDirection?
    /** Shred Pattern. */
    public var shredPattern: ShredPattern?
    /** Orientation. */
    public var orientation: Orientation?
    /** Spokes. */
    public var spokes: Int?

    func fillValues(_ source: [String:Any]) throws {
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
        let advanceAfterValue = source["advanceAfter"] ?? source["AdvanceAfter"]
        if advanceAfterValue != nil {
            self.advanceAfter = advanceAfterValue! as? Bool
        }
        let advanceAfterTimeValue = source["advanceAfterTime"] ?? source["AdvanceAfterTime"]
        if advanceAfterTimeValue != nil {
            self.advanceAfterTime = advanceAfterTimeValue! as? Int
        }
        let advanceOnClickValue = source["advanceOnClick"] ?? source["AdvanceOnClick"]
        if advanceOnClickValue != nil {
            self.advanceOnClick = advanceOnClickValue! as? Bool
        }
        let soundIsBuiltInValue = source["soundIsBuiltIn"] ?? source["SoundIsBuiltIn"]
        if soundIsBuiltInValue != nil {
            self.soundIsBuiltIn = soundIsBuiltInValue! as? Bool
        }
        let soundLoopValue = source["soundLoop"] ?? source["SoundLoop"]
        if soundLoopValue != nil {
            self.soundLoop = soundLoopValue! as? Bool
        }
        let soundModeValue = source["soundMode"] ?? source["SoundMode"]
        if soundModeValue != nil {
            let soundModeStringValue = soundModeValue! as? String
            if soundModeStringValue != nil {
                let soundModeEnumValue = SoundMode(rawValue: soundModeStringValue!)
                if soundModeEnumValue != nil {
                    self.soundMode = soundModeEnumValue!
                }
            }
        }
        let soundNameValue = source["soundName"] ?? source["SoundName"]
        if soundNameValue != nil {
            self.soundName = soundNameValue! as? String
        }
        let speedValue = source["speed"] ?? source["Speed"]
        if speedValue != nil {
            let speedStringValue = speedValue! as? String
            if speedStringValue != nil {
                let speedEnumValue = Speed(rawValue: speedStringValue!)
                if speedEnumValue != nil {
                    self.speed = speedEnumValue!
                }
            }
        }
        let cornerDirectionValue = source["cornerDirection"] ?? source["CornerDirection"]
        if cornerDirectionValue != nil {
            let cornerDirectionStringValue = cornerDirectionValue! as? String
            if cornerDirectionStringValue != nil {
                let cornerDirectionEnumValue = CornerDirection(rawValue: cornerDirectionStringValue!)
                if cornerDirectionEnumValue != nil {
                    self.cornerDirection = cornerDirectionEnumValue!
                }
            }
        }
        let eightDirectionValue = source["eightDirection"] ?? source["EightDirection"]
        if eightDirectionValue != nil {
            let eightDirectionStringValue = eightDirectionValue! as? String
            if eightDirectionStringValue != nil {
                let eightDirectionEnumValue = EightDirection(rawValue: eightDirectionStringValue!)
                if eightDirectionEnumValue != nil {
                    self.eightDirection = eightDirectionEnumValue!
                }
            }
        }
        let inOutDirectionValue = source["inOutDirection"] ?? source["InOutDirection"]
        if inOutDirectionValue != nil {
            let inOutDirectionStringValue = inOutDirectionValue! as? String
            if inOutDirectionStringValue != nil {
                let inOutDirectionEnumValue = InOutDirection(rawValue: inOutDirectionStringValue!)
                if inOutDirectionEnumValue != nil {
                    self.inOutDirection = inOutDirectionEnumValue!
                }
            }
        }
        let hasBounceValue = source["hasBounce"] ?? source["HasBounce"]
        if hasBounceValue != nil {
            self.hasBounce = hasBounceValue! as? Bool
        }
        let sideDirectionValue = source["sideDirection"] ?? source["SideDirection"]
        if sideDirectionValue != nil {
            let sideDirectionStringValue = sideDirectionValue! as? String
            if sideDirectionStringValue != nil {
                let sideDirectionEnumValue = SideDirection(rawValue: sideDirectionStringValue!)
                if sideDirectionEnumValue != nil {
                    self.sideDirection = sideDirectionEnumValue!
                }
            }
        }
        let patternValue = source["pattern"] ?? source["Pattern"]
        if patternValue != nil {
            let patternStringValue = patternValue! as? String
            if patternStringValue != nil {
                let patternEnumValue = Pattern(rawValue: patternStringValue!)
                if patternEnumValue != nil {
                    self.pattern = patternEnumValue!
                }
            }
        }
        let leftRightDirectionValue = source["leftRightDirection"] ?? source["LeftRightDirection"]
        if leftRightDirectionValue != nil {
            let leftRightDirectionStringValue = leftRightDirectionValue! as? String
            if leftRightDirectionStringValue != nil {
                let leftRightDirectionEnumValue = LeftRightDirection(rawValue: leftRightDirectionStringValue!)
                if leftRightDirectionEnumValue != nil {
                    self.leftRightDirection = leftRightDirectionEnumValue!
                }
            }
        }
        let morphTypeValue = source["morphType"] ?? source["MorphType"]
        if morphTypeValue != nil {
            let morphTypeStringValue = morphTypeValue! as? String
            if morphTypeStringValue != nil {
                let morphTypeEnumValue = MorphType(rawValue: morphTypeStringValue!)
                if morphTypeEnumValue != nil {
                    self.morphType = morphTypeEnumValue!
                }
            }
        }
        let fromBlackValue = source["fromBlack"] ?? source["FromBlack"]
        if fromBlackValue != nil {
            self.fromBlack = fromBlackValue! as? Bool
        }
        let orientationDirectionValue = source["orientationDirection"] ?? source["OrientationDirection"]
        if orientationDirectionValue != nil {
            let orientationDirectionStringValue = orientationDirectionValue! as? String
            if orientationDirectionStringValue != nil {
                let orientationDirectionEnumValue = OrientationDirection(rawValue: orientationDirectionStringValue!)
                if orientationDirectionEnumValue != nil {
                    self.orientationDirection = orientationDirectionEnumValue!
                }
            }
        }
        let throughBlackValue = source["throughBlack"] ?? source["ThroughBlack"]
        if throughBlackValue != nil {
            self.throughBlack = throughBlackValue! as? Bool
        }
        let cornerAndCenterDirectionValue = source["cornerAndCenterDirection"] ?? source["CornerAndCenterDirection"]
        if cornerAndCenterDirectionValue != nil {
            let cornerAndCenterDirectionStringValue = cornerAndCenterDirectionValue! as? String
            if cornerAndCenterDirectionStringValue != nil {
                let cornerAndCenterDirectionEnumValue = CornerAndCenterDirection(rawValue: cornerAndCenterDirectionStringValue!)
                if cornerAndCenterDirectionEnumValue != nil {
                    self.cornerAndCenterDirection = cornerAndCenterDirectionEnumValue!
                }
            }
        }
        let shredPatternValue = source["shredPattern"] ?? source["ShredPattern"]
        if shredPatternValue != nil {
            let shredPatternStringValue = shredPatternValue! as? String
            if shredPatternStringValue != nil {
                let shredPatternEnumValue = ShredPattern(rawValue: shredPatternStringValue!)
                if shredPatternEnumValue != nil {
                    self.shredPattern = shredPatternEnumValue!
                }
            }
        }
        let orientationValue = source["orientation"] ?? source["Orientation"]
        if orientationValue != nil {
            let orientationStringValue = orientationValue! as? String
            if orientationStringValue != nil {
                let orientationEnumValue = Orientation(rawValue: orientationStringValue!)
                if orientationEnumValue != nil {
                    self.orientation = orientationEnumValue!
                }
            }
        }
        let spokesValue = source["spokes"] ?? source["Spokes"]
        if spokesValue != nil {
            self.spokes = spokesValue! as? Int
        }
    }

    public init(type: ModelType? = nil, advanceAfter: Bool? = nil, advanceAfterTime: Int? = nil, advanceOnClick: Bool? = nil, soundIsBuiltIn: Bool? = nil, soundLoop: Bool? = nil, soundMode: SoundMode? = nil, soundName: String? = nil, speed: Speed? = nil, cornerDirection: CornerDirection? = nil, eightDirection: EightDirection? = nil, inOutDirection: InOutDirection? = nil, hasBounce: Bool? = nil, sideDirection: SideDirection? = nil, pattern: Pattern? = nil, leftRightDirection: LeftRightDirection? = nil, morphType: MorphType? = nil, fromBlack: Bool? = nil, orientationDirection: OrientationDirection? = nil, throughBlack: Bool? = nil, cornerAndCenterDirection: CornerAndCenterDirection? = nil, shredPattern: ShredPattern? = nil, orientation: Orientation? = nil, spokes: Int? = nil) {
        self.type = type
        self.advanceAfter = advanceAfter
        self.advanceAfterTime = advanceAfterTime
        self.advanceOnClick = advanceOnClick
        self.soundIsBuiltIn = soundIsBuiltIn
        self.soundLoop = soundLoop
        self.soundMode = soundMode
        self.soundName = soundName
        self.speed = speed
        self.cornerDirection = cornerDirection
        self.eightDirection = eightDirection
        self.inOutDirection = inOutDirection
        self.hasBounce = hasBounce
        self.sideDirection = sideDirection
        self.pattern = pattern
        self.leftRightDirection = leftRightDirection
        self.morphType = morphType
        self.fromBlack = fromBlack
        self.orientationDirection = orientationDirection
        self.throughBlack = throughBlack
        self.cornerAndCenterDirection = cornerAndCenterDirection
        self.shredPattern = shredPattern
        self.orientation = orientation
        self.spokes = spokes
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case advanceAfter
        case advanceAfterTime
        case advanceOnClick
        case soundIsBuiltIn
        case soundLoop
        case soundMode
        case soundName
        case speed
        case cornerDirection
        case eightDirection
        case inOutDirection
        case hasBounce
        case sideDirection
        case pattern
        case leftRightDirection
        case morphType
        case fromBlack
        case orientationDirection
        case throughBlack
        case cornerAndCenterDirection
        case shredPattern
        case orientation
        case spokes
    }

}

