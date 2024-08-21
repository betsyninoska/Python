import requests
print("********************Ruta cookies*************************")
URL = 'https://httpbin.org/cookies'

print("*****************a enviar*************************")
cookies = {
    'session': 'SesionX',
    'name': 'Betsy',
    'email': 'betsyninoska.x@gmail.com',
}
print("********************Traer los valores*************************")
response = requests.get(URL, cookies=cookies)

print("********************Verificar si no hubo problemas imprimir*************************")
if response.status_code == 200: 
    print(response.json()) 
