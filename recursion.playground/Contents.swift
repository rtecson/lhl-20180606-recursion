// Solve factorial function
// (-1)! = Error
// 0! = 1
// 1! = 1
// 2! = 2 * 1
// 3! = 3 * 2 * 1
// 4! = 4 * 3 * 2 * 1
// 5! = 5 * 4 * 3 * 2 * 1
//
// factorial(n) = n * factorial(n-1)

//func factorial(_ number: Int) -> Int {
//    var result = 1
//    for i in 1...number {
//        result = result * i
//    }
//    return result
//}

func factorial2(_ number: Int) -> Int {
    if number == 0 {
        return 1
    }
    return number * factorial2(number - 1)
}

//factorial(3)
//factorial(5)

factorial2(3)



func combinationsForStair(numSteps: Int) -> Int {
    if numSteps <= 0 {
        return 0
    }
    if numSteps == 1 {
        return 1
    }
    if numSteps == 2 {
        return 2
    }
    return combinationsForStair(numSteps: numSteps - 1) + combinationsForStair(numSteps: numSteps - 2)
}

//combinationsForStair(numSteps: -1)
//combinationsForStair(numSteps: 0)
//combinationsForStair(numSteps: 1)
//combinationsForStair(numSteps: 2)
//combinationsForStair(numSteps: 3)
//combinationsForStair(numSteps: 4)
//combinationsForStair(numSteps: 5)
//combinationsForStair(numSteps: 6)
//combinationsForStair(numSteps: 20)


func combinationsForStair2(numSteps: Int) -> Int {
    if numSteps <= 0 {
        return 0
    }
    if numSteps == 1 {
        return 1
    }
    if numSteps == 2 {
        return 2
    }
    var numArray = [Int]()
    numArray.append(0)
    numArray.append(1)
    numArray.append(2)
    for i in 3...numSteps {
        numArray.append(numArray[i-1] + numArray[i-2])
    }
    return numArray[numSteps]
}

combinationsForStair2(numSteps: 0)
combinationsForStair2(numSteps: 1)
combinationsForStair2(numSteps: 2)
combinationsForStair2(numSteps: 3)
combinationsForStair2(numSteps: 4)
combinationsForStair2(numSteps: 5)
combinationsForStair2(numSteps: 6)
combinationsForStair2(numSteps: 50)
