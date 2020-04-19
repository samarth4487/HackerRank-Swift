func makeAnagram(a: String, b: String) -> Int {

    var charArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var aDict = [String: Int]()
    var bDict = [String: Int]()
    var deletions: Int = 0

    for char in charArray {
        aDict[char] = 0
        bDict[char] = 0
    }

    for char in a {
        var value = aDict[String(char)] as! Int
        value += 1
        aDict[String(char)] = value
    }

    for char in b {
        var value = bDict[String(char)] as! Int
        value += 1
        bDict[String(char)] = value
    }

    for char in charArray {
        if aDict[char] != bDict[char] {
            deletions += abs((aDict[char] as! Int) - (bDict[char] as! Int))
        }
    }

    return deletions
}