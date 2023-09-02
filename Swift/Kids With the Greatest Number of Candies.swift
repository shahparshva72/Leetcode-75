// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75

/*
There are n kids with candies. You are given an integer array candies, where each candies[i] represents the number of candies the ith kid has, and an integer extraCandies, denoting the number of extra candies that you have.

Return a boolean array result of length n, where result[i] is true if, after giving the ith kid all the extraCandies, they will have the greatest number of candies among all the kids, or false otherwise.

Note that multiple kids can have the greatest number of candies.
*/

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let maxNum = candies.max()
    
    var result = [Bool]()
    
    for i in candies{
        if let max = maxNum, i + extraCandies >= max {
            result.append(true)
        }
        else {
            result.append(false)
        }
    }
    
    return result
}

print(kidsWithCandies([2, 3, 5, 1, 3], 3))
