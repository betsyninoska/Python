import requests
URL = 'https://httpbin.org/get'


print('Obtiene el response de la url con requests.get')
response = requests.get(URL)
print('Imprime el response')
print(response)
print('Imprime el status de response')
print(response.status_code)
print('Imprime el texto del response')
print(response.text)