waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

//player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Allgemeine Regeln"];
player createDiarySubject ["policerules","Polizei Prozeduren/Regeln"];
player createDiarySubject ["punishments","Bußgeldkatalog"];
player createDiarySubject ["safezones","Sichere Zonen (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegale Aktivitäten"];
player createDiarySubject ["gangregeln","Gang Rules"];
player createDiarySubject ["shadowdragons","Altis Sicherheitsdienst"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["bugs","Fehler"];
player createDiarySubject ["kompetenzen","Kompetenzen"];
player createDiarySubject ["admins","Der Admin"];
player createDiarySubject ["Preise","Preise"];



player createDiaryRecord [
[
"Preise", //Subsection

"Äpfel 50",
"Heroin 4650",
"salema 45",
"ornate 40",
"mackerel 175",
"tuna 700",
"mullet 250",
"catshark 300",
"rabbit 65",
"oilp 3200",
"turtle 3000",
"water 5",
"coffee 5",
"turtlesoup 1000",
"donuts 60",
"marijuana 4350",
"tbacon 25",
"lockpick 75",
"pickaxe 750",
"redgull 200",
"peach 55",
"cocaine 3000",
"cocainep 4970",
"diamond 750",
"diamondc 3700",
"iron_r 3200",
"copper_r 1500",
"salt_r 1650",
"glass 1450",
"fuelF 500",
"spikeStrip 1200",
"cement 1950",
"goldbar 95000"

]
];


/*  Example
player createDiaryRecord ["", //Container
[
"", //Subsection
"
TEXT HERE<br/><br/>
"
]
];
*/
/*player createDiaryRecord["changelog",
[
"Official Change Log",
"
The official change log can be found on the BIS forums (search Altis Life RPG)
"
]
];

player createDiaryRecord["changelog",
[
"Custom Change Log",
"
This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
"
]
];
*/
player createDiaryRecord ["serverrules",
[
"Exploits", 
"
Hiermit sind Exploits gemeint, fuer welche man nicht nur gekickt wird, sondern gebannt.<br/><br/>

1. Das Entkommen aus dem Knast mit anderen Methoden als die Kaution zu zahlen oder per Helikopter zu fliehen.<br/>
2. Sich selbst umzubringen um aus schwierigen Situationen, wie zum Beispiel einer Festnahme, dem Knast ect. zu entkommen.<br/>
3. Das Veruntreuen von grossen Geldsummen. Sollte dir jemand direkt am Anfang des Spiels grosse Summen Geld schicken, melde dies sofort einem Admin, andernfalls kannst du gebannt werden.<br/>
4. Die Benutzung von gehackten Items. Sollte ein Hacker den Server betreten und Items spawnen, nutze diese nicht, sondern melde es sofort einem Admin.<br/>
5. Der Missbrauch von Bugs. Sollte man dich beim Ausnutzen von Bugs erwischen, ist dies ein Banngrund.<br/>
6. Dauerhaftes RDM. Wenn du dauerhaft Random Deathmatch betreibst, ist dies ein Banngrund.<br/><br/>
"
]
];

player createDiaryRecord["safezones",
[
"Safe Zones",
"
Das absichtliche Sprengen von Fahrzeugen, Raub oder das Toeten anderer Spieler in oder um die folgenden Gebiete wird mit einem Bann bestraft.<br/><br/>

Jeder Waffenladen Umkreis 100 Meter<br/>
Alle Polizei Hauptquartiere Umkreis 100 Meter<br/>
Rebellenstuetzpunkte Umkreis 100 Meter<br/>
Donator Shops Umkreis 100 Meter<br/>
Jedes ATM Umkreis 100 Meter<br/><br/>

Befindet man sich in einer Verfolgungsjagd, gelten Safezones nicht als Safezones! (Gilt für Cops wie für Zivilisten)<br/>
D. h. das Retten in eine Safezone ist nicht erlaubt!<br/><br/>
"
]
];


player createDiaryRecord ["serverrules",
[
"Banngründe", 
"
Betrachtet dies als eure einzige Warnung fuer folgende Faelle.<br/><br/>

1. Hacking<br/>
2. Cheating<br/>
3. Exploiting (unter 'Exploits')<br/>
4. Drei Kicks fuehren auch zu einem Ban.<br/><br/>
5. Ein bestehender VAC Ban führt zu sofortigem Ausschluss (Automatisiert)
"
]
];

player createDiaryRecord ["serverrules",
[
"Polizei Interaktionen", 
"
Die Folgenden Taten koennen zu einem Bann fuehren, im Ermessen der Admins.<br/><br/>

1. Zivilisten koennen verhaftet werden, wenn sie in die Rucksaecke oder Vehikel von Cops schauen. Wenn dies wiederholt vorkommt kann es zu einem Bann fuehren.<br/>
2. Zivilisten koennen verhaftet werden wenn sie Cops im Spiel folgen um ihre Position an andere Spieler zu verraten.<br/>
3. Zivilisten welche ohne RP Hintergrund Cops umbringen. (siehe dazu Abschnitt RDM)<br/>
4. Das Folgen und Belaestigen von Cops ueber einen beliebingen Zeitraum wird durch einen Bann geahndet.<br/>
5. Das aktive Blockieren von Cops kann zur Verhaftung fuehren. Bei wiederholtem Blockieren kann es zu einem Bann fuehren<br/><br/>
"
]
];

player createDiaryRecord ["serverrules",
[
"Boote", 
"
Die Folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Das wiederholte Pushen von Booten ohne Erlaubnis.<br/>
2. Das Pushen von Booten mit der Absicht jemanden zu verletzen oder jemanden zu toeten.<br/>
3. Das absichtliche ueberfahren von Schwimmern oder Tauchern.<br/><br/>
"
]
];

player createDiaryRecord ["serverrules",
[
"Fluggeraete", 
"
Die Folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Das absichtliche Rammen von Helikoptern. (In andere HeliKopter, Vehikel, Gebaeude usw.).<br/>
2. Das dauerhafte Ueberfliegen von Staedten unterhalb von 150m. Einmalig ist es illegal und wird von Cops geahndet.<br/>
3. In Staedten gilt ein absolutes Landeverbot, ausser auf unten genannten Stellen.<br/>
4. Das Klauen von Helikoptern ohne dem Fahrzeugeigentuemer min. 10 sec Zeit zu geben das Fahrzeug abzuschliessen. Wenn jemand landet und weggeht, okay, aber wenn sie gerade erst aussteigen und du einsteigst bevor sie das Fahrzeug abschliessen koennen ist dies ein Banngrund.<br/><br/>
"
]
];

player createDiaryRecord ["serverrules",
[
"Fahrzeuge", 
"
Die folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Das Absichtliche ueberfahren von anderen Spielern ohne RP-Hintergrund.<br/>
2. Sich absichtlich in den Fahrtweg von Fahrzeugen zu werfen um verletzt/getoetet zu werden.<br/>
3. In andere Fahrzeuge zu rammen mit der Absicht eine Explotion zu erzeugen.<br/>
4. Das anhaltende Versuchen in Fahzeuge welche dir nicht gehoeren einzusteigen um den Fahrzeughalter zu aergern ohne jeglichen RP aspekt.<br/>
5. Ein Fahrzeug zu klauen, nur um es zu zerstoeren (indem man gegen etwas faehrt, ins Meer faehrt usw). Das Klauen und Beschaedigen von Fahrzeugen mit Waffen UND! Roleplay Aspekt ist okay.<br/>
6. Das Klauen von Fahrzeugen ohne dem Fahrzeugeigentümer min. 20 sec Zeit zu geben das Fahrzeug abzuschliessen.<br/><br/>
7. Wiederholter Trolldiebstahl an den Marktplätzen. 
"
]
];

player createDiaryRecord ["serverrules",
[
"Kommunikationsregeln", 
"
Die folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Der Sidechat darf nur fuer schriftliche Kommunikation benutzt werden.<br/>
2. Das Spammen von einem Beliebigen Chat Kanal resultiert in einem Bann.<br/>
3. Teamspeak Kanaele sind mit einem Grund da, Cops muessen sich jederzeit in einem Cop Kanal aufhalten.<br/>
4. Zivilisten haben in Cop Kanaelen nichts zu suchen! Jeder Zivilist welcher einem Cop Kanal joint wird sofort aus dem Kanal entfernt. Wiederholungstaeter koennen gebannt werden.<br/><br/>
"
]
];

player createDiaryRecord ["serverrules",
[
"Random Deathmatching (RDM)", 
"
Die Folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Das Toeten eines Mitspielers ohne Roleplay Grund.<br/>
2. Cops und Zivilisten duerfen nur in Verbindung mit einem begangenen Verbrechen auf einander Schiessen.<br/>
3. Wenn du im Kreuzfeuer eines Gefechts erschossen wirst zaehlt dies nicht als RDM.<br/>
4. Jemanden mit dem Zweck sich selbst zu schuetzen zu toeten zaehlt nicht als RDM (Notwehr).<br/>
5. Einen Spieler zu erschiessen ohne ihm genuegend Zeit zu geben deinen Anweisungen zu folgen zaehlt als RDM.<br/><br/>

Jeder Fall wird von einem oder mehreren Admins beurteilt.<br/><br/>
"
]
];
player createDiaryRecord ["serverrules",
[
"New Life Regel", 
"
An die Respawnregeln muessen sich ALLE halten.<br/><br/>

Die Folgenden Taten koennen zu einem Bann fuehren, abhaengig von der Sicht der Admins.<br/><br/>

1. Wenn du getoetet wirst, musst du 15 Minuten warten bevor du an deinen Todesort (600 M Umkreis) zuruekkehren darfst.<br/>
2. Wenn du waehrend des Roleplays stirbst sind alle deine Verbrechen vergessen, du darfst allerdings auch keine Rache suchen.<br/>
3. Wenn du Opfer von RDM wurdest zaehlen die Respawnregeln nicht.<br/>
4. Wenn du dich absichtlich selbst toetest.<br/>
5. Wenn du um Weg zu sparen aus- und wieder einloggst, um schnell von einem Ort zum anderen zu Reisen, ist dies ein Grund fuer einen Bann.<br/>
6. Wenn du ausloggst, um dem Role Play zu entgehen, ist dies ein Banngrund.<br/>
"
]
];

player createDiaryRecord ["serverrules",
[
"Dies ist ein ROLEPLAY Server!", 
"
Benimm dich und halte dich an die grundlegenden Regeln von Rollenspielen.<br/>
Trolling, Belaestigung, das Unterbrechen von Roleplay usw. wird strengstens bestraft!<br/>
Sei einfach kein Arsch, okay?<br/>
"
]
];

// Police Section
/*
player createDiaryRecord ["policerules",
[
"Crisis Negotiation",
"
Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
"
]
];
*/
player createDiaryRecord ["policerules",
[
"Zentralbank",
"
1.  Die Zentralbank ist ein gesperrtes Gebiet fuer Zivilisten. Zivilisten duerfen die Zentralbank nicht ohne Genehmigung betreten. Tun sie dies doch, werden sie entfernt. Bei wiederholtem Vergehen werden Zivilisten Verhaftet. <br/>
2.  Im Bereich der Zentralbank herrscht Flugverbotszone!<br/>
3.  Wird die Zentralbank ausgeraubt, ist es Pflicht jedes verfuegbaren Polizisten zu versuchen, den Raub zu stoppen. Sollten weniger als 5 Polizisten online sein, muessen diese nicht eingreifen.<br/>
4.  Die eingeteilten Polizisten sollten sich sofort zur Zentralbank begeben, kleine Verbrechen koennen in diesem Fall ignoriert werden.<br/>
5.  Waffeneinsatz ist gestattet, allerdings sollte jede Moeglichkeit sie lebend gefangen zu nehmen zuerst versucht werden.<br/>
6.  Die Polizei darf nicht blind in die Bank feuern.<br/>
7.  Die Polizei sollte Zivilisten in der Bank evakuieren.<br/>
8.  Jeder Zivilist, der sich in unmittelbarer Umgebung des Bankgelaendes aufhaellt, gilt wahrend eins Bankueberfalls als potentieller Komplize der Bankraeuber.<br/>
9.  Im Rahmen eines Bankueberfalls gilt die Respawnregel nicht fuer die Polizei.<br/>
10. Cops duerfen, sollten sie bei einem Bankueberfall sterben, EIN MAL respawnen und erneut am Bankueberfall teilnehmen.<br/><br/>
"
]
];
player createDiaryRecord ["policerules",
[
"Luftverkehr",
"
1. Innerhalb Wohn- und Stadtgebieten ist das Landen von Helikoptern verboten, Ausnahmen:<br/>
Die gekennzeichneten Zivilen Landeplätze - eine Landeerlaubnis ist bei der Polizei einzuholen!
Kleine Staedte: Es sollte eine passende Landemoeglichkeit aufgesucht werden, liegt aber im Falle eines Falles bei dem entsprechendem Officer.<br/><br/>
2. Helikopter duerfen nicht auf Strassen landen.<br/>
3. Die Polizei darf ueber eine kurze Zeit hinweg das Landen und Hovern in einem Gebiet verbieten.<br/>
4. Helikopter duerfen Staedte nicht ohne Erlaubnis unter 150m Hoehe ueberfliegen.<br/>
5. Helikopter duerfen nicht ueber Staedten schweben, Polizeihelikopter duerfen nur ueber Staedten, schweben wenn dort eine aktive Polizeioperation stattfindet.<br/><br/>

"
]
];

player createDiaryRecord ["policerules",
[
"Illegale Gebiete", 
"
1. Das Rebellengebiet wird nicht als Illegales Gebiet angesehen, sondern als ausserhalb der Zustaendigkeit der Polizei. Diese kann dort nach eigenem Ermessen eingreifen.<br/>
2. Cops duerfen illegale Gebiete nicht ohne einen Raid betreten. (Abschnitt Raiding/Camping) und nur mit Genehmigung des diensthabenden Einsatzleiters patroullieren.<br/>
3. Einem Polizist ist es unter keinen Umstaenden erlaubt ein illegales Gebiet zu becampen. (Ausnahme Grenzposten am Rebellengebiet)<br/>
4. Polizisten duerfen mobile Checkpoints nicht naeher als 1200 Meter an einem illegalen Ort (Drugfields, Drugprocessings) aufbauen.<br/><br/>
"
]
];
/*
player createDiaryRecord ["policerules",
[
"Patrolling", 
"
1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
"
]
];
*/
player createDiaryRecord ["policerules",
[
"Checkpoints/Kontrollpunkte", 
"
Cops koennen an einer beliebigen Strasse einen mobilen Checkpoint aufbauen um illegale Aktivitaeten zu verhindern.<br/><br/>

1. Ein mobiler Checkpoint muss aus mindestens 3 Polizisten und 2 Fahrzeugen bestehen, wobei ein ATV hier nicht als Fahrzeug gilt.<br/><br/>

Richtiges Verhalten an Checkpoints:<br/>
1. Zivilisten haben sich grundlegend an die Anweisungen der Polizei zu halten.<br/>
2. Weisen Sie den Polizisten ggf. darauf hin, dass Sie Waffen bei sich fuehren.<br/>
3. Tragen Zivilisten Waffen bei sich, haben sie diese sofort zu senken oder wegzustecken.<br/>
4. An einem Checkpoint duerfen Polizisten die Zivilisten ohne Angabe von Gruenden durchsuchen.<br/>
5. Nach der Durchsuchung koennen die Zivilisten in ihr Fahrzeug steigen und wegfahren, solange nichts gegen sie vorliegt.<br/>
6. Sollte etwas illegales gefunden werden wird die person festgenommen und abhaengig von dem Begangenen Verbrechen zu einer Geld oder Haftstrafe verurteilt.<br/><br/>
"
]
];
/*
player createDiaryRecord ["policerules",
[
"Vehicles", 
"
1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
3. Boats should be parked reasonably on shore.<br/>
4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
"
]
];
*/
player createDiaryRecord ["policerules",
[
"Geschwindigkeitsbegrenzung", 
"
Foglende Geschwindigkeitsbegrenzungen gelten in ganz Altis:<br/><br/>

Innerorts: 50km/h<br/>
Ausserorts: 100km/h<br/>
Highway: 130km/h<br/><br/>
"
]
];
/*
player createDiaryRecord ["policerules",
[
"City Protocol", 
"
1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
3. Officers may not stand around or loiter in the centre of town.<br/>
4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
5. Martial law may not be declared at any time.<br/>
6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
"
]
];
*/
player createDiaryRecord ["policerules",
[
"Festnahmen und Strafzettel",
"
Man sollte nur Verbrecher Festnehmen welche als Gefahr fuer andere Spieler auf dem Server angesehen werden.<br/><br/>

1. Es ist nicht erlaubt einen Verbrecher welcher ein Ticket bekam und dieses bezahlt hat zu verhaften, ausgenommen bei Mord.<br/>
2. Es muss dem zu Verhaftenden Verbrecher vor seiner Verhaftung der Grund fuer seine Verhaftung genannt werden.<br/>
3. Wenn ein Zivilist gesucht ist verhafte ihn. Toete den Zivilist nicht solange die Situation nicht unter 'Use of Lethal Force' faellt.<br/>
4. Das Verbrechen Mord wird mit 50.000 $ Strafe je begangenem Mord + Haftstrafe geahndet. Die Geldstrafe muss gezahlt werden. Ist die Strafe hoeher als das Vermoegen, muss das gesamte Vermoegen gezahlt werden.<br/>
5. Wird die Geldstrafe nicht freiwillig bezahlt, wird sie eingezogen.<br/>
6. Der Besitz und Vertrieb von Rauschmitteln ist Strafbar, jedoch nicht der Konsum.<br/>
7. AUSNAHME: Marihuana ist eine leichte Droge. Hier gilt eine Mindermenge von 3 Einheiten. Diese Menge gilt als Eigenbedarf und ist nicht strafar.<br/><br/>


Strafzettel werden als Warnung fuer Zivilisten angesehen. Wenn ein Zivilist ein Gesetz bricht aber keine Gefahr fuer jemanden darstellt wird ihm ein Strafzettel geschrieben.<br/><br/>

1. Strafzettel muessen einen zu rechtfertigenden Preis haben.<br/>
2. Die hoehe der Strafzettel muss auf der begangenen Straftat beruhen.<br/>
3. Wenn ein Zivilist sich weigert einen Strafzettel zu zahlen ist es ein Grund ihn zu verhaften.<br/>
4. Einem Zivilisten einen unangebracht hohen Strafzettel auszustellen ist nicht erlaubt und fuehrt zur Degradierung/Suspendierung nach ermessen der Polizei-Chefs.<br/><br/>

Eine Liste aller Verbrechen und der zugehoerigen Bestrafung wird waehrend der Ausbildung ausgehaendigt. Wenn Zweifel bestehen frage einen ranghoeheren Polizisten um Rat.<br/><br/>

"
]
];

player createDiaryRecord ["policerules",
[
"Waffen", 
"
Einem Polizisten ist es niemals erlaubt Zivilisten mit Waffen zu versorgen. Dies wird mit einer Suspendierung geahndet.<br/><br/>

Legale Waffen fuer Zivilisten sind:<br/>
1. P07<br/>
2. Rook<br/>
3. ACP-C2<br/>
4. SDAR 9mm<br/>
6. PDW2000<br/><br/>

Jede andere Waffe ist illegal.<br/><br/>

1. Zivilisten ist es nicht erlaubt innerhalb einer Stadt eine Waffe offen zu tragen.<br/>
2. Zivilisten koennen ausserhalb von Staedten legale Waffen tragen, doch sollten sie auf Nachfrage bereit sein, dem Polizisten ihre Lizensen zu zeigen.<br/><br/>
"
]
];

player createDiaryRecord ["policerules",
[
"Nicht toedliche Gewalt",
"
Zurzeit ist der Taser die einzige Form nicht toedlicher Gewalt.<br/><br/>

1. Der Taser soll dazu genutzt werden Zivilisten welche sich den Anweisungen wiedersetzen ruhig zu stellen oder zu verhaften.<br/>
2. Das unangebrachte Feuern des Tasers fuehrt zu einer Suspendierung.<br/>
3. Benutze den Taser nur um das Gesetz zu wahren, nicht um anderen deinen Willen aufzuzwingen.<br/><br/>
"
]
];

player createDiaryRecord ["policerules",
[
"Raiding/Camping",
"
Raiding bezeichnet das eindringen mehrerer Polizisten in ein illegales Gebiet um kriminelle Vorgaenge zu stoppen.<br/><br/>

1. Um ein Gebiet zu raiden benoetigt es mindestens 4 Polizisten, einer davon Officer oder hoeher.<br/>
2. Alle Zivilisten in einem Raid Gebiet werden verhaftet und durchsucht, wird nichts gefunden sind sie unverzueglich freizulassen.<br/>
3. Werden bei einer Durchsuchung illegale Objekte gefunden wird die Person verhaftet und normal bestraft.<br/>
5. Toedliche gewalt ist nur anzuwenden wie unter 'Toedliche Gewalt' beschrieben.<br/>
6. Nachdem das Gebiet sicher ist, muessen die Polizisten das Gebiet umgehend verlassen.<br/>
7. Nach einem Raid kann ein Gebiet 30 min lang nicht mehr geraided werden.<br/>
8. Wenn der Raid fehlschlaegt (alle Polizisten sterben) zaehlt 7. dennoch.<br/>
9. Es kann Vertaerkung gerufen werden, diese darf allerdings nicht aus gefallenen Polizisten bestehen.<br/><br/>

Camping bezeichnet den laengeren Aufenthalt eines Polizisten in einem Gebiet.<br/><br/>

1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
3. Camping eines illegalen Gebiets liegt vor wenn ein Polizist nach einem Raid laenger als noetig in dem Gebiet verweilt oder wenn ein Polizist ein Gebiet laengere Zeit ueberwacht und gegen Zivilisten welche das Gebiet betreten wollen vorgeht.<br/><br/>
"
]
];
/*
player createDiaryRecord ["policerules",
[
"Chain of Command",
"
The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

Police Chain of Command:<br/>
1. Chief<br/>
2. Deputy Chief<br/>
3. Superintendent<br/>
4. Captain<br/>
5. Lieutenant<br/>
6. Sergeant<br/>
7. Senior Patrol Officer<br/>
8. Patrol Officer<br/>
9. Cadet<br/><br/>

Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
"
]
];
*/
player createDiaryRecord ["policerules",
[
"Toedliche Gewalt",
"
1. Toedliche Gewalt ist nur gestattet um das eigene Leben, das Leben eines anderen Polizisten oder eines Zivilisten zu beschuetzen und nur wenn nicht toedliche Gewalt nicht effektiv waere.<br/>
2. Wer mit den Waffen nicht diszipliniert umgeht wird umgehen suspendiert.<br/><br/>
"
]
];

player createDiaryRecord ["policerules",
[
"Teamspeak Regel",
"
1. Alles Cops muessen im Teamspeak in einem Cop Kanal anwesend sein.<br/>
2. Joine dem Teamspeak bitte bevor du spawnst.<br/><br/>"
]
];


player createDiaryRecord ["punishments",
[
"Bußgeldkatalog",
"
<b>Bußgeldkatalog</b><br/>
1. Bussgelder müssen den Umständen angepasst werden <br/>und es dürfen beispielsweise keine 100K für eine Geschwindigkeitsübertretung ausgestellt werden.<br/>
2. Verweigerung der Zahlung eines Bussgeldes, kann zur <br/>Gefängnisstrafe führen.<br/>
3. Bei Unsicherheit über den Preis eines Tickets, wird <br/>ein ranghöherer Polizist gefragt bzw hinzu gezogen.<br/><br/>

<b>Paragraph 1.Allgemeine Verkehrsregeln</b><br/>
Abs1. Geschwindigkeitsübertretung = 500$ - 5.000$ <br/>(nach eigenem Ermessen)<br/>
Abs2. Fahren ohne Licht = 1.000$<br/>
Abs3. Fahren ohne gültigen Führerschein = PKW = 500$ <br/>LKW = 5.000$ Luftfahrzeuge =10000 Wasserfahrzeuge = 10000<br/>
Abs4. Fahren auf der Falschen Straßenseite = 2.000$<br/>
Abs5. Fahren abseits der Wege (Ausgenommen Ressourcenfelder) = 3.000$<br/>
Abs6. Behindern des Verkehrs = 3.000$<br/>
Abs7. Mutwilliges Zerstören von Fremden Eigentum <br/>mit Fahrzeugen = Entzug des fahrzeuges + 5.000$<br/><br/> 
Paragraph 2.Waffenbesitz<br/>
Abs1. Waffenbesitz ohne Gültigen Waffenschein = 10.000$ + Entzug der Waffe<br/>
Abs2. Illegaler Waffenbesitz = 15.000$ + Entzug der Waffe<br/>
Abs3. Illegaler Sprengstoffbesitz = 30.000$ + Gefängnisstrafe<br/>
Abs4. Öffentlich in Kavalar mit Schusswaffe rum laufen = 20.000$ Strafe und einziehen der Waffe. (Ausnahmen Polizei und Security)<br/><br/>

<b>Paragraph 3.Drogenbesitz</b><br/>
Abs1. Drogenfund = 25.000$ + sofortige Gefängnisstrafe ab Kleintransporter (Truck)<br/>
Abs2. Drogenkonsum = 1.000$<br/><br/>

<b>Paragraph 4. Mord und Raub</b><br/>
Abs1. Raub = 15.000$ bis zu Gefängnisstrafe<br/>
Abs2. Körperverletzung = 5000$<br/>
Abs3. Unfall mit Todesfolge = 10.000$<br/>
Abs4. Versuchter Mord = 20.000$ + Gefängnisstrafe<br/>
Abs5. Mord = 50.000$ + Gefängnisstrafe<br/>
Abs6. Mord an einen Polizeibeamten 100000$ Strafe und Gefängnisstrafe<br/>
Abs7. Versuchter Mord an einen Polizeibeamten 50000$ Strafe und Gefängnisstrafe<br/><br/>

<b>Paragraph 5. sonstige Vergehen</b><br/>
Abs1. versuchter Auto diebstahl 3.500$<br/>
Abs2. Fahren ohne gültige zulassung auf das jeweilige <br/>fahrzeuges = Fahrzeug wird beschlagnahmt und 3500$ Strafe<br/>
Abs3. Illegales betreten von sperrgebieten = 1.000$ + Platzverweiss<br/>
Abs4. Erpressen von Geldern oder fahrzeugen = 15.000$ (nach Absprache mit dem Rang höchsten Beamten)<br/>
Abs5. Beleidigungen gegenüber Beamten oder Zivilisten = 500$ - 5.000$ (nach eigenem Ermessen)<br/>
Abs6. Geiselnahmen = 50.000$<br/>
Abs7. Banküberfall = 150.000$ je Rebel der daran beteiligt ist<br/>
Abs8. Illegaler Fahrzeugbesitz 100000$ Strafe. Fahrzeug wird eingezogen.<br/><br/>
Andere hier nicht aufgeführte Straftaten werden bitte nach <br/>eigenem Ermessen erhoben. Ggf einen Ranghöreren Beamten hinzu ziehen.<br/>
"
]
];





// Illegal Items Section
player createDiaryRecord ["illegalitems",
[
"Rebellenregeln",
"
Rebellen bezeichnet eine Gruppierung von Zivilisten, welche sich gegen die Polizei auflehnen wollen.<br/>
1. Rebellen koennen in ihrem Terrain jederzeit das Feuer auf Polizisten eroeffnen.<br/>
2. Rebellen gelten grundsaetzlich als verdaechtig und duerfen von der Polizei durchsucht werden.<br/>
3. Cops koennen im Falle eines Angriffs jederzeit das Feuer mit scharfer Munition auf Rebellen erwiedern.<br/>
4. Rebellen sind Feinde der Cops, nicht der Zivilisten. Rebellen duerfen niemals ohne RP Hintergrund das Feuer auf Zivilisten eroeffnen, auch nit in ihrem Gebiet.<br/>
5. Rebellen muessen sich, um als offizielle Rebellenorganisation anerkannt zu werden, mit einem ausfuehrlichen Post im entsprechenden Forum vorstellen und dort ihre Mitglieder sowie Gruende ihrer Rebellion vortragen.<br/>
6. Eine Rebellenbande muss, um als diese erkannt zu werden, ihren Namens-Tag vor dem Ingame Namen tragen.<br/>
7. Der Ifrit und bewaffnete Fahrzeuge (Offroader) sind illegale Rebellenfahrzeuge. Ifrits und bewaffnete Fahrzeuge, welche ausserhalb vom Rebellengebiet von der Polizei gestoppt werden, duerfen von von Der Polizei fuer den aktuellen Restart-Zyklus beschlagnahmt und genutzt werden.<br/>
8. Illegale Waffen sind verboten. Wenn Rebellen mit ihnen erwischt werden, darf die Polizei die illegalen Waffen, zusaetzlich zu dem Bussgeld beschlagnahmen<br/><br/>
    "
]
];
player createDiaryRecord ["illegalitems",
[
"Gang Regeln",
"
1. Es ist nicht illegal, in einer Gang zu sein.<br/>
2. Es ist nicht illegal, sich in einem Gang Gebiet aufzuhalten, nur, wenn man an illegalen Aktivitaeten beteiligt ist.<br/><br/>"
]
];
player createDiaryRecord ["illegalitems",
[
"Illegale Fahrzeuge",
"
Es ist fuer Zivilisten illegal diese Fahrzeuge zu besitzen.<br/><br/>

1. Ifrit<br/>
2. Speedboat<br/>
3. Hunter<br/>
4. bewaffneter Offroad<br/>
5. Police Offroad<br/><br/>
"
]
];
/*
player createDiaryRecord ["illegalitems",
[
"Illegal Weapons",
"
A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

1. MX Series<br/>
2. Katiba Series<br/>
3. TRG Series<br/>
4. Mk.20 Series<br/>
5. Mk.18 ABR<br/>
6. SDAR Rifle<br/>
7. Sting SMG<br/>
8. Silenced P07 (Taser)<br/>
9. Any explosives<br/><br/>
"
]
];*/
// SD Regeln
player createDiaryRecord ["shadowdragons",
[
"Altis Sicherheitsdienst",
"
1. Der Sicherheitsdienst ist eine Zivile Einrichtung<br/>
2. Der Sicherheitsdienst darf - auf und nur auf Anforderung - die Polizeikräfte auch mit Gewalt überstützen<br/>
3. Das Offizielle Dienstfahrzeug ist der Ifrit Schwarz.<br/>
3. Bewaffnete Fahrzeuge dürfen nur in Absprache mit der Polizei benutzt werden und dann auch nur ausserhalb der Städte.<br/>
4. Der Sicherheitsdienst darf nicht mehr als 35% Gewinnbeteiligung fordern.<br/>
5. Illegale Aktivitäten mit den Dienstfahrzeugen sind zu unterlassen<br/>
6. Der Sicherheitsdienst darf nur selbstständig Gewalt anwenden wenn eine Bedrohung des eigenen Lebens, des Lebens des Klienten oder unbeteiligter Personen in Gefahr ist.<br/>
7. Aktivitäten mit Waffeneinsatz sind sofort bzw. spätestens nach beendigung der Polizei zu melden<br/>
8. Kopfgeldjagt im Auftrag der Polizei ist erlaubt - Oberstes Ziel ist die möglichst gewaltlose Festname des Gesuchten<br/>
9. Die Altis Sicherheitsdienstbasis ist immer zu beschützen - notfalls mit Waffengewallt<br/>
10. Waffeneinsatz zum Stoppen von Fahrzeugen muss sich auf die Reifen beschränken. Ziel ist es das Fahrzeug zu Stoppen<br/>
11. Er hat die befugnuis Fahrzeuge im Einsatz zu durchsuchen<br/>
12. Sollte der Klient ein illegaler Kurrier sein, darf der Sicherheitsdienst diesen gegen alle Gefahren beschützen an denen die Polizei nicht beteiligt ist!<br/>
13. Der Sicherheitsdienst ist blind gegenüber dem Klienten, solange die Polizei nicht beteiligt ist.<br/>
14. Das Offizielle Luftfahrzeug ist der Orca in Schwarz und der Mohawk in Präsidentenfarbe.
"
]
];


// Controls Section

player createDiaryRecord ["controls",
[
"",
"
Y: Open Player Menu<br/>
U: Lock and unlock cars<br/>
F: Cop Siren (if cop)<br/>
T: Vehicle Trunk<br/>
Left Shift + R: Restrain (Cop Only)<br/>
Left Shift + G: Knock out / stun (Civ Only, used for robbing them)<br/>
Left Windows: Main Interaction key which is used for picking up items/money, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/>
Left Shift + L: Activates cop siren lights (as a cop).<br/>
"
]
];

player createDiaryRecord ["Bugs",
[
"Fehler im Spiel", 
"
1: Solltest du Opfer eines Bugs werden ist das zwar doof, aber leider passiert das.<br/>
2: Es gibt keinen Ersatz dafür - ausser dieser Bug ist bekannt und durch einen Admin verursacht.<br/>
3: Es besteht kein Anspruch auf Erstattung - das ist Adminermessen!<br/>
4: Bugmeldungen an: herofactory.bugs@gmail.com<br/>
"
]
];

player createDiaryRecord ["admins",
[
"Der Admin", 
"
Hat immer recht!<br/>
"
]
];
player createDiaryRecord ["kompetenzen",
[
"Ansprechpartner", 
"
Head of Admins: <br/>
1: Snake <br/>
2: Demon <br/>
3: Faceman <br/><br/>

Rcon Admins: <br/>
Einige ;) <br/><br/>

Polizeiprasidenten: <br/>
1: Snake <br/>
2: Fumiko <br/>
3: Sanbourne <br/><br/>

Aerztekammer: <br/>
1: Kyanreth <br/>
2: GrelowLP <br/>
3: Cedi <br/><br/>

Sicherheitsdienst: <br/>
1: Jubii <br/>
2: Demon <br/><br/>


"
]
];
