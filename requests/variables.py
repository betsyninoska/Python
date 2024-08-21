import requests


print("********************url con las variables*************************")
URL = 'https://httpbin.org/get?nombre=betsy&passwd=abc&email=betsyninoska.x@gmail.com'


print("********************obtener los datos de la url*************************")
response=requests.get(URL)

print("********************Verificar el status de llamado*************************")
if response.status_code == 200:
    
    payload = response.json()
    params = payload['args']
    print(params['nombre'])
    print(params['passwd'])
    print(params['email'])