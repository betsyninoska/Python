import requests
from getpass import getpass

URL = 'https://httpbin.org/basic-auth/orion/abc123'

password = getpass('Ingresa la contraseña')

session = requests.Session()
session.auth = ('orion', password) # usuario y contraseña

response = session.get(URL)
if response.status_code ==200:
    print(response.json())

if response.status_code == 401:
    print('Error al autenticar')



    
