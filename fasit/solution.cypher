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

Hvem har støttet Venstre og Fremskrittspartiet
MATCH (n) -[:DONATED]-> (m:`Party` {name:'Venstre'}),
n -[:DONATED]-> (s:`Party` {name:'Fremskrittspartiet'})
RETURN n.name

Alle personer som har støttet et lokalparty
MATCH (n:`Person`) -[:DONATED]-> (m:`LocalParty`) -[:LOCAL_DIVISON_OF]->(s:`Party`)
RETURN n.name


Alle som støttet høyre og frp, eller et lokalparti av høyre og frp
(ikke helt korrekt løsning. Denne håndterer ikke at en person har støttet høyre sentralt samt et lokallag av frp)
MATCH (n) -[:DONATED]-> (:`Party` {name:'Høyre'}),
n -[:DONATED]-> (:`Party` {name:'Fremskrittspartiet'})
return n.name as name
UNION
MATCH (m) -[:DONATED]-> (:`LocalParty`) --> (:`Party` {name:'Høyre'}),
m -[:DONATED]-> (:`LocalParty`) --> (:`Party` {name:'Fremskrittspartiet'})

RETURN m.name as name
