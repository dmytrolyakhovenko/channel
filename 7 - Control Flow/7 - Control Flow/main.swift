//
//  main.swift
//  7 - Control Flow
//
//  Created by Dmytro Lyakhovenko on 10/16/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

/* Завдання № 1. Створити функцію, яка приймає число та повертає його факторіал.
    Реалізація функції не повинна викликати жодну вбудовану математичну функцію
    мови Swift (наприклад, factn). */


func factorialOfValue (value: Int) -> Int {
    if value == 0 {
        return 1
    }
    var product = 1
    for i in 0..<value {
        product += product * i
    }
    return product
}
print(factorialOfValue(value: 8))


/* Завдання № 2. Створити функцію сортування масиву, яка приймає масив чисел та сортує його.
    Алгоритм сортування визначається на етапі виклику функції.
    Сортування виконувати двома алгоритмами: бульбашкою та вибором.
    Сортування бульбашкою є алгоритмом за замовчуванням.
    Реалізація функції не повинна викликати жодну вбудовану функцію мови Swift (наприклад, типу sort, swap). */


var array = [10, 22, 50, 9, 33, 41, 21, 40, 80, 60, 26]
func sortArray (selectionSort: Bool = false, array: [Int]) -> [Int] {
    var array2 = array
    if selectionSort == false {
            for _ in 0..<array2.count {
                for j in 0..<array2.count - 1 {
                    let number = array2 [j]
                    let nextNumber = array2 [j + 1]
                    if number > nextNumber {
                        array2 [j] = nextNumber
                        array2 [j + 1] = number
                }
            }
        }
        return array2
    } else {
        var min = 0
        var index = 0
        for i in 0..<array2.count {
            min = array2 [i]
            for j in (i + 1)..<array2.count {
                if array2 [j] < min {
                    min = array2 [j]
                    index = j
                }
            }
            array2 [index] = array2 [i]
            array2 [i] = min
        }
        return array2
    }
}
print(sortArray(selectionSort: true, array: array))

/* Завдання № 3. Створити функцію, яка аналізує вхідний символ на його
належність до літер або цифр, належність до літер англійської чи
української абеток, належність до літер великого або малого регістрів.
Результатом виконання функції є результати аналізу. Функція повинна
здійснювати зрозумілий користувачу вивід на екран результатів аналізу. */

func analyseSymbol (symbol: Character) -> () {
    switch symbol {
    case "0"..."9":
        print("\(symbol) - is a digit")
    case "A"..."Z" :
        print("\(symbol) - is a large case of English alphabet")
    case "А"..."Я" :
        print("\(symbol) - is a large case of Ukrainian alphabet")
    case "a"..."z" :
        print("\(symbol) - is a small case of English alphabet")
    case "а"..."я" :
        print("\(symbol) - is a small case of Ukrainian alpgabet")
    default:
        print("unknown character")
    }
}
analyseSymbol(symbol: "-")


/* Завданна № 4. Створити функцію, яка аналізує вхідний рядок на кількість
 входжень кожного символа. Результатом виконання функції є таблиця
 усіх символів рядка та кількостей їх входжень. */
 
 func analyseString () {
    let response = readLine(strippingNewline: true) ?? ""
    var analyse = [Character: Int] ()
        for i in response {
            if analyse.keys.contains(i) {
                analyse[i]! += 1
            } else {
                analyse[i] = 1
            }
    }
        print(analyse)
 }
