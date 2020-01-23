//
//  DataListEntry.swift
//  ParseJ
//
//  Created by jdj on 2020/01/24.
//  Copyright © 2020 jdj. All rights reserved.
//

import Foundation

struct DataListEntry: Decodable, Identifiable {

    var userId: Int
    var id: Int
    var title: String
    var body: String
    
}
