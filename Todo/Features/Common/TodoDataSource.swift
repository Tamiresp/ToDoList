//
//  TodoDataSource.swift
//  Todo
//
//  Created by tamires.p.silva on 11/08/20.
//  Copyright © 2020 Tamires. All rights reserved.
//

import Foundation

final class TodoDataSource {
    static let shared = TodoDataSource()
    
    private init(){}
    
    var tasks: [Tasks] = [Tasks(type: .daily, descTask: "teste", date: Date()),
                        Tasks(type: .onPriority, descTask: "teste2", date: Date()),
                        Tasks(type: .home, descTask: "teste3", date: Date()),
                        Tasks(type: .onPriority, descTask: "teste2", date: Date()),
                        Tasks(type: .home, descTask: "teste3", date: Date())]
}
