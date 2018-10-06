//
//  main.swift
//  4 - Словники
//
//  Created by Dmytro Lyakhovenko on 10/5/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

// Завдання № 3. Робота зі словниками.

//1. Опишіть словник nDict, ключами якого є числові рядкові предсталення чисел від 1 до 5, а відповідними значеннями є рядкові представлення чисел від 1 до 5 на англійській мові (наприклад, 1:One).
let nDict: [Int : String] = [1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 5 : "Five"]

//2. Виведіть на екран значення масиву nDict за ключем 3.
print(nDict[3])

//3. Виведіть на екран значення масиву nDict за індексом ключа 4.
print(nDict[nDict.index(forKey: 4)!])

//4. Створіть mutable словник mNDict на основі словника nDict.
var mNDict = nDict
print(nDict)

//5. Додайте елементи 6:Seven та 7:Six до словника mNDict.
mNDict[6] = "Seven"
mNDict[7] = "Six"
print(mNDict)

//6. Оновіть значення елементів словника mNDict, не використовуючи subscript [], до наступних: 6:Six, 7:Seven, 8:Eight.
mNDict.updateValue("Six", forKey: 6)
mNDict.updateValue("Seven", forKey: 7)
mNDict.updateValue("Eight", forKey: 8)
print(mNDict)

//7. Видаліть елемент за ключем 5 зі словника mNDict.
mNDict.removeValue(forKey: 5)
print(mNDict)

//8. Видаліть елемент за індексом ключа 4 зі словника mNDict.
        //???//
        //???//
//9. Визначіть та виведіть на екран відстань у словнику mNDict між парами значень 1:One та 7:Seven.
        //???//
        //???//
//10.Створіть масив mNDictKeys, елементами якого є усі ключі словника mNDict.
let mNDictKeys = Array(mNDict.keys)

//11.Створіть масив mNDictKeys, елементами якого є усі значення словника mNDict.
let mNDictKeys = Array(mNDict.values)

//12. Виведіть на екран кількість елементів словника mNDict, а також кількість його всіх ключів та його всіх значень.
print(mNDict.count)
        //???//
        //???//

//13. Виведіть на екран рядкове представлення словника mNDict.
print(mNDict.description)
