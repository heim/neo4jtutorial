# Exercises

## Beginner

1. Find everyone who has donated to the party 'Høyre'
MATCH (n)-[:DONATED]->(p:Party {name: "Høyre"})

2. Which parties has 'Christen Sveaas' donated towards.
MATCH (n {name: "Christen Sveaas"})-[:DONATED]->(p)

3. Make a list of persons ordered by how many parties the person has donated money to
MATCH (n:Person)-[donations:DONATED]->(p:Party)


## Intermediate
4. What party has the highest number of donators.
5. And if you connect the local parties?
1. Return those who have donated to multiple parties.

1. Who have donated money to both 'Venstre' and 'Fremskrittspartiet'?
1. Hvem er de største giverne aggregert og sortert?
1. Which Party has gotten the most donations in NOK?
1. Which Party has gotten the highest number of donations? 
1. Which LocalParty has gotten the most donations in NOK?
1. Which LocalParty has gotten the highest number of donations? 

## Advanced

1. Who has donated to 'Fremskrittspartiet' and 'Høyre' including donations to LocalParties?
1. Who has donated money to both a Party and Localparty?
1. Who has donated money to a LocalParty and its 'mother'-Party?
1. Return those who have donated to a LocalParty and another Party not connected to the localparty
1. Return those who have donated to the exact same parties as 'Christen Sveaas'
1. Return those who have made multiple donations to the same party.

## Ninja
1. Make a list of all contributors
1. Find out (Google) who has a connection to a Party (politicians).
1. Make a relationship between the politicians and the corresponding party.
1. What party has the highest number of contributing politicians?
1. What party has the most generous politician?
1. What party gets the most money from their politicians?
1. What party gets the highest percentage of donations from politicians compared to the total amount of donations.
1. Has any of the politicians donated to another party?









