import requests

URL ='https://httpbin.org/get'

params = {
    'nombre': 'Betsy Ninoska',
    'passwd': 'abc123',
    'correo': 'betsyninoska.x@gmail.com'
}

response = requests.get(URL, params=params)

if response.status_code == 200:
        print('%%%%%%%%%%%%%%%%%%%% Estatus 200%%%%%%%%%%%%%%%%%%%')
        payload = response.json()
        params = payload['args']
        print('%%%%%%%%%%%%%%%%%%% Imprime el json antes del payload %%%%%%%%%%%%%%%%%%%')
        print(payload)
        print('%%%%%%%%%%%%%%%%%%% Imprime arg con payload %%%%%%%%%%%%%%%%%%%')
        print(params)