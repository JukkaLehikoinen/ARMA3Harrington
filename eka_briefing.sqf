ekabrief1 = player createDiaryRecord ["Diary", ["Mission", "You start <marker name='start'>here</marker>.<br></br> 
Stavros is in the <marker name='target'>cottage</marker>, eliminate him.<br></br> 
Continue to the <marker name='end'>end</marker>."]];

ekabrief2 = player createDiaryRecord ["Diary", ["Situation", "Stavros must die, one way or another. <br></br>
The bonus condition is met if Stavros' death appears to be an accident. <br></br>
Stavros is a well known bomb maker. Maybe the bomb could take Stavros' life as his bombs have taken several lives. <br></br>Conditions:<br></br>Stavros dead + 2000 $<br></br>Stavros dead accidently extra 2000 $"]];

sleep 3;
kotikone say "eka_brief";