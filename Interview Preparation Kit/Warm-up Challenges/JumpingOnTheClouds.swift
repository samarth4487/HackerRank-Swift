func jumpingOnClouds(c: [Int]) -> Int {

    var steps: Int = 0
    var currentIndex: Int = 0

    for (index, value) in c.enumerated() {
        if index < currentIndex {
            continue
        }

        if c.count > index + 2 {
            if c[index + 2] == 0 {   
                steps += 1
                currentIndex += 2
            } else {
                if c.count > index + 1 {
                    if c[index + 1] == 0 {
                        steps += 1
                        currentIndex += 1
                    }
                }
            }
        } else if c.count > index + 1 {
            if c[index + 1] == 0 {
                steps += 1
                currentIndex += 1
            }
        }     
    }

    return steps
}