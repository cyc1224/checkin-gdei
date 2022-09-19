#本程序用于推送服务(ServerChan)
#coding=utf-8

from multiprocessing.sharedctypes import Value
from selenium import webdriver
import time
import os
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By

opt = webdriver.ChromeOptions()
opt.add_argument('--headless')
opt.add_argument('--no-sandbox')
opt.add_argument('--disable-gpu')
opt.add_argument('--disable-dev-shm-usage')
browser = webdriver.Chrome('/snap/bin/chromium.chromedriver',options=opt)
browser.get("https://sct.ftqq.com/login")
time.sleep(2)
a=browser.find_element(By.XPATH, "/html/body/div/div[2]/div//img").get_attribute("src")
print(a)
os.system('qrencode -m 2 -t utf8 <<< %a' %(a))
try:
    input("Press enter to continue after scan the QRcode")
except SyntaxError:
    pass
browser.find_element(By.XPATH, "/html/body/div/div[2]/div/div[2]/button").click()
time.sleep(1)
browser.find_element(By.XPATH, "/html/body/div/div[2]/div/div[2]/div/div/button").click()
time.sleep(0.5)
id=browser.find_element(By.XPATH ,"/html/body/div/div[2]/div/div[2]/div/div/div/input").get_attribute("value")
f = open("key.txt","w")
f.write("%s" % (id))
f.close()
print(id)
time.sleep(2)
browser.quit()
