func hourglassSum(arr: [[Int]]) -> Int {

    var sum: Int = -999

    for i in 0..<4 {
        for j in 0..<4 {
            let localSum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            if localSum > sum {
                sum = localSum
            }
        }
    }

    return sum
}