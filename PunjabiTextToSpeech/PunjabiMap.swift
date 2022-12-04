//
//  PunjabiMap.swift
//  PunjabiTextToSpeech
//
//  Created by DON on 11/28/22.
//

import Foundation


let vowels = ["a","e","i","o","u","ń"," ","y"]

var akhar : [String: (String,Bool)] = [
    // alphabets
    "ੳ" : ("O",true),
    "ਅ" : ("A",true),
    "ੲ" : ("I",true),
    "ਸ" : ("S",true),
    "ਹ" : ("H",true),
    "ਕ" : ("K",true),
    "ਖ" : ("Kh",true),
    "ਗ" : ("G",true),
    "ਘ" : ("Gh",true),
    "ਙ" : ("Ng",true),
    "ਚ" : ("Ch",true),
    "ਛ" : ("Chh",true),
    "ਜ" : ("J",true),
    "ਝ" : ("Jh",true),
    "ਞ" : ("Nj",true),
    "ਟ" : ("T",true),
    "ਠ" : ("Th",true),
    "ਡ" : ("D",true),
    "ਢ" : ("Dh",true),
    "ਣ" : ("N",true),
    "ਤ" : ("T",true),
    "ਥ" : ("Th",true),
    "ਦ" : ("D",true),
    "ਧ" : ("Dh",true),
    "ਨ" : ("N",true),
    "ਪ" : ("P",true),
    "ਫ" : ("Ph",true),
    "ਬ" : ("B",true),
    "ਭ" : ("Bh",true),
    "ਮ" : ("M",true),
    "ਯ" : ("Y",true),
    "ਰ" : ("R",true),
    "ਲ" : ("L",true),
    "ਵ" : ("V",true),
    "ੜ" : ("R",true),
    "ਸ਼" : ("Sh",true),
    "ਖ਼" : ("Khh",true),
    "ਗ਼" : ("G",true),
    "ਜ਼" : ("Z",true),
    "ਫ਼" : ("F",true),
    "ਲ਼" : ("L",true),
    
    // matra
    "ਾ" : ("a",false),
    "ੀ" : ("ee",false),
    "ਿ" : ("i",false),
    "ੈ" : ("ai",false),
    "ੇ" : ("ay",false),
    " ੍" : ("r",false),
    "ੁ" : ("u",false),
    " ੂ" : ("oo",false),
    "ੂ" : ("oo",false),
    "ੋ" : ("o",false),
    "ੰ" : ("ń",true),
    "ਂ" : ("'",false),
    "ੱ" : ("",false),
    "਼" : ("h",false),
    " " : (" ",false)
]
