//
//  NetworkingManager.swift
//  ParseJ
//
//  Created by jdj on 2020/01/24.
//  Copyright © 2020 jdj. All rights reserved.
//

import Foundation

class NetworkingManager : ObservableObject {
    
    @Published var dataList = [DataListEntry]()
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
            else {return}
        URLSession.shared
            .dataTask(with: url) {
                (data, _, _) in guard let data = data else {return}
                
                let dataList = try! JSONDecoder().decode([DataListEntry].self, from: data)
                DispatchQueue.main.async {
                    self.dataList = dataList
                    
                    print(self.dataList)
                    
                }
        }.resume()
    }
    
}
