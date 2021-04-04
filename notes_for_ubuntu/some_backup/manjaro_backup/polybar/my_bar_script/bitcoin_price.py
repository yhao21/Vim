import requests, re
from bs4 import BeautifulSoup



url = 'https://coinmarketcap.com/currencies/bitcoin/'
headers = {'user-agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'}


r = requests.get(url, headers = headers)
html = r.text

#with open('coin.html', 'w', encoding = 'utf-8') as f:
#    f.write(html)

#with open('coin.html', 'r') as f:
#    html = f.read()

soup = BeautifulSoup(html, 'html.parser')

coin_table = soup.find('div',{'class':'sc-AxhCb gWdkQy'}).find('table')
price_tr = coin_table.find_all('tr')
b_price = price_tr[0].find('td').string
b_change = price_tr[1].find('td').find('span').string
b_percent_str = str(price_tr[1].find('td').find('span',{'class':'sc-1v2ivon-0 gClTFY'}))
b_percent = re.compile('</span>(.*?)<!-- -->%').findall(b_percent_str)[0]

if '-' in b_change:
    percent_change = '-' + b_percent
    output = b_price + '(%s)' % percent_change
    cred = '\033[91m'
    cend = '\033[0m'
    #print(cred + output + cend)
    print(output)

else:
    percent_change = '+' + b_percent
    output = b_price + '(%s)' % percent_change
    cgreen = '\033[102m'
    cend = '\033[0m'
    #print(cgreen + output + cend)
    print(output)







