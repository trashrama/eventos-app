import requests

headers = {
    's_token': '1e312a26f3247d8eccda3b920ec914f944b9337a59ee0c12f0fd49103eae92aa',
}

params = {
    'page': 1,
    'per_page': 10,  # Definir quantos eventos deseja obter por página
    
}

resposta = requests.get('https://api.sympla.com.br/public/v4/events', headers=headers, params=params)

if resposta.status_code == 200:
    dados = resposta.json()
    print(dados)
else:
    print(f"Erro ao acessar a API do Sympla: {resposta.status_code}")
    print(resposta.text)
