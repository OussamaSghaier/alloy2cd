module Exp1
//enum Boolean { True, False }
/*abstract sig Bool{}
one sig True extends Bool
one sig False extends Bool*/


open util/boolean 

abstract sig Vehicle   {
}

sig Car extends Vehicle {
	wheels: some Wheel,
	isdeflated: Bool
}

sig Person {
	cars: some Car
}

sig Wheel  {
outgoing in 
}

pred exp {
} run exp for 3

/*
//Multiplicity Facts
fact{
//The outgoing relation maps one ActivityNode to 0 or more ActivityEdges
outgoing in ActivityNode one -> set ActivityEdge
}
*/
