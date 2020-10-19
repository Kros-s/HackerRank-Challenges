import UIKit

let grades = [73,
67,
38,
33]

func gradingStudents(grades: [Int]) -> [Int] {
    return grades.compactMap { evaluate(grade: $0) }
}

func evaluate(grade: Int) -> Int {
    var grade = grade
    guard grade >= 38 else { return grade }
    let remainder = 5 - grade % 5
    grade += remainder < 3 ? remainder : 0
    return grade
}

gradingStudents(grades: grades)
