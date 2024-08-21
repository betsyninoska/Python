import requests
URL = 'http://httpbin.org/get'
response = requests.get(URL) #get
print("********************RESPONSE*************************")
print(response)

print("*****************STATUS CODE*************************")
print(response.status_code)
print("************************TEXT*************************")
print(response.text)
print("************************JSON*************************")
payload = response.json()
print("**********************PAYLOAD************************")
print(payload.get('origin')) # dict
print(response.url)
