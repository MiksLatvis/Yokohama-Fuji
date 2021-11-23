//
//  Tip.swift
//  Yokohama Fuji
//
//  Created by Miks Latvis on 22/11/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
