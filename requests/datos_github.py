import requests
URL= 'https://api.github.com/users/betsyninoska'
response = requests.get(URL)

if response.status_code ==200:
        print(response.text)
        payload = response.json()
        
        print('%%%%%%%%%%%%%Obtener dato especifico %%%%%%%%%%%%')
        print(payload['login'])
        print(payload['avatar_url'])
        print(payload['html_url'])