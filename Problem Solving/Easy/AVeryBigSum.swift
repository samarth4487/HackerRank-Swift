func aVeryBigSum(ar: [Int]) -> Int {

    let sum = ar.reduce(0, {total, value -> Int in
        total + value
    })

    return sum
}