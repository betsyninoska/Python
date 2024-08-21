import requests
URL  = 'https://httpbin.org/post'

data = {'nombre': 'betsy ninoska', 'cedula': '13884670'}

response = requests.post(URL, data= data)

if response.status_code == 200:
        payload = response.json()
        print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IMPRIME EL RESPONSE.TEXT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        print(response.text)

        print('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IMPRIME EL RESPONSE.URL%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
        print(response.url)