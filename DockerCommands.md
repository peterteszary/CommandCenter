# Docker Cheat Sheet

## Alap parancsok
```
docker version           # Docker verziójának megtekintése
docker info              # Részletes információk a Docker telepítésről
docker help              # Általános segítség a Docker használatához
```
### Konténerek kezelése
```
docker ps                # Futtató konténerek listázása
docker ps -a             # Minden (futó és leállított) konténer listázása
docker run <image>       # Új konténer indítása a megadott image-ből
docker start <container> # Leállított konténer újraindítása
docker stop <container>  # Futtató konténer leállítása
docker restart <container> # Konténer újraindítása
docker rm <container>    # Leállított konténer törlése
docker rm -f <container> # Futtató konténer kényszerített törlése
docker logs <container>  # Konténer logjainak megtekintése
docker exec -it <container> bash # Belépés egy futó konténerbe bash terminállal
```

### Image-ek kezelése
```
docker images            # Elérhető image-ek listázása
docker pull <image>      # Image letöltése a Docker Hub-ról
docker build -t <name> . # Image építése Dockerfile-ból
docker rmi <image>       # Image törlése
docker tag <image> <new_tag> # Image átnevezése vagy címkézése
docker push <image>      # Image feltöltése a Docker Hub-ra
```
### Hálózatok és volumenek kezelése
```
docker network ls        # Docker hálózatok listázása
docker network create <name> # Új hálózat létrehozása
docker network rm <name> # Hálózat törlése
```
docker volume ls         # Docker volumenek listázása
docker volume create <name> # Új volumen létrehozása
docker volume rm <name>  # Volumen törlése

```
### Tisztítás és karbantartás
```
docker system df         # Lemezhasználat megtekintése
docker system prune      # Nem használt konténerek, image-ek és hálózatok törlése
docker volume prune      # Nem használt volumenek törlése
docker network prune     # Nem használt hálózatok törlése
```
### Docker Compose
```
docker-compose up        # Konténerek indítása a docker-compose.yml alapján
docker-compose down      # Konténerek leállítása és törlése
docker-compose ps        # Docker Compose által kezelt konténerek listázása
docker-compose logs      # Konténerek logjainak megtekintése
docker-compose exec <service> bash # Belépés egy futó konténerbe bash terminállal
```
### Hasznos rövidítések
```
docker ps -q             # Csak a konténer ID-k listázása
docker stop $(docker ps -q) # Összes futó konténer leállítása
docker rm $(docker ps -aq) # Összes konténer törlése
docker rmi $(docker images -q) # Összes image törlése
```