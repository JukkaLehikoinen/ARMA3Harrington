
nelbrief1 = player createDiaryRecord ["Diary", ["Mission", "You start <marker name='start'>here</marker>.<br></br> 
Kowalski is <marker name='target'>here</marker><br></br> 
Continue to the <marker name='end'>end</marker>."]];

nelbrief2 = player createDiaryRecord ["Diary", ["Situation", "Politician Kowalski is aggressively pushing for Western democracy in the Livonian region. Our client has paid us for you to assassinate Kowalski out of the picture and Livonia to continue a harmonious life as before.<br></br>For assassinating Kowalski, prize is 4000 dollars. This assignment can be done by 9 am to 6 pm. Happy hunting!"]];


sleep 3;
kotikone say "nel_brief";
