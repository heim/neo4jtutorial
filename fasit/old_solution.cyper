Finn alle som har støttet høyre

Korrekt løsning
MATCH (n) -[:DONATED]-> (m:`Party` {name:'Høyre'})
RETURN n

Dårlig løsning ("Tablescan"):
MATCH (n) --> (m:`Party`)
where m.name='Høyre'
RETURN n


Hvilke partier har Christen Sveaas støttet?
match (n {name:'Christen Sveaas'}) --> m
return m.name;

Sortert oversikt over hvor mange partier en person har støttet, sortert
MATCH (n:`Person`) --> (m:`Party`)
WITH n, count(m) as parties
RETURN n.name, parties
ORDER BY parties DESC

Alle som har støttet forskjellige partier.

Hvilke partier har flest givere?
Hvilket parti får mest penger?
Hvilket lokallag får mest penger?
Hvilket parti får mest penger totalt sett?
Hvem er de største giverne aggregert og sortert?

Hvem har støttet Venstre og Fremskrittspartiet
MATCH (n) -[:DONATED]-> (m:`Party` {name:'Venstre'}),
n -[:DONATED]-> (s:`Party` {name:'Fremskrittspartiet'})
RETURN n.name

Alle personer som har støttet et lokalparty
MATCH (n:`Person`) -[:DONATED]-> (m:`LocalParty`) -[:LOCAL_DIVISON_OF]->(s:`Party`)
RETURN n.name

Alle som har støttet et lokallag og moderorganisasjonen
Alle som har støttet et lokallag, hovedpartiet og et annet parti. (Fagfobundet)

Alle som støttet høyre og frp, eller et lokalparti av høyre og frp
(ikke helt korrekt løsning. Denne håndterer ikke at en person har støttet høyre sentralt samt et lokallag av frp)
MATCH (n) -[:DONATED]-> (:`Party` {name:'Høyre'}),
n -[:DONATED]-> (:`Party` {name:'Fremskrittspartiet'})
return n.name as name
UNION
MATCH (m) -[:DONATED]-> (:`LocalParty`) --> (:`Party` {name:'Høyre'}),
m -[:DONATED]-> (:`LocalParty`) --> (:`Party` {name:'Fremskrittspartiet'})

RETURN m.name as name


Hvem har støttet et parti flere ganger?
Alle som har støttet nøyaktig samme partier som Christen Sveaas



Viderekommende:
1. List alle som har bidratt til alle partier
2. Identifiser hvilke av giverne som har verv i de politiske partiene og opprett en relasjon mellom parti og person
3. Finn hvilket parti som har flest med verv i partiet som givere
4. Finn hvilket parti som får mest/minst fra de med verv
5. Har noen med verv gitt til andre partier?


