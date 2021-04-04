import requests, time
from bs4 import BeautifulSoup



headers = {'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'}
url = 'http://news.baidu.com/'


#r = requests.get(url, headers = headers)
#html = r.text
#
#with open('baidu_new.html', 'w', encoding = 'utf-8') as f:
#    f.write(html)
#
#
#
#
with open('baidu_new.html', 'r', encoding = 'utf-8') as f:
    html = f.read()


news_list = []

soup = BeautifulSoup(html, 'html.parser')
main_page = soup.find('div',{'id':'pane-news'})

hotnews = main_page.find('div', {'class':'hotnews'})
lis = hotnews.find_all('li')
for li in lis:
    content = ''
    a_tags = li.find('strong').find_all('a')
    for a in a_tags:
        content += a.string

    news_list.append(content)



othernews = main_page.find_all('ul', {'class':'ulist focuslistnews'})
for news_block in othernews:
    lis = news_block.find_all('li')
    for li in lis:
        ## sometimes .string does not work. So, try .text
        content = li.find('a').text
        news_list.append(content)


#while True:
#    for news in news_list:
#        print(news)
#        time.sleep(0.1)



for news in news_list:
    print(news)
    time.sleep(0.1)








