func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    precondition(integers.count > firstIndex, "firstIndex is out of range fi=\(firstIndex) max=\(integers.count)")
    precondition(integers.count > firstIndex, "secondIndex is out of range si=\(firstIndex) max=\(integers.count)")

    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func sort(array: inout [String]) {
    for pass in 0 ..< array.count {
        for y in stride(from: pass, to: 0, by: -1) {
            let x = y - 1
            let xValue = array[y - 1]
            let yValue = array[y]

            if xValue > yValue {
                swap(integers:&array, firstIndex: x, secondIndex: y)
            }
        }
    }
}

var unsorted = readInput()
sort(array: &unsorted)
print(unsorted)
