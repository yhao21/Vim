import requests, time, json





try:
    with open('saved_price', 'r') as f:
        hist_price = json.load(f)
except:
    pass

token_list = ['bitcoin', 'ethereum', 'matic-network']
pricing_token = 'usd'
price_list = []
for token in token_list:
    url = f'https://api.coingecko.com/api/v3/simple/price?ids={token}&vs_currencies={pricing_token}'
    r = requests.get(url)
    data = r.json()
    data = round(data[token][pricing_token], 2)
    price_list.append(data)
    if not token == token_list[-1]:
        time.sleep(5)

df = {i[0]:str(i[1]) for i in zip(token_list, price_list)}
with open('saved_price.json', 'w') as f:
    json.dump(df, f)

a = [f'{i[0]}: {i[1]}' for i in zip(token_list, price_list)]


print('   '.join(a))















