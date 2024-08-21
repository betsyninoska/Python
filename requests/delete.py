import requests
URL = 'https://httpbin.org/delete'
response = requests.delete(URL, params = {'nombre': 'Betsy'}, 
                                headers = {'version': '2.0'}, 
                                data = {'id': 1})

if response.status_code == 200:
    print(response.text)
