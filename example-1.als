module alloy2cd

open util/boolean


abstract sig Vehicle   {
}

sig Car extends Vehicle {
	wheels: some Wheel,
	isdeflated: Bool
}

one sig Person {
	name: String,
	age: Int, 
	cars: some Car
}


sig Wheel  {
	cars: one Car
}

pred exp {
	 all p: Person | p.name in ("John" + "Paul" + "Michael")
} run exp for 3
