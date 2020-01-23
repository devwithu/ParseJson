//
//  ContentView.swift
//  ParseJ
//
//  Created by jdj on 2020/01/24.
//  Copyright © 2020 jdj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        List(networkingManager.dataList) {
            data in
            Text(data.title)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
