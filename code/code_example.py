"""
--------------------------------------------------------------------------
文件名：code_example.py
描述：这是一个Python代码示例。

软件信息：
- Python 版本：3.10
- 操作系统：Windows 10
- 使用的库：NumPy, Pandas, Matplotlib
--------------------------------------------------------------------------
"""

#这里是Python脚本的实际代码
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

for i in range(1,5):
    for j in range(1,5):
        for k in range(1,5):
            if( i != k ) and (i != j) and (j != k):
                print (i,j,k)