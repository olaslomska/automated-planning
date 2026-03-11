(define (problem drone_problem_d1_r1_l3_p3_c3_g3_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	carrier1 - carrier
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
)
(:init
	(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 223)
	(= (fly-cost depot loc2) 68)
	(= (fly-cost depot loc3) 182)
	(= (fly-cost loc1 depot) 223)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 189)
	(= (fly-cost loc1 loc3) 67)
	(= (fly-cost loc2 depot) 68)
	(= (fly-cost loc2 loc1) 189)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 134)
	(= (fly-cost loc3 depot) 182)
	(= (fly-cost loc3 loc1) 67)
	(= (fly-cost loc3 loc2) 134)
	(= (fly-cost loc3 loc3) 1)
	(drone-at drone1 depot)
	(crate-at crate1 depot)
	(crate-at crate2 depot)
	(crate-at crate3 depot)
	(carrier-at carrier1 depot)
	(crates-in-carrier carrier1 N0)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(person-at person1 loc1)
	(person-at person2 loc3)
	(person-at person3 loc2)
	(next-num N0 N1)
	(next-num N1 N2)
	(next-num N2 N3)
	(next-num N3 N4)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
))
(:metric minimize (total-cost))
)
