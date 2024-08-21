import requests
from settings import * 


code = 'bc01aa4e4ce418408f4d'
URL = 'https;//github.com/login/oauth/access_token'
params = {'client:id'= CLIENT_ID,
          'client_secret': SECRED_ID,
          'CODE': code
          }


headers = {'Accept': 'application/json'}

response = requests.post(URL, params= params, headers = headers)

if response.status_code==200:
    print(response.json())