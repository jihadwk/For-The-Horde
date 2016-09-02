# -*- coding: UTF-8 -*- 
import os
#列出当前目录下所有的文件
files = os.listdir(".")      
for filename in files:
    portion = os.path.splitext(filename)
    #如果后缀是.txt
    if portion[1] == ".ide":  
        # 重新组合文件名和后缀名   
        newname = portion[0] + ".xml"   
        os.rename(filename,newname)