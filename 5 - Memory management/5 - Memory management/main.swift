//
//  main.swift
//  5 - Memory management
//
//  Created by Dmytro Lyakhovenko on 10/11/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

// Завдання № 1.

class Person {
    var name: String
    weak var child: Son?
    
    init (name: String) {
        self.name = name
        print ("init \(name)")
        }
    deinit {
        print ("deinit \(name)")
        }
}

class Son {
    var name: String
    weak var parent: Person?
    
    init (name: String) {
        self.name = name
        print ("init \(name)")
    }
    deinit {
        print ("deinit \(name)")
    }
}

do {
    let father = Person (name: "David")
    let son = Son (name: "Steven")
    
    father.child = son
    son.parent = father
}

// Завдання № 2.

class Operand {
    var number: Int
    weak var operand: Operand?
    var printOut: (() -> ())? = nil
    
    init (number: Int) {
        self.number = number
        print("init \(number)")
    }
    deinit {
        print ("deinit \(number)")
    }
}

do {
    var Operand1 : Operand? = Operand (number: 7)
    var Operand2 = Operand (number: 9)
    Operand1?.operand = Operand2
    Operand2.operand = Operand1
    Operand1 = nil
    Operand2 = nil!
}

// Завдання № 4. Практика з Debug Memory Graph.

// Завантажив код, після запуску видалив свайпом кілька контактів і
// у Debug Memory Graph побачив проблему, після чого замінив код у
// класах Contact i Number. В наслідок заміни проблема справді зникла.

