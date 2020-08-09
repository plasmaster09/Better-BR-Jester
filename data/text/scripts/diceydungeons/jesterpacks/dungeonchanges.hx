if (self.level == 1){
  leveluprewards(2, "erase");
  var choice = "egg uwu";
  if (levelupselections.indexOf("InitialEquipment:Classic Deck") > -1){
    Rules.includerareenemies = false;
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_normal"), 2);
	Rules.substitute("Subdivide", "Duplicate");
	Rules.substitute("Subdivide+", "Duplicate+");
	Rules.substitute("Gumball Machine", "Juggling Ball");
	Rules.substitute("Gumball Machine+", "Juggling Ball+");
	for(x in ["Vise Grip", "Spatulasword", "Table Slam", "Lollipop"]){
	  choice = rand(["Nudge", "Spatula", "Bump", "Cauldron", "Bump"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart"]){
	  choice = rand(["Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let"]){
	  choice = rand(["Illuminate", "Hall of Mirrors"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
  }

  if (levelupselections.indexOf("InitialEquipment:Parallel Deck") > -1){
    Rules.enemyhpadjust = 1.1;
	for(x in ["poison","fire","ice","shock","thorns","fury","lock","blind","confuse","weaken","silence","shield","dodge","survive","reequipnext","reduce","dice_trigger_1","dice_trigger_2","dice_trigger_3","dice_trigger_4","dice_trigger_5","dice_trigger_6","counter_1","counter_2","counter_3","counter_4","counter_5","counter_6","curse"]){
	  Rules.setalternate(x);
	}
	for (offers in Remix.offeronfloor){
	  if (offers.length > 0){
	    for (i in 0...offers.length){
	      if (offers[i] == "Yeti"){
		    offers[i] = "Yeti?";
		  }
		  if (offers[i] == "Warlock"){
		    offers[i] = "Warlock?";
		  }
		  if (offers[i] == "Banshee"){
		    offers[i] = "Banshee?";
		  }
		  if (offers[i] == "Wicker Man"){
		    offers[i] = "Wicker Man?";
		  }
		  if (offers[i] == "Gardener"){
		    offers[i] = "Gardener?";
		  }
		}
	  }
	}
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_paralleluniverse"), 2);
	Rules.substitute("Duplicate", "Subdivide");
	Rules.substitute("Duplicate+", "Subdivide+");
	Rules.substitute("Juggling Ball", "Gumball Machine");
	Rules.substitute("Juggling Ball+", "Gumball Machine+");
	for(x in ["Nudge", "Spatula", "Bump", "Cauldron"]){
	  choice = rand(["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Lollipop"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Illuminate", "Hall of Mirrors"]){
	  choice = rand(["Shadow Dice", "Mirror Shard", "Blood Let"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
  }

  if (levelupselections.indexOf("InitialEquipment:Elemental Deck") > -1){ 
    leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_elemental"), 2);
	Rules.substitute("Juggling Ball", "Juggling Ball");
	Rules.substitute("Gumball Machine", "Gumball Machine");
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Blood Suck"]){
	  choice = rand(["Whip", "Lament", "Hammer", "Snowball", "Fireball", "Electric Shock", "Spark", "Snowflake", "Buzzer", "Ice Shatter", "High Voltage", "Flame Blast", "Freeze Spell", "Flame Spell", "Thunder Spell"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	choice = rand(["Shadow Dice", "Mirror Shard", "Illuminate", "Hall of Mirrors"]);
	Rules.substitute("Blood Let", choice);
	Rules.substitute("Blood Let+", choice + "+");
  }
  
  if (levelupselections.indexOf("InitialEquipment:MegaQuest Deck") > -1){ 
    for (offers in Remix.offeronfloor){
	  if (offers.length > 0){
	    for (i in 0...offers.length){
		  for (x in ["Wolf Puppy","Sorceress","Drake","Scathach","Loud Bird","Buster","Snowman","Fireman","Singer","Vacuum","Sticky Hands","Mimic","Baby Squid","Haunted Jar","Paper Knight","Robobot","Dire Wolf","Banshee","Madison","Bully","Skeleton","Cornelius","Cowboy","Handyman","Wizard","Warlock","Alchemist","Space Marine","Bounty Hunter","Rose","Cactus","Frog","Slime","Wisp","Sneezy","Rat King","Kraken","Hothead","Pirate","Rotten Apple","Copycat","Marshmallow (Jester)","Stereohead","Keymaster","Aurora","Dryad","Gargoyle","Crystalina","Rhino Beetle","Yeti","Gardener","Magician","Wicker Man","Aoife","Audrey","Beatrice"]){
	        if (offers[i] == x){
		      offers[i] = offers[i] + " (MQ)";
		    }
		  }
		}
	  }
	}
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_megaquest"), 2);
	Rules.substitute("Gumball Machine", "Juggling Ball");
	Rules.substitute("Gumball Machine+", "Juggling Ball+");
	Rules.substitute("Duplicate", "Duplicake");
	Rules.substitute("Subdivide", "Duplicake");
	Rules.substitute("Duplicate+", "Duplicake+");
	Rules.substitute("Subdivide+", "Duplicake+");
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Cauldron", "Bump"]){
	  choice = rand(["Judgenudge", "Stunula", "Bumpspade", "Bumpspade", "Stew", "Grater", "Rigged Roll", "Hot Couple"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Pew", "Shovel", "Lament", "Whip", "Hammer", "Lightsaber", "Blood Suck", "Shield of Cthulhu"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let", "Illuminate", "Hall of Mirrors"]){
	  choice = rand(["Magician's Secret", "Shattered Mirror"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
  }
  
  if (levelupselections.indexOf("InitialEquipment:Alt Timeline Deck") > -1){
    leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_bonusround"), 2);
	Rules.substitute("Gumball Machine+", "Juggling Ball+");
	Rules.substitute("Gumball Machine", "Juggling Ball");
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Cauldron", "Bump"]){
	  choice = rand(["Chute", "Spatula", "Ladder", "Shiny Cauldron", "Rusty Cauldron", "Ladder"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Bang", "Shovel", "Lament", "Whip", "H4mm3r", "Blood Suck"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let"]){
	  choice = rand(["Illuminate", "Hall of Mirrors"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
  }
  if (levelupselections.indexOf("InitialEquipment:Patient Deck") > -1){
    Rules.substitute("Juggling Ball", "Rewind Tape");
	Rules.substitute("Gumball Machine", "Rewind Tape");
	Rules.substitute("Juggling Ball+", "Rewind Tape+");
	Rules.substitute("Gumball Machine+", "Rewind Tape+");
	leveluprewards(3, "erase");
	leveluprewards(6, "erase");
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_cv1"), 2);
    leveluprewards(3, "", loadtext("diceydungeons/jesterpacks/packs_cv2"), 3);
    leveluprewards(6, "", loadtext("diceydungeons/jesterpacks/packs_cv3"), 6);
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Cauldron", "Bump"]){
	  choice = rand(["Nudge", "Spatula", "Bump", "Cauldron", "Bump", "Vise Grip", "Spatulasword", "Table Slam", "Lollipop", "Gemini Geometry"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Kapow", "Telephone", "Missing Score"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Illuminate", "Hall of Mirrors"]){
	  choice = rand(["Shadow Dice", "Mirror Shard", "Blood Let"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	Rules.substitute("Bop,Bop,Bop","Lojinx,Lojinx,Lojinx");
	Rules.substitute("Backfire", "Mercy");
	Rules.substitute("Backfire+", "Mercy+");
  }
  if (levelupselections.indexOf("InitialEquipment:Terrible Deck") > -1){
    leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_bonusround"), 2);
  }
  if (levelupselections.indexOf("InitialEquipment:Thief Deck") > -1){
    leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_thief"), 2);
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Cauldron", "Bump"]){
	  choice = rand(["Paper Lantern", "Lantern", "Last Stand", "Kite Shield", "Tetraphobia", "Chisel", "Lucky 7", "First Aid Kit", "Staff", "Gemstone Staff", "Blender", "Doppeltwice", "Ungeradedice"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Cloak", "Chisel", "Dramatic Exit", "Square Pair", "Leather Armor", "Bump", "Pickpocket", "Snake Eye Charm", "Splitula", "Spatula", "Broken Mirror", "Iron Armor", "Blight", "Detonator", "Dramatic Entrance", "Raw Ambition", "Hookshot", "Signal Jammer", "Determination", "Dodge", "Snake Eye Charm", "Midnight Charm"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let", "Illuminate", "Hall of Mirrors"]){
	  choice = rand(["Splitula", "Spatula", "Chisel", "Broken Mirror", "Iron Armor", "Blight", "Detonator", "Table Slam", "Nudgeblade", "Mechanical Leg", "Determination", "Broken Mirror", "Catastrophe", "Glass Cauldron"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	Rules.substitute("Juggling Ball", "Healing Crystal");
	Rules.substitute("Gumball Machine", "Thick Skin");
	Rules.substitute("Juggling Ball+", "Healing Crystal+");
	Rules.substitute("Gumball Machine+", "Thick Skin+");
  }
  if (levelupselections.indexOf("InitialEquipment:Random Deck") > -1){
    leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_bonusround"), 2);
  }
  if (levelupselections.indexOf("InitialEquipment:Spooky Deck") > -1){
    var swap = -1;
	Rules.enemyhpadjust = 1.4;
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_spooky"), 2);
	Rules.substitute("Duplicate", "Spooplicate");
    Rules.substitute("Subdivide", "Spooplicate");
    Rules.substitute("Duplicate+", "Spooplicate+");
    Rules.substitute("Subdivide+", "Spooplicate+");
	for(x in ["Spatulasword", "Nudge", "Bump"]){
	  choice = rand(["Lollipop", "Grudgenudge", "Bump in the Night"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(["Boo", "Trick", "Hitodama", "Attacktoplasm", "Shadow Ball", "Apparition", "Chocolate Spookie", "Treat", "Flying Skull", "Banish", "Spectral Strike", "Exorcise"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let", "Illuminate", "Hall of Mirrors"]){
	  choice = rand(["Shadow Dice", "Mirror Shard", "Illuminate", "Hall of Mirrors", "Jack o' Lantern", "Magician's Secret", "Shattered Mirror"]);
	  Rules.substitute(x, choice);
	  Rules.substitute(x + "+", choice + "+");
	}
	Rules.substitute("Scathach", "Pumpkin Spice");
	Rules.substitute("Fireman", "Demon");
	Rules.substitute("Loud Bird", "Mummy");
  }
  if (levelupselections.indexOf("InitialEquipment:Spooky Deck") <= -1){
	Rules.substitute("Pumpkin Spice", "Scathach");
	Rules.substitute("Demon", "Fireman");
	Rules.substitute("Mummy", "Loud Bird");
  }
}