//
//  main.swift
//  4 - Множини
//
//  Created by Dmytro Lyakhovenko on 10/5/18.
//  Copyright © 2018 Dmytro Lyakhovenko. All rights reserved.
//

import Foundation

// Завдання № 2. Робота із множинами.


//1. Опишіть множину chSet із символів а, b, c та d.
let chSet: Set<Character> = ["a", "b", "c", "d"]
print(chSet)

//2. Створіть mutable множину mChSet на основі множити chSet.
var mChSet: Set<Character> = ["a", "b", "c", "d"]
print(mChSet)

//3. Виведіть на екран кількість елементів множини mChSet.
print(mChSet.count)

//4. Вставте символ е в множину mChSet.
mChSet.insert("e")
print(mChSet)

//5. Створіть множину srtChSet, яка є відсортованою версією множини mChSet.
var sortChSet = mChSet.sorted()
print(sortChSet)

//6. Видаліть з множини mChSet символ e та виведіть видалений символ на екран.
if let removedChar = mChSet.remove("e") {
    print("\(removedChar)")
}

//7. Видаліть символ d з множини mChSet за його індексом та виведіть рядкове представлення множини mChSet.
let dChar = sortChSet.index(sortChSet.startIndex, offsetBy:3)
print(sortChSet[dChar])

//8. Виведіть відстань у множині mChSet між першим елементом та символом а.
                //???//
                //???//
//9. Вставте символ а в множину mChSet.
mChSet.insert("a")
print(mChSet)

//10. Опишіть множини aSet (зі значеннями One, Two, Three, 1, 2) та bSet (зі значеннями 1, 2, 3, One, Two).
var aSet: Set <String> = ["One", "Two", "Three", "1", "2"]
var bSet: Set <String> = ["1", "2", "3", "One", "Two"]

//11. Створіть множину, яка містить всі спільні елементи для множин aSet та bSet.
print(aSet.intersection(bSet))

//12. Створіть множину, яка містить унікальні елементи у множині aSet по відношенню до множини bSet.Створіть множину, яка містить унікальні елементи у множині bSet по відношенню до множини aSet.
print(aSet.subtract(bSet))
print(bSet.subtract(aSet))

//13. Створіть множину, яка містить елементи, які не є спільними для множин aSet та bSet.
print(aSet.symmetricDifference(bSet))

//14. Створіть множину, яка об'єднує усі елементи множин aSet та bSet.
print(aSet.union(bSet))

//15. Опишіть множини xSet (зі значеннями 2...4), ySet (зі значеннями 1...6), zSet (зі значеннями 3, 4, 2) та x1Set (зі значеннями 5, 6, 7).
let xSet: Set = [2, 3, 4]
let ySet: Set = [1, 2, 3, 4, 5, 6]

let zSet: Set = [3, 4, 2]
let x1Set: Set = [5, 6, 7]

//16. Виведіть значення, які визначають чи множина xSet входить у множину ySet, а також чи множина ySet входить у множину xSet.
print(xSet.isSubset(of: ySet))
print(ySet.isSubset(of: xSet))

//17.Виведіть значення, які визначають чи множина xSet містить множину ySet, а також чи множина ySet містить множину xSet.
print(xSet.isSuperset(of: ySet))
print(ySet.isSuperset(of: xSet))

//18.Виведіть значеня, яке визначає чи множини xSet та zSet є рівними.
print(xSet==zSet)

//19.Виведіть значення, яке визначає чи множина xSet входить у множину zSet, але не є рівною множині zSet.
print(xSet.isStrictSubset(of: zSet))

//20.Виведіть значення, яке визначає чи множина xSet містить множину zSet, але не є рівною множині zSet.
print(xSet.isStrictSubset(of: zSet))
