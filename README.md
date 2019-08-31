# e-colle

Application web server-side pour la gestion des notes de colles en CPGE basée sur le framework python Django.
Langage: python3

## Installation avec Docker

On commence par créer les containers et initialiser la base de données

```shell
docker-compose run web python manage.py migrate
```

puis on lance le serveur
```shell
docker-compose up
```
