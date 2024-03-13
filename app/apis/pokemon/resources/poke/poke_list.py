import requests
from flask_restful import Resource


class PokeList(Resource):
    @classmethod
    def get(cls):
        r = requests.get("https://pokeapi.co/api/v2/pokemon")
        return r.json()
