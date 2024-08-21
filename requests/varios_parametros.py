import requests

URL = 'http://httpbin.org/post'
print("********************Parametros*************************")
headers = {'curso':'Curso de python 2.0', 'Version' : 'basico', 'autor':'Betsy Ninoska'}

params = {'Página web':'https://orionserviciosti.com'}

data = {'usuario':'betsyninoska', 'passwd': 'abc'}

response =requests.post(URL, headers=headers,params=params, data=data)

if response.status_code == 200:
  

    payload = response.json()
    print("********************imprime la url*************************")
    print(response.url)    

    print("********************imprime text*************************")
    print(response.text)    

    params = payload['args']

    print("********************imprime HEADERS*************************")
    print(params['headers'])
    #print(params['params'])
    #print(params['data'])



   