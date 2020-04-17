func sockMerchant(n: Int, ar: [Int]) -> Int {

    var sockDict = [String: Int]()
    var pairs: Int = 0

    for sock in ar {
        if sockDict["\(sock)"] == nil {
            sockDict["\(sock)"] = 0
        }
        let count = sockDict["\(sock)"] as! Int
        sockDict["\(sock)"] = count + 1
    }

    for (_, value) in sockDict {
        pairs += value/2
    }

    return pairs
}