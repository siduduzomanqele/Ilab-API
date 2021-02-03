import requests
import json

def get_all_pets(status):
    url= "https://petstore.swagger.io/v2/pet/findByStatus?status=%s" % status
    headers={"Content-Type":"application/json"}
    response = requests.get(url = url, headers=headers,verify=False).json()
    return response

def get_pet(id):
    url= "https://petstore.swagger.io/v2/pet/%s" % id
    headers={"Content-Type":"application/json"}
    response = requests.get(url = url, headers=headers,verify=False).json()
    return response

