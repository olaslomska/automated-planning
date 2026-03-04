(define (problem drone_problem_d1_r1_l5_p5_c5_g5_ct2)
(:domain p2)
(:objects
	drone1 - drone
	depot - location
	loc1 - location
	loc2 - location
	loc3 - location
	loc4 - location
	loc5 - location
	crate1 - crate
	crate2 - crate
	crate3 - crate
	crate4 - crate
	crate5 - crate
	food - content
	medicine - content
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate food crate3)
	(content-crate medicine crate4)
	(content-crate medicine crate5)
	(person-at person1 loc2)
	(person-at person2 loc3)
	(person-at person3 loc3)
	(person-at person4 loc2)
	(person-at person5 loc4)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 179)
	(= (fly-cost depot loc2) 56)
	(= (fly-cost depot loc3) 134)
	(= (fly-cost depot loc4) 111)
	(= (fly-cost depot loc5) 221)
	(= (fly-cost loc1 depot) 179)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 133)
	(= (fly-cost loc1 loc3) 78)
	(= (fly-cost loc1 loc4) 115)
	(= (fly-cost loc1 loc5) 43)
	(= (fly-cost loc2 depot) 56)
	(= (fly-cost loc2 loc1) 133)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 108)
	(= (fly-cost loc2 loc4) 102)
	(= (fly-cost loc2 loc5) 174)
	(= (fly-cost loc3 depot) 134)
	(= (fly-cost loc3 loc1) 78)
	(= (fly-cost loc3 loc2) 108)
	(= (fly-cost loc3 loc3) 1)
	(= (fly-cost loc3 loc4) 38)
	(= (fly-cost loc3 loc5) 112)
	(= (fly-cost loc4 depot) 111)
	(= (fly-cost loc4 loc1) 115)
	(= (fly-cost loc4 loc2) 102)
	(= (fly-cost loc4 loc3) 38)
	(= (fly-cost loc4 loc4) 1)
	(= (fly-cost loc4 loc5) 149)
	(= (fly-cost loc5 depot) 221)
	(= (fly-cost loc5 loc1) 43)
	(= (fly-cost loc5 loc2) 174)
	(= (fly-cost loc5 loc3) 112)
	(= (fly-cost loc5 loc4) 149)
	(= (fly-cost loc5 loc5) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 food)
	(has-content-person person3 food)
	(has-content-person person3 medicine)
	(has-content-person person4 food)
))
(:metric minimize (total-cost))
)
