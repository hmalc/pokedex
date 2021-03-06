//
//  Constants.swift
//  pokedex
//
//  Created by Hayden Malcomson on 2016-02-04.
//  Copyright © 2016 Hayden Malcomson. All rights reserved.
//

import Foundation
import UIKit

 let URL_BASE = "http://pokeapi.co/"
 let URL_POKEMON = "/api/v1/pokemon/"

typealias DownloadCompe = () -> ()

// MARK: Type Colors


func assignColorToType(_ type: String, alpha: CGFloat) -> UIColor {
    
    var colorList: [String] = ["Normal","Fighting","Flying","Poison","Ground","Rock","Bug","Ghost","Steel","Fire","Water","Grass","Electric","Psychic","Ice","Dragon","Dark","Fairy"]
    
    var colorSpecs: [UIColor] = [
        UIColor(red: 0.6588, green: 0.6549, blue: 0.4784, alpha: alpha),
        UIColor(red: 0.7608, green: 0.1804, blue: 0.1569, alpha: alpha),
        UIColor(red: 0.6627, green: 0.5608, blue: 0.9529, alpha: alpha),
        UIColor(red: 0.6392, green: 0.2431, blue: 0.6314, alpha: alpha),
        UIColor(red: 0.8863, green: 0.749, blue: 0.3961, alpha: alpha),
        UIColor(red: 0.7137, green: 0.6314, blue: 0.2118, alpha: alpha),
        UIColor(red: 0.651, green: 0.7255, blue: 0.102, alpha: alpha),
        UIColor(red: 0.451, green: 0.3412, blue: 0.5922, alpha: alpha),
        UIColor(red: 0.7176, green: 0.7176, blue: 0.8078, alpha: alpha),
        UIColor(red: 0.9333, green: 0.5059, blue: 0.1882, alpha: alpha),
        UIColor(red: 0.3882, green: 0.5647, blue: 0.9412, alpha: alpha),
        UIColor(red: 0.4784, green: 0.7804, blue: 0.298, alpha: alpha),
        UIColor(red: 0.9686, green: 0.8157, blue: 0.1725, alpha: alpha),
        UIColor(red: 0.9765, green: 0.3333, blue: 0.5294, alpha: alpha),
        UIColor(red: 0.5882, green: 0.851, blue: 0.8392, alpha: alpha),
        UIColor(red: 0.4353, green: 0.2078, blue: 0.9882, alpha: alpha),
        UIColor(red: 0.4392, green: 0.3412, blue: 0.2745, alpha: alpha),
        UIColor(red: 0.8392, green: 0.5216, blue: 0.6784, alpha: alpha)
    ]
    
    for i in 0...colorList.count-1 {
        
        if colorList[i] == type {
            return colorSpecs[i]
        }
    }
        
    return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

}

func assignColoursToGame (_ gameReferenceId: Int) -> UIColor {
    
    //var gameVersionArray: [String] = ["Red","Blue","Yellow","Gold","Silver","Crystal","Ruby","Sapphire","Emerald","FireRed","LeafGreen","Diamond","Pearl","Platinum","HeartGold","SoulSilver","Black","White","Colosseum","XD","Black 2","White 2","X","Y","Omega Ruby","Alpha Sapphire"]

    var gameColorSpecs: [UIColor] = [
        UIColor(red: 1, green: 0.0667, blue: 0.0667, alpha: 1.0),
        UIColor(red: 0.0667, green: 0.0667, blue: 1, alpha: 1.0),
        UIColor(red: 1, green: 0.8431, blue: 0.2, alpha: 1.0),
        UIColor(red: 0.8549, green: 0.6471, blue: 0.1255, alpha: 1.0),
        UIColor(red: 0.7529, green: 0.7529, blue: 0.7529, alpha: 1.0),
        UIColor(red: 0.3098, green: 0.851, blue: 1, alpha: 1.0),
        UIColor(red: 0.6275, green: 0, blue: 0, alpha: 1.0), /* Ruby #a00000 */
        UIColor(red: 0, green: 0, blue: 0.6275, alpha: 1.0), /* Sapphire #0000a0 */
        UIColor(red: 0, green: 0.6275, blue: 0, alpha: 1.0), /* Emerald #00a000 */
        UIColor(red: 1, green: 0.451, blue: 0.1529, alpha: 1.0), /* FireRed #ff7327 */
        UIColor(red: 0, green: 0.8667, blue: 0, alpha: 1.0), /* LeafGreen #00dd00 */
        UIColor(red: 0.6667, green: 0.6667, blue: 1, alpha: 1.0), /* Diamond #aaaaff */
        UIColor(red: 1, green: 0.6667, blue: 0.6667, alpha: 1.0), /* Pearl #ffaaaa */
        UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0), /* Platinum #999999 */
        UIColor(red: 0.7137, green: 0.6196, blue: 0, alpha: 1.0), /* Heart Gold #b69e00 */
        UIColor(red: 0.7529, green: 0.7529, blue: 0.8824, alpha: 1.0), /* Soul Silver #c0c0e1 */
        UIColor(red: 0.2667, green: 0.2667, blue: 0.2667, alpha: 1.0), /* Black #444444 */
        UIColor(red: 0.8824, green: 0.8824, blue: 0.8824, alpha: 1.0), /* White #e1e1e1 */
        UIColor(red: 0.7137, green: 0.7922, blue: 0.8941, alpha: 1.0), /* Colloseum #b6cae4 */
        UIColor(red: 0.3765, green: 0.3059, blue: 0.5098, alpha: 1.0), /* XD: Gale of Darkness #604e82 */
        UIColor(red: 0.2667, green: 0.2667, blue: 0.2667, alpha: 1.0), /* Black 2 #444444 */
        UIColor(red: 0.8824, green: 0.8824, blue: 0.8824, alpha: 1.0), /* White 2 #e1e1e1 */
        UIColor(red: 0.3882, green: 0.4627, blue: 0.7216, alpha: 1.0), /* X #6376b8 */
        UIColor(red: 0.9294, green: 0.3333, blue: 0.251, alpha: 1.0), /* Y #ed5540 */
        UIColor(red: 0.8118, green: 0.1882, blue: 0.1451, alpha: 1.0), /* Omega Ruby #cf3025 */
        UIColor(red: 0.0902, green: 0.4078, blue: 0.8196, alpha: 1.0) /* Alpha Sapphire #1768d1 */
    ]
    
    if gameReferenceId >= 1 && gameReferenceId <= 26 {
        return gameColorSpecs[gameReferenceId-1]
    }
    
    return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}


public var games: [String] = [
    "Red/Blue",
    "Yellow",
    "Gold/Silver",
    "Crystal",
    "Ruby/Sapphire",
    "Emerald",
    "FireRed/LeafGreen",
    "Diamond/Pearl",
    "Platinum",
    "HeartGold/SoulSilver",
    "Black/White",
    "Colosseum",
    "XD",
    "Black 2/White 2",
    "X/Y",
    "OmegaRuby/AlphaSapphire"
    ]


public var gameVersionGen: [Int] = [1,1,2,2,3,3,3,4,4,4,5,3,3,5,6,6]

public func returnMinGameGen (_ pokemonGeneration: Int) -> Int {
    
    switch pokemonGeneration {
    case 1: return 0
    case 2: return 2
    case 3: return 4
    case 4: return 7
    case 5: return 10
    case 6: return 14
    default: return 14
    }
}

public var hasMegaCry: [Int] = [3,6,9,65,94,115,127,130,142,150,181,212,214,229,248,257,282,303,306,308,310,354,359,380,381,445,448,460]

public var statsList: [String] = ["ID Number","Name","Height","Weight","HP","Attack","Defense","Special Attack","Special Defense","Speed","Base Stats"]

public var statsListAbbrev: [String] = ["ID","Name","HT","WT","HP","ATT","DEF","SAT","SDF","SPD","BS"]

public extension UIDevice {
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8 , value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,7", "iPad6,8":                      return "iPad Pro"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    
}
