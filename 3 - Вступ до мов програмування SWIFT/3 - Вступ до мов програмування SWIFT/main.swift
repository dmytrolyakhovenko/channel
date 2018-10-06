//
//  main.swift
//  Created by Dmytro Lyakhovenko on 10/4/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

//  Завдання № 1 Створити програму для виводу консольного повідомлення «Hello, World»

//  Завдання № 1.1 Використати Swift для проектів орієнтованих на CommandLine Tool.

print("Hello, World!")

//  Завдання № 1.2 Оглянути мінімальний набір компонентів проекту

//1  print
//2 (
//3  «Hello World!»
//4  )


//  Завдання № 2 Робота з типами. Опишіть сутності, які відповідають критеріям наведеним нижче.

//1. Ціле десяткове число 12 з мінімально необхідною розрядною сіткою.
let number1 : UInt8 = 12

//2. Ціле десяткове число -100 з мінімально необхідною розрядною сіткою.
let number2 : Int8 = -100

//3. Ціле шістнадцяткове число, що рівне цілому десятковому числу 128.
let number3 : Int = 0x80

//4. Мінімальне десяткове значення числа, яке знаходиться у межах 16-розрядної сітки.
let number4 = Int16.min

//5. Максимальне десяткове значення числа, яке знаходиться у межах 64-розрядної сітки.
let number5 = Int64.max

//6. Число з плаваючою крапкою 10,235.34 з мінімально необхідною розрядною сіткою.
let number6 : Float = 10235.24

//7. Символ “а”.
let char : Character = "a"

//8. Рядок “Hello World”.
let str : String = "Hello, World"

//9. Істина.
let boolean: Bool = true

//10.Число 12 та його рядкове представлення “twelve”.
let strNum12: String = "twelve"


// Завдання № 3 Робота з рядками. Опишіть рядок “Hello World. This is Swift programming language” та виконайте пункти, що описані нижче.

var welcome1 = "Hello World. This is Swift programming language"

//1. Визначити та вивести на екран довжину рядка.
let welcomeLength  = welcome1.count

//2. Замінити кожне входження символа “i” на символ “u”.
let iReplace = welcome1.replacingOccurrences(of: "i", with: "u")

//3. Видалити 4-й, 7-й та 10-й символи.
let startIndex = welcome1.startIndex
let beforeEndIndex = welcome1.index(before: welcome1.endIndex)
let charFour = welcome1.remove(at: welcome1.index(welcome1.startIndex, offsetBy: 3))
let charSeven = welcome1.remove(at: welcome1.index(welcome1.startIndex, offsetBy: 6))
let charTen = welcome1.remove(at: welcome1.index(welcome1.startIndex, offsetBy: 9))

//4. Додати рядок “ (modified)” до існуючого рядка.
welcome1 += " (modified)"

//5. Вивести значення, що визначає чи існуючий рядок є пустим.
print(welcome1.isEmpty)

//6. Додати символ “.” до кінця існуючого рядка.
welcome1.insert(".", at: welcome1.endIndex)

//7. Вивести значення, що визначає чи рядок починається з підрядка “Hello”.
let prefix = String(welcome1.prefix(5))

//8. Вивести значення, що визначає чи рядок закінчується підрядком “world.”
let suffix = String(welcome1.suffix(5))

//9. Вставити символ “-“ після 10-го символа.
welcome1.insert("-", at: welcome1.index(welcome1.startIndex, offsetBy: 9))

//10.Замінити послідовність “This is” послідовністю “It is”
var welcome2 = welcome1.replacingOccurrences(of: "This is", with: "It is")

//11.Вивести 10-й та 15-й симоли існуючого рядка.
let startIndex2 = welcome2.startIndex
let endIndex2 = welcome2.index(before: welcome2.endIndex)
let indexTen = welcome2.index(welcome2.startIndex, offsetBy: 9)
print (welcome2[indexTen])
let indexFifteen = welcome2.index(welcome2.startIndex, offsetBy: 14)
print (welcome2[indexFifteen])

//12.Вивести підрядок, що знаходиться у межах 10-го (включно) та 15-го (невключно) символів.
let range = indexTen..<indexFifteen
let mySubstring = welcome2[range]

// Завдання № 4 Робота з optionals. Виконайте пункти, описані нижче.

//1. Опишіть сутність, що містить або не містить ціле десяткове число integerNumber, але не задає значення за замовчуванням.
var integerNumber: Int? = 10

//2. Опишіть сутність, що містить або не містить число з плавачою крапкою decimalNumber, але не задає значення за замовчування.
var decimalNumber: Double? = 10.22

//3. Присвойте значення числу integerNumber.
integerNumber = 10

//4. Додайте до числа integerNumber те ж значення, використовуючи increment та (або) decrement оператор.
integerNumber! += integerNumber!
print(integerNumber!)

//5. Змініть знак числа на протилежний, використовуючи unary minus або plus оператор.
print(-integerNumber!)

//6. Присвойте значення числу decimalNumber значенням числа integerNumber.
decimalNumber! = Double(integerNumber!)
print(decimalNumber!)

//7. Опишіть сутність pairOrValues, що містить або не містить значення integerNumber та decimalNumber.
var pairOfValues = (integerNumber!, decimalNumber!)
print(pairOfValues)

//8. Перевірте, чи містить сутність pairOfValues цілочислове значення та виведіть його, якщо таке значення існує.
            //???//
            //???//
//9. Перевірте, чи містить сутність pairOfValues значення, що представлене число з плавачою крапкою, та виведіть його, якщо таке значення існує.
            //???//
            //???//
//10. Виведіть значення числа decimalNumber використовуючи optinional binding.
if let a = (decimalNumber) {
    print(a)
}
