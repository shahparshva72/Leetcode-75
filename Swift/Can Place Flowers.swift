// https://leetcode.com/problems/can-place-flowers/?envType=study-plan-v2&envId=leetcode-75

/*
You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
*/

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var count = 0
    var flowerbed = flowerbed 
    let length = flowerbed.count

    var i = 0
    while i < length {
        if flowerbed[i] == 0 {
            let emptyRightPlot = (i == length - 1) || (flowerbed[i+1] == 0)
            let emptyLeftPlot = (i == 0) || (flowerbed[i-1] == 0)

            if emptyLeftPlot && emptyRightPlot {
                flowerbed[i] = 1
                count += 1
                if count >= n {
                    return true
                }
                i += 1
            }
        }
        i += 1
    }

    return count >= n
}


print(canPlaceFlowers([1, 0, 0, 0, 1], 1))
print(canPlaceFlowers([1, 0, 0, 0, 1], 2))