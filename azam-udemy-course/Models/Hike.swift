//
//  Hike.swift
//  azam-udemy-course
//
//  Created by NAVJOT SINGH on 2022-11-15.
//

import Foundation

struct Hike{
    let name:String
    let imgUrl:String
    let miles:Double
}

extension Hike{
    static func all()-> [Hike]{
        return [
            Hike(name: "H1", imgUrl: "NIL", miles: 6),
            Hike(name: "H2", imgUrl: "NIL", miles: 7),
            Hike(name: "H3", imgUrl: "NIL", miles: 8)]
    }
}
