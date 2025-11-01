print("main.py started, initializing libraries...")

from yandex_music import Client 


with open("api.key") as f:
    key = f.read()

print("initializing yandex api")
client = Client(key).init()

client.users_likes_tracks()[0].fetch_track().download('example.mp3')