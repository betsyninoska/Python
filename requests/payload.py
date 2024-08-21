import requests

print("********************Parametros*************************")
payload = {'nombre':'Betsy Ninoska', 'correo' : 'betsyninoska.x@gmail.com', 'sexo':'F'}

response =requests.get("http://httpbin.org/get", params=payload)

if response.status_code == 200:
    print("********************imprime la url*************************")
    print(response.url)    

    print("********************imprime text*************************")
    print(response.text)    


    payload = response.json()
    params = payload['args']
    print(params['nombre'])
    print(params['correo'])
    print(params['sexo'])
