module war


sig Unit {
	
	health: one Int,
}

sig Soldier extends Unit {
	name: one String,
	weapons: some Weapon
	
}

sig Weapon extends Unit {
	strength: one Int
}



pred exp {
	 all s: Soldier | s.name in ("John" + "Paul" + "Michael")  and #s.weapons>1
	#Soldier>0
} run exp for 5
