//
//  main.swift
//  4 - Колекції
//
//  Created by Dmytro Lyakhovenko on 10/5/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

// Завдання № 1. Робота з масивами


//1. Опишіть масив fibArray з десяти перших чисел Фібонначі.
var fibArray = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
print(fibArray)

//2. Створіть масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray.
let revArray: [Int] = fibArray.reversed()
print(revArray)

//3. Опишіть масив простих чисел snglArray, які не перевищують число 100.
var snglArray = [Int] (0..<100)
print(snglArray)

//4. Виведіть на екран кількість елементів масиву snglArray.
print(snglArray.count)

//5. Виведіть на екран 10-й елемент масив snglArray.
print(snglArray[9])

//6. Виведіть на екран підмасив елементів масиву snglArray, починаючи з 15-го та закінчуючи 20-м елементами.
print(snglArray [14...19])

//7. Створіть масив rptArray з 10 елементів, що рівні 10-му елементу масиву snglArray.
var rptArray = [Int] (repeating: snglArray[9], count: 10)

//8. Опишіть масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:).

//var oddArray [1, 3, 5, 7, 9]
var oddA = [Int] (0..<10)
var oddArray = oddA.enumerated().filter { $0.0 % 2 != 0 }.map{ $0.1 }
print(oddArray)

//9. Додайте до масиву oddArray число 11.
oddArray.append(11)
print(oddArray)

//10. Додайте до масиву oddArray числа 15, 17, 19 у якості підмасиву.
var oddArray2: [Int] = [15, 17, 19]
oddArray.append(contentsOf: oddArray2)
print(oddArray)

//11. Вставте у масив oddArray число 13 на позицію між числами 11 та 15.
oddArray.insert(13, at: 6)
print(oddArray)

//12.Видаліть елементи масиву oddArray, пичинаючи з 5-го та закінчуючи 8-им (невключно) елементами.
oddArray.removeSubrange(5...7)
print(oddArray)

//13. Видаліть останній елемент масиву oddArray та виведіть його на екран.
print(oddArray.removeLast())
print(oddArray)

//14.Замініть елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4.
oddArray.replaceSubrange(2...5, with: [2, 3, 4])
print(oddArray)

//15. Видаліть елемент масиву oddArray, який рівний числу 3.
oddArray.removeAll(where: { $0 % 2 == 1 })
print(oddArray)

//16. Виведіть значення, яке визначає, чи міститься число 3 у масиві oddArray.
let hasThree = oddArray.contains(3)
print(hasThree)

//17. Виведіть на екран рядкове представлення масиву oddArray
var stringArray = oddArray.map  { (String($0)) }
print(stringArray)
