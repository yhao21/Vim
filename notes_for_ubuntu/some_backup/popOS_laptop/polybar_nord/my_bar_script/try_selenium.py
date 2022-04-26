from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.expected_conditions import presence_of_element_located
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup
import time



#This example requires Selenium WebDriver 3.13 or newer




#options = Options()
#options.page_load_strategy = 'eager'
#driver = webdriver.Chrome(options=options)
#wait = WebDriverWait(driver, 10)
#driver.get("https://news.sina.com.cn/roll/#pageid=153&lid=2509&k=&num=50&page=1")
#html = driver.page_source
#
#with open('sina.html', 'w', encoding = 'utf-8') as f:
#    f.write(html)
#
#driver.quit()



news_list = []

#with open('baidu.html', 'r') as f:
with open('sina.html', 'r') as f:
    html = f.read()

soup = BeautifulSoup(html, 'html.parser')
main_page = soup.find('div',{'id':'pL_Main'}).find('div', {'class':'d_list_txt'})


uls = main_page.find_all('ul')
for ul in uls:
    lis = ul.find_all('li')
    for li in lis:
        content = li.find('span', {'class':'c_tit'}).string
        news_list.append(content)

while True:
    for news in news_list:
        print(news)
        time.sleep(0.5)









