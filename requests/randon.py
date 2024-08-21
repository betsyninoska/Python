import requests

URL =   'https://randomuser.me/api'
print('%%%%%%%%%%%%%%%%%%%%%%%% Se ingresa la cantidad de usuarios %%%%%%%%%%%%%%%%%%%%%%%%%%%%')

count= int(input('Ingresa la cantidad de usuarios'))
response =  requests.get(URL, params = {'results': count})

if response.status_code ==200:
    print('%%%%%%%%%%%%%%%%%%%%%%%% se lee el Json %%%%%%%%%%%%%%%%%%%%%%%%%%%%')
    payload = response.json()
    print('%%%%%%%%%%%%%%%%%%%%%%%% Payload de los resultados %%%%%%%%%%%%%%%%%%%%%%%%%%%%')
    results = payload.get('results')

    print('%%%%%%%%%%%%%%%%%%%%%%%% Por cada usuario trae titulo, nombre y apellido %%%%%%%%%%%%%%%%%%%%%%%%%%%%')
    for user in results:
        name = user.get('name') 
        print("{title} {first} {last}".format(**name))
        print('###################################')