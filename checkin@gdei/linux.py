#本程序用于广东第二师范学院健康填报打卡
#coding=utf-8

import imp
from selenium import webdriver
import time
import os
import urllib.parse
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By

#id@here

opt = webdriver.ChromeOptions()
opt.add_argument('--headless')
opt.add_argument('--no-sandbox')
opt.add_argument('--disable-gpu')
opt.add_argument('--disable-dev-shm-usage')
browser = webdriver.Chrome('/snap/bin/chromium.chromedriver',options=opt)

browser.get("https://tb.gdei.edu.cn")
time.sleep(2)
browser.find_element(By.NAME, "username").send_keys("#username#")
browser.find_element(By.NAME, "password").send_keys("#password#")
browser.find_element(By.ID, "btnSubmit").click()
time.sleep(2)
browser.switch_to.frame('iframe0')
browser.find_element(By.XPATH, "//button[@onclick='yjtb()']").click()
time.sleep(1)
browser.get("https://tb.gdei.edu.cn/system/yqdc/yjtb")
time.sleep(1)
a=int(browser.find_element(By.XPATH ,".//pre").text)
print(a)
f = open("key.txt","r")
if a==3:
    url='https://sctapi.ftqq.com/'+f.read()+'.send?title='+urllib.parse.quote('健康填报状态:今天打卡成功了')
    browser.get(url)
elif a==2:
    url='https://sctapi.ftqq.com/'+f.read()+'.send?title='+urllib.parse.quote('健康填报状态：打卡失败，需要手动健康填报')
    browser.get(url)
f.seek(0)
f.close()
browser.get("https://tb.gdei.edu.cn/logout")
browser.quit()
