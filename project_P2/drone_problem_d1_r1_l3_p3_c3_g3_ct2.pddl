(define (problem drone_problem_d1_r1_l3_p3_c3_g3_ct2)
(:domain p1)
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
	(content-crate medicine crate2)
	(content-crate medicine crate3)
	(person-at person1 loc3)
	(person-at person2 loc2)
	(person-at person3 loc2)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person1 medicine)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
))
)
