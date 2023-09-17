# https://leetcode.com/problems/daily-temperatures/?envType=study-plan-v2&envId=leetcode-75

"""
Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.
"""

from typing import List

class Solution:
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        answers = [0] * len(temperatures)
        stack = []
        
        for (i, v) in enumerate(temperatures):
            while stack and temperatures[stack[-1]] <  v:
                idx = stack.pop()
                
                answers[idx] = i - idx
                
            stack.append(i)
                
                
        return answers