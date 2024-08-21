import requests
URL= 'https://httpbin.org/get?nombre=betsy&passwd=abc123&email=eduardo'
response = requests.get(URL)

if response.status_code ==200:
        print(response.text)