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
	(carrier-capacity carrier1 N4)
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
	(next-num N4 N5)
	(next-num N5 N6)
	(next-num N6 N7)
)
(:goal (and
	(drone-at drone1 depot)
	(has-content-person person2 food)
	(has-content-person person2 medicine)
	(has-content-person person3 food)
))
)
