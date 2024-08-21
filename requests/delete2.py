import requests
URL = 'HTTPS://httpbin.org/delete'
response = requests.delete(URL, params = {'nombre': 'betsy'},
                                headers = {'version': '2.0'},
                                data = {'id': 1} )
if response.status_code == 200:
        print(response.text)