// Naive Solution O(n2)
func minimumSwaps(arr: [Int]) -> Int { 

    var swaps: Int = 0
    var mutableArray = arr

    for i in 0..<mutableArray.count {
        let dummyIndex = i + 1
        if dummyIndex != mutableArray[i] {    
            for j in (i+1)..<mutableArray.count {
                if mutableArray[j] == dummyIndex {
                    mutableArray.swapAt(i,j)
                    swaps += 1
                    break
                }
            }
        }
    }

    return swaps
}

// Efficient Solution O(n)
func minimumSwap(arr: [Int]) -> Int {

    var i: Int = 0
    var swaps: Int = 0
    var mutableArray = arr

    while i < mutableArray.count - 1 {
        let dummyIndex = i + 1
        if dummyIndex != mutableArray[i] {
            mutableArray.swapAt(i, mutableArray[i] - 1)
            swaps += 1
        } else {
            i += 1
        }
    }

    return swaps
}
