import requests

URL = 'https://orionserviciosti.com/wp-content/uploads/2024/02/Logo-orion-completo-grande.png'
response = requests.get(URL,stream = True)
if response.status_code == 200:
        with open('images/orion.png', 'wb') as file:
                for chunk in response.iter_content(1024):
                    file.write(chunk)
                    