func diagonalDifference(arr: [[Int]]) -> Int {
    
    var leftSum: Int = 0
    var rightSum: Int = 0

    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            if i == j {
                leftSum += arr[i][j]
            }
            if i == arr.count - j - 1 {
                rightSum += arr[i][j]
            }
        }
    }
    
    return abs(leftSum - rightSum)
}