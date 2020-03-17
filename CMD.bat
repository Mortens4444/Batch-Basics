REM Kikapcsolja a kiadott parancsok visszaírását (echozását) a konzolra. Ezt szoktuk legelső utasításként végrehajtani.
@echo off

REM Kiírás a konzolra.
echo "  ___      _o             "
echo "___     _-\<,_            "
echo "___    (_)/ (_)           "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"

REM Fogalmak
REM Könyvtár: Fájlok valamilyen szempontból történő csoportosítására szolgáló tároló. Szinonimák: Mappa, directory, folder.
REM Gyökérkönyvtár: A meghajtókhoz rendelt könyvtárak. Például: C:\, D:\, E:\
REM Aktuális könyvtár: Az a könyvtár, amiben jelenleg dolgozunk. Jele egy darab pont.
REM Szülőkönyvtár: Egy alkönyvtár szülőkönyvtára az a könyvtár, amelyik eggyel felette van a hiearchiában, vagyis amelyik tartalmazza az alkönyvtárat. Például: C:\Temp\KIANO szülőkönyvtára a C:\Temp. Jele két pont.
REM Teljes útvonal (full path): Egy könyvtár teljes neve a szülő és a gyökérkönyvtárral együtt. Például: C:\Users\KIANO\Documents
REM Részleges útvonal (relative path): Minden, ami nem teljes útvonal. Például: . (aktuális könyvtár), .. (szülőkönyvtár), Temp, 
REM Konzol: A parancsvégrehajtó (fekete) felület. Szinonimák: CMD, prompt, command prompt, terminal, parancskezelő, parancssor, parancsfeldolgozó.

REM Megjeleníti a súgót.
help

REM Könyvtár listázása. Megjeleníti az aktuális könyvtárban található alkönyvtárakat és fájlokat.
dir

REM Belép az aktuális könyvtárba. (A gyakorlatban semmi nem változik, mivel eddig is az aktuális könyvtárban voltunk.)
cd .

REM Belép a szülőkönyvtárba. Ha az aktuális könyvtár a C:\Temp\Zokni, akkor ezen parancs hatására C:\Temp lesz az aktuális könyvtár.
cd ..

REM Egyik meghajtóról a másikra átmenni az adott meghajtó jelének beírásával lehet. Például C-ről D-re:
d:

REM cd - Change directory - Könyvtárváltás.
cd d:

REM Könyvtárváltás teljes útvonal megadásával. (Csak akkor működik, ha van a C gyökérkönyvtárban Temp nevű könyvtár.) 
cd C:\Temp

REM Könyvtárváltás részleges útvonal (relative path) megadásával. (Csak akkor működik, ha van az aktuális gyökérkönyvtárban Temp nevű könyvtár és az aktuális könyvtár a gyökérkönyvtár. Például: C:\> )
cd Temp

REM Környezeti változó (ezekről később tanulunk) segítségével lép be a rendszer ideiglenes könyvtárába. Ez mindig működik Windows operációs rendszereken.
cd %TEMP%

REM Az aktuális könyvtártól lefelé a könyvtár-hierarchia faszerkezetét mutatja meg.
tree

REM Kiírja konzolra, hogy: hello
echo hello

REM A hi.txt nevű fájl létrehozása azzal a tartalommal, hogy: hello. Itt valójában a kimenetet (ami alapvetően a konzol) átirányítjuk egy fájlba.
echo hello > hi.txt

REM A hello.txt fájl törlése.
del hello.txt

REM A hi.txt átnevezése hello.txt-re.
ren hi.txt hello.txt

REM md - Make Directory - Könyvtár létrehozása.
md NewFolder

REM A hello.txt fájl másolása az aktuális könyvtárban találhat NewFolder könyvtárba. A * jelzi, hogy ugyanazzal a névvel hozzuk létre, mint az eredetit.
copy hello.txt .\NewFolder\*

REM A hello.txt fájl másolása az aktuális könyvtárban találhat NewFolder könyvtárba, de új névvel, ami hi.txt.
copy hello.txt .\NewFolder\hi.txt

REM A hello.txt áthelyezése az aktuális könyvtárba hello2.txt néven.
move .\NewFolder\hello.txt .\hello2.txt

REM A hello.txt áthelyezése az aktuális könyvtárba hi.txt néven.
move .\NewFolder\hello.txt hi.txt

REM rd - Remove Directory - Eltávolít, töröl egy üres könyvtárat.
rd NewFolder

REM Képernyőtörlés.
cls 
clear

REM Csengőhang lejátszása. Ez nem azonos a ^ és G billentyűk lenyomásával, helyesen CTRL + G.
echo ^G

REM Új parancssor indítása.
cmd

REM Kilépés a command prompt alkalmazásból.
exit

REM Várakozás billentyű leütésre.
pause
