(define (problem drone_problem_d1_r1_l6_p6_c6_g6_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	loc6 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	crate6 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	carrier1 - carrier
	space1 - carrier_space
	space2 - carrier_space
	space3 - carrier_space
	space4 - carrier_space
	N0 - num
	N1 - num
	N2 - num
	N3 - num
	N4 - num
	N5 - num
	N6 - num
	N7 - num
)
(:init
	(drone-at drone1 depot)
	(crate-at crate1 depot)
	(crate-at crate2 depot)
	(crate-at crate3 depot)
	(crate-at crate4 depot)
	(crate-at crate5 depot)
	(crate-at crate6 depot)
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate medicine crate2)
	(content-crate medicine crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(content-crate medicine crate6)
	(person-at person1 loc5)
	(person-at person2 loc4)
	(person-at person3 loc5)
	(person-at person4 loc2)
	(person-at person5 loc1)
	(person-at person6 loc5)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 171)
	(= (fly-cost depot loc2) 257)
	(= (fly-cost depot loc3) 193)
	(= (fly-cost depot loc4) 198)
	(= (fly-cost depot loc5) 268)
	(= (fly-cost depot loc6) 182)
	(= (fly-cost loc1 depot) 171)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 145)
	(= (fly-cost loc1 loc3) 177)
	(= (fly-cost loc1 loc4) 171)
	(= (fly-cost loc1 loc5) 172)
	(= (fly-cost loc1 loc6) 27)
	(= (fly-cost loc2 depot) 257)
	(= (fly-cost loc2 loc1) 145)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 117)
	(= (fly-cost loc2 loc4) 105)
	(= (fly-cost loc2 loc5) 31)
	(= (fly-cost loc2 loc6) 119)
	(= (fly-cost loc3 depot) 193)
	(= (fly-cost loc3 loc1) 177)
	(= (fly-cost loc3 loc2) 117)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 13)
	(= (fly-cost loc3 loc5) 107)
	(= (fly-cost loc3 loc6) 158)
	(= (fly-cost loc4 depot) 198)
	(= (fly-cost loc4 loc1) 171)
	(= (fly-cost loc4 loc2) 105)
	(= (fly-cost loc4 loc3) 13)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 95)
	(= (fly-cost loc4 loc6) 151)
	(= (fly-cost loc5 depot) 268)
	(= (fly-cost loc5 loc1) 172)
	(= (fly-cost loc5 loc2) 31)
	(= (fly-cost loc5 loc3) 107)
	(= (fly-cost loc5 loc4) 95)
	(= (fly-cost loc5 loc5) 1)
	(= (fly-cost loc5 loc6) 146)
	(= (fly-cost loc6 depot) 182)
	(= (fly-cost loc6 loc1) 27)
	(= (fly-cost loc6 loc2) 119)
	(= (fly-cost loc6 loc3) 158)
	(= (fly-cost loc6 loc4) 151)
	(= (fly-cost loc6 loc5) 146)
	(= (fly-cost loc6 loc6) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person3 medicine)
	(has-content-person person4 medicine)
	(has-content-person person5 medicine)
	(has-content-person person6 medicine)
))
(:metric minimize (total-cost))
)
