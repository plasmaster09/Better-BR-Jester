trace(levelupselections);
for(x in ["Boosterpack:", "boosterpack:"]){
  for(y in loadtext("diceydungeons/jesterpacks/packs_cvall")){
	if(levelupselections.indexOf(x + y) > -1){
	  Rules.substitute("Backfire", "Mercy");
	  Rules.substitute("Bop,Bop,Bop","Lojinx,Lojinx,Lojinx");
	}
  }
}