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
	(carrier-at carrier1 depot)
	(empty-space carrier1 space1)
	(empty-space carrier1 space2)
	(empty-space carrier1 space3)
	(empty-space carrier1 space4)
	(content-crate food crate1)
	(content-crate food crate2)
	(content-crate medicine crate3)
	(person-at person1 loc2)
	(person-at person2 loc2)
	(person-at person3 loc1)
(= (total-cost) 0)
	(= (fly-cost depot depot) 1)
	(= (fly-cost depot loc1) 161)
	(= (fly-cost depot loc2) 169)
	(= (fly-cost depot loc3) 272)
	(= (fly-cost loc1 depot) 161)
	(= (fly-cost loc1 loc1) 1)
	(= (fly-cost loc1 loc2) 56)
	(= (fly-cost loc1 loc3) 139)
	(= (fly-cost loc2 depot) 169)
	(= (fly-cost loc2 loc1) 56)
	(= (fly-cost loc2 loc2) 1)
	(= (fly-cost loc2 loc3) 105)
	(= (fly-cost loc3 depot) 272)
	(= (fly-cost loc3 loc1) 139)
	(= (fly-cost loc3 loc2) 105)
	(= (fly-cost loc3 loc3) 1)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 food)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
))
(:metric minimize (total-cost))
)
