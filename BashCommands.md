# Bash Command Line Cheat Sheet

## Alapvető parancsok
```bash
pwd                     # Aktuális könyvtár megjelenítése
ls                      # Könyvtár tartalmának listázása
ls -la                  # Részletes lista, rejtett fájlokkal
cd <directory>          # Könyvtárváltás
cd ~                    # Ugrás a home könyvtárba
cd ..                   # Visszalépés az előző könyvtárba
```

### Fájlok kezelése

```
touch <file>            # Új, üres fájl létrehozása
cp <source> <destination> # Fájl másolása
mv <source> <destination> # Fájl áthelyezése vagy átnevezése
rm <file>               # Fájl törlése
rm -r <directory>       # Könyvtár törlése tartalommal együtt
cat <file>              # Fájl tartalmának megjelenítése
nano <file>             # Szövegszerkesztő megnyitása
```

### Könyvtárak kezelése

```
mkdir <directory>       # Új könyvtár létrehozása
rmdir <directory>       # Üres könyvtár törlése
rm -rf <directory>      # Könyvtár törlése tartalommal együtt
```

### Fájlok keresése

```
find . -name <filename> # Fájl keresése a jelenlegi könyvtárban
locate <filename>       # Fájl keresése az adatbázisból (updatedb szükséges)
grep "szöveg" <file>    # Szöveg keresése fájlban
grep -r "szöveg" <directory> # Szöveg keresése könyvtárban rekurzívan
```

### Fájl jogosultságok és tulajdonosok kezelése

```
chmod u+x <file>        # Fájl futtathatóvá tétele a tulajdonos számára
chmod 755 <file>        # Jogosultságok beállítása (rwxr-xr-x)
chown <user>:<group> <file> # Fájl tulajdonosának módosítása
```

### Rendszer információk

```
df -h                   # Lemezterület kihasználtságának megtekintése
du -sh <directory>      # Könyvtár méretének megtekintése
free -h                 # Memória kihasználtság megtekintése
uname -a                # Rendszerinformációk megtekintése
top                     # Futó folyamatok és erőforrás-használat
ps aux                  # Összes futó folyamat listázása
```

### Feladatok és folyamatok kezelése

```
kill <PID>              # Folyamat leállítása PID alapján
killall <process_name>  # Folyamatok leállítása név alapján
bg                      # Folyamat futtatása háttérben
fg                      # Folyamat előtérbe hozása
jobs                    # Háttérben futó feladatok listázása
```

### Hálózatkezelés

```
ping <hostname>         # Elérhetőség tesztelése
ifconfig                # Hálózati interfészek megjelenítése
ip a                    # Hálózati interfészek megtekintése (újabb rendszereken)
curl <url>              # URL tartalmának lekérése
wget <url>              # Fájl letöltése URL-ről
ssh <user>@<host>       # Távoli szerverhez kapcsolódás SSH-val
scp <file> <user>@<host>:<path> # Fájl másolása távoli szerverre
```

### Csomagkezelés (Debian alapú rendszereken)

```
sudo apt update         # Csomaglisták frissítése
sudo apt upgrade        # Telepített csomagok frissítése
sudo apt install <package> # Csomag telepítése
sudo apt remove <package>  # Csomag eltávolítása
sudo apt autoremove     # Felesleges csomagok törlése
```

### Kimenet kezelés és átirányítás

```
echo "Hello, Világ!"    # Szöveg kiírása a konzolra
echo "Valami" > file.txt # Szöveg írása fájlba (felülír)
echo "Valami" >> file.txt # Szöveg hozzáfűzése fájlhoz
cat file.txt | grep "szó" # Kimenet átirányítása másik parancsnak
command > output.txt    # Kimenet fájlba irányítása
command >> output.txt   # Kimenet hozzáfűzése fájlhoz
command 2> error.log    # Hibakimenet fájlba irányítása
```

### Hasznos rövidítések

```
history                 # Parancselőzmények megtekintése
!!                      # Előző parancs újrafuttatása
!<number>               # Adott sorszámú parancs újrafuttatása a history-ból
alias ll='ls -la'       # Alias létrehozása
source ~/.bashrc        # Bash konfiguráció újratöltése
```